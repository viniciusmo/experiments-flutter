import 'package:shadcn_ui/shadcn_ui.dart';

class PopoverController {
  final ShadPopoverController _controller = ShadPopoverController();

  void show() => _controller.show();
  void hide() => _controller.hide();
  bool get isOpen => _controller.isOpen;

  ShadPopoverController toShad() => _controller;
}
