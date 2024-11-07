import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

abstract class AnchorBase {
  ShadAnchorBase toShad();
}

class AnchorAuto extends AnchorBase {
  final double verticalOffset;
  final bool preferBelow;
  final bool followTargetOnResize;

  AnchorAuto({
    this.verticalOffset = 0,
    this.preferBelow = true,
    this.followTargetOnResize = true,
  });

  @override
  ShadAnchorAuto toShad() {
    return ShadAnchorAuto(
      verticalOffset: verticalOffset,
      preferBelow: preferBelow,
      followTargetOnResize: followTargetOnResize,
    );
  }
}

class Anchor extends AnchorBase {
  final Alignment childAlignment;
  final Alignment overlayAlignment;
  final Offset offset;

  Anchor({
    this.childAlignment = Alignment.topLeft,
    this.overlayAlignment = Alignment.bottomLeft,
    this.offset = Offset.zero,
  });

  @override
  ShadAnchor toShad() {
    return ShadAnchor(
      childAlignment: childAlignment,
      overlayAlignment: overlayAlignment,
      offset: offset,
    );
  }
}

class GlobalAnchor extends AnchorBase {
  final Offset offset;

  GlobalAnchor(this.offset);

  @override
  ShadGlobalAnchor toShad() {
    return ShadGlobalAnchor(offset);
  }
}