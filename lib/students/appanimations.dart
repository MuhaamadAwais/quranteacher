import 'package:flutter/widgets.dart';

class AppAnimations {
  AppAnimations(this.controller);

  final AnimationController controller;

  /// fade without stagger
  ///
  Animation<double> simplefade({
    required double begin,
    required double end,
    Curve curve = Curves.easeInOut,
  }) {
    return Tween<double>(
      begin: begin,
      end: end,
    ).animate(CurvedAnimation(parent: controller, curve: curve));
  }

  /// slide without stagger
  Animation<Offset> simpleslide({
    required Offset begin,
    required Offset end,
    Curve curve = Curves.easeInOut,
  }) {
    return Tween<Offset>(
      begin: begin,
      end: end,
    ).animate(CurvedAnimation(parent: controller, curve: curve));
  }

  /// Fade Animation
  Animation<double> fade({
    required double begin,
    required double end,
    required double start,
    required double endInterval,
    Curve curve = Curves.easeInOut,
  }) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(start, endInterval, curve: curve),
      ),
    );
  }

  /// Slide Animation
  Animation<Offset> slide({
    required Offset begin,
    required Offset end,
    required double start,
    required double endInterval,
    Curve curve = Curves.easeInOut,
  }) {
    return Tween<Offset>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(start, endInterval, curve: curve),
      ),
    );
  }

  /// Scale Animation
  Animation<double> scale({
    required double begin,
    required double end,
    required double start,
    required double endInterval,
    Curve curve = Curves.easeInOut,
  }) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(start, endInterval, curve: curve),
      ),
    );
  }
}
