import 'package:flutter/material.dart';

/// Provides FontAwesome icon constants as plain IconData instances
/// Compatible with Flutter 3.27+ where IconData is a final class
class FontAwesomeIcons {
  // Private constructor
  FontAwesomeIcons._();
  
  // Using Font Awesome Pro Solid (weight 900) - icon font
  static const String _fontFamily = 'FontAwesomeBrands';
  static const String _fontFamilySolid = 'Font Awesome 6 Free';
  static const String _fontFamilyRegular = 'Font Awesome 6 Free';
  
  // Common icons - Solid
  static const IconData home = IconData(0xf015, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData user = IconData(0xf007, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData heart = IconData(0xf004, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData star = IconData(0xf005, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData search = IconData(0xf002, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData settings = IconData(0xf013, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData bell = IconData(0xf0f3, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData envelope = IconData(0xf0e0, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData camera = IconData(0xf030, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData image = IconData(0xf03e, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData video = IconData(0xf03d, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData music = IconData(0xf001, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData mapMarkerAlt = IconData(0xf3c5, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData shoppingCart = IconData(0xf07a, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData chevronLeft = IconData(0xf053, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData chevronRight = IconData(0xf054, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData chevronDown = IconData(0xf078, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData chevronUp = IconData(0xf077, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData times = IconData(0xf00d, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData plus = IconData(0xf067, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData minus = IconData(0xf068, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData check = IconData(0xf00c, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData arrowLeft = IconData(0xf060, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData arrowRight = IconData(0xf061, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData share = IconData(0xf064, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData bookmark = IconData(0xf02e, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData comment = IconData(0xf075, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData thumbUp = IconData(0xf164, fontFamily: _fontFamilyRegular, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData thumbDown = IconData(0xf165, fontFamily: _fontFamilyRegular, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData edit = IconData(0xf044, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData trash = IconData(0xf1f8, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData lock = IconData(0xf023, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData unlock = IconData(0xf09c, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData wallet = IconData(0xf555, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData ticket = IconData(0xf145, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData calendar = IconData(0xf133, fontFamily: _fontFamilyRegular, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData clock = IconData(0xf017, fontFamily: _fontFamilyRegular, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData globe = IconData(0xf0ac, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData link = IconData(0xf0c1, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData copy = IconData(0xf0c5, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData filter = IconData(0xf0b0, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData sort = IconData(0xf0dc, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData bars = IconData(0xf0c9, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData ellipsisV = IconData(0xf142, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData signOutAlt = IconData(0xf2f5, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData signInAlt = IconData(0xf2f6, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData userPlus = IconData(0xf234, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData users = IconData(0xf0c0, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData circleUser = IconData(0xf2bd, fontFamily: _fontFamilyRegular, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData cog = IconData(0xf013, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData question = IconData(0xf128, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData info = IconData(0xf129, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData exclamation = IconData(0xf12a, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData warning = IconData(0xf071, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData close = IconData(0xf00d, fontFamily: _fontFamilySolid, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  
  // Brands
  static const IconData google = IconData(0xf1a0, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData apple = IconData(0xf179, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData facebook = IconData(0xf09a, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData instagram = IconData(0xf16d, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData twitter = IconData(0xf099, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData youtube = IconData(0xf167, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData whatsapp = IconData(0xf232, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData tiktok = IconData(0xe07b, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  static const IconData linkedin = IconData(0xf08c, fontFamily: _fontFamily, fontPackage: 'font_awesome_flutter', matchTextDirection: true);
  
  // Alias for solid icons
  static const IconData solidHome = home;
  static const IconData solidUser = user;
  static const IconData solidHeart = heart;
  static const IconData solidStar = star;
}

/// FaIcon widget - compatible replacement for the original
class FaIcon extends StatelessWidget {
  final IconData icon;
  final double? size;
  final Color? color;
  final String? semanticLabel;
  final TextDirection? textDirection;

  const FaIcon(
    this.icon, {
    super.key,
    this.size,
    this.color,
    this.semanticLabel,
    this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: color,
      semanticLabel: semanticLabel,
      textDirection: textDirection,
    );
  }
}
