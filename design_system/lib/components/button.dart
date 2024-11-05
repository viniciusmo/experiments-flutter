import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum ButtonType {
  primary,
  secondary,
  destructive,
  outline,
  ghost,
  link,
}

class Button extends StatelessWidget {
  final Widget? text;
  final Widget? icon;
  final VoidCallback? onPressed;
  final ButtonType type;
  final bool isLoading;

  const Button({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.type = ButtonType.primary,
    this.isLoading = false,
  });

  const Button.primary({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,
  }) : type = ButtonType.primary;

  const Button.secondary({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,
  }) : type = ButtonType.secondary;

  const Button.destructive({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,
  }) : type = ButtonType.destructive;

  const Button.outline({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,
  }) : type = ButtonType.outline;

  const Button.ghost({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,
  }) : type = ButtonType.ghost;

  const Button.link({
    super.key,
    this.text,
    this.icon,
    required this.onPressed,
    this.isLoading = false,
  }) : type = ButtonType.link;

  @override
  Widget build(BuildContext context) {
    return _buildShadButton();
  }

  Widget _buildShadButton() {
    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isLoading)
          const SizedBox.square(
            dimension: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        else if (icon != null)
          icon!,
        if (icon != null && text != null) const SizedBox(width: 8),
        if (text != null) text!,
      ],
    );

    switch (type) {
      case ButtonType.primary:
        return ShadButton(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
      case ButtonType.secondary:
        return ShadButton.secondary(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
      case ButtonType.destructive:
        return ShadButton.destructive(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
      case ButtonType.outline:
        return ShadButton.outline(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
      case ButtonType.ghost:
        return ShadButton.ghost(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
      case ButtonType.link:
        return ShadButton.link(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
      default:
        return ShadButton(
          onPressed: isLoading ? null : onPressed,
          child: content,
        );
    }
  }
}
