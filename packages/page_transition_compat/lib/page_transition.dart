/// Compatibility shim for page_transition package with Flutter 3.27+
library page_transition;

import 'package:flutter/material.dart';

enum PageTransitionType {
  fade,
  rightToLeft,
  leftToRight,
  upToDown,
  downToUp,
  rightToLeftWithFade,
  leftToRightWithFade,
  rightToLeftJoined,
  leftToRightJoined,
  topToBottom,
  bottomToTop,
  scale,
  rotate,
  size,
  rightToLeftPop,
  leftToRightPop,
  bottomToTopPop,
  topToBottomPop,
  cupertino,
  cupertinoPopup,
}

class PageTransition<T> extends PageRouteBuilder<T> {
  final Widget child;
  final PageTransitionType type;
  final Curve curve;
  final Duration duration;
  final Alignment alignment;
  final bool inheritTheme;
  final BuildContext? ctx;

  PageTransition({
    required this.child,
    this.type = PageTransitionType.rightToLeft,
    this.curve = Curves.easeInOut,
    this.duration = const Duration(milliseconds: 300),
    this.alignment = Alignment.center,
    this.inheritTheme = false,
    this.ctx,
    super.settings,
    super.fullscreenDialog,
    super.reverseDuration,
    super.opaque,
    super.barrierDismissible,
    super.barrierColor,
    super.barrierLabel,
    super.maintainState,
  }) : super(
    pageBuilder: (context, animation, secondaryAnimation) => child,
    transitionDuration: duration,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      switch (type) {
        case PageTransitionType.fade:
          return FadeTransition(opacity: animation, child: child);
        case PageTransitionType.rightToLeft:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: curve)),
            child: child,
          );
        case PageTransitionType.leftToRight:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(-1, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: curve)),
            child: child,
          );
        case PageTransitionType.bottomToTop:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: curve)),
            child: child,
          );
        case PageTransitionType.topToBottom:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, -1),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: curve)),
            child: child,
          );
        case PageTransitionType.cupertino:
        case PageTransitionType.cupertinoPopup:
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
            child: child,
          );
        default:
          return FadeTransition(opacity: animation, child: child);
      }
    },
  );
}
