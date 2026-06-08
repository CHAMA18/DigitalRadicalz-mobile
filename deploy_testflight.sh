#!/bin/bash
# ═══════════════════════════════════════════════════════════════
# DigitalRadicalz — Local TestFlight Deployment Script
# ═══════════════════════════════════════════════════════════════
# Usage: ./deploy_testflight.sh
#
# Prerequisites:
#   - macOS with Xcode 15+ installed
#   - Flutter SDK installed (flutter doctor passes)
#   - Fastlane installed (gem install fastlane)
#   - AuthKey_A2NL3S75NT.p8 in ./keys/ directory
#
# This script:
#   1. Verifies all prerequisites
#   2. Runs flutter pub get + pod install
#   3. Builds the IPA via Fastlane
#   4. Uploads to TestFlight
# ═══════════════════════════════════════════════════════════════

set -euo pipefail

# ── Colors ────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
NC='\033[0m'

# ── Configuration ─────────────────────────────────
BUNDLE_ID="com.mycompany.brightwave"
TEAM_ID="852QBVFRUN"
KEY_ID="A2NL3S75NT"
ISSUER_ID="449d6521-c62c-4f7c-a7d0-8a2d9b4fd43f"
KEY_DIR="./keys"
KEY_FILE="${KEY_DIR}/AuthKey_A2NL3S75NT.p8"
SCHEME="Runner"
WORKSPACE="Runner.xcworkspace"

# ── Helper Functions ──────────────────────────────
info()    { echo -e "${CYAN}[INFO]${NC}  $1"; }
success() { echo -e "${GREEN}[OK]${NC}    $1"; }
warn()    { echo -e "${YELLOW}[WARN]${NC}  $1"; }
error()   { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

# ── Banner ────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo "  DigitalRadicalz — TestFlight Deployment"
echo "══════════════════════════════════════════════════════"
echo ""

# ── Step 1: Check Prerequisites ───────────────────
info "Checking prerequisites..."

command -v flutter >/dev/null 2>&1 || error "Flutter SDK not found. Install from https://flutter.dev"
command -v xcodebuild >/dev/null 2>&1 || error "Xcode not found. Install from App Store"
command -v fastlane >/dev/null 2>&1 || error "Fastlane not found. Run: gem install fastlane"
command -v pod >/dev/null 2>&1 || warn "CocoaPods not found globally (will install via bundle)"

success "All prerequisites met"

# ── Step 2: Set up API Key ───────────────────────
info "Setting up App Store Connect API key..."

if [ ! -f "${KEY_FILE}" ]; then
    # Check upload directory
    if [ -f "/home/z/my-project/upload/AuthKey_A2NL3S75NT.p8" ]; then
        mkdir -p "${KEY_DIR}"
        cp "/home/z/my-project/upload/AuthKey_A2NL3S75NT.p8" "${KEY_FILE}"
    else
        error "AuthKey_A2NL3S75NT.p8 not found. Place it in ${KEY_DIR}/"
    fi
fi

# Also copy to ~/private_keys for Fastlane
mkdir -p ~/private_keys
cp "${KEY_FILE}" ~/private_keys/AuthKey_A2NL3S75NT.p8

success "API key configured at ~/private_keys/AuthKey_A2NL3S75NT.p8"

# ── Step 3: Export Environment Variables ─────────
export APP_STORE_CONNECT_API_KEY_ID="${KEY_ID}"
export APP_STORE_CONNECT_ISSUER_ID="${ISSUER_ID}"
export APP_STORE_CONNECT_API_KEY_PATH="$HOME/private_keys/AuthKey_A2NL3S75NT.p8"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

info "Environment variables exported"

# ── Step 4: Install Dependencies ─────────────────
info "Installing Flutter dependencies..."
flutter pub get

info "Installing CocoaPods..."
cd ios
pod install --repo-update
cd ..

success "Dependencies installed"

# ── Step 5: Build and Deploy via Fastlane ────────
info "Building and deploying to TestFlight..."
echo ""
echo "══════════════════════════════════════════════════════"
echo "  Running Fastlane..."
echo "══════════════════════════════════════════════════════"
echo ""

cd ios
fastlane testflight
cd ..

# ── Step 6: Cleanup ──────────────────────────────
info "Cleaning up API key..."
rm -rf ~/private_keys

# ── Done ─────────────────────────────────────────
echo ""
echo "══════════════════════════════════════════════════════"
echo -e "  ${GREEN}Build uploaded to TestFlight!${NC}"
echo "══════════════════════════════════════════════════════"
echo ""
echo "  Bundle ID: ${BUNDLE_ID}"
echo "  Team ID:   ${TEAM_ID}"
echo ""
echo "  Check TestFlight at:"
echo "  https://appstoreconnect.apple.com/apps"
echo ""
echo "══════════════════════════════════════════════════════"
