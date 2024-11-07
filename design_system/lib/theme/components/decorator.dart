import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class Border {
  final bool merge;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? radius;
  final BorderSide top;
  final BorderSide right;
  final BorderSide bottom;
  final BorderSide left;

  const Border({
    this.merge = true,
    this.padding,
    this.radius,
    this.top = BorderSide.none,
    this.right = BorderSide.none,
    this.bottom = BorderSide.none,
    this.left = BorderSide.none,
  });

  ShadBorder toShad() {
    return ShadBorder(
      merge: merge,
      padding: padding,
      radius: radius,
      top: top,
      right: right,
      bottom: bottom,
      left: left,
    );
  }
}

class Decoration {
  final Border border;
  final Border secondaryBorder;

  Decoration(
      this.border,
      this.secondaryBorder,
      );

  ShadDecoration toShad() {
    return ShadDecoration(
      border: border.toShad(),
      secondaryBorder: secondaryBorder.toShad(),
    );
  }
}

