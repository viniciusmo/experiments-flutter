import 'package:design_system/components/popover.dart';
import 'package:design_system/raw_components/portal.dart';
import 'package:design_system/theme/components/decorator.dart';
import 'package:flutter/material.dart' hide Decoration;
import 'package:shadcn_ui/shadcn_ui.dart';

enum SelectVariant {
  primary,
  search,
  multiple,
  multipleWithSearch,
}

class Select<T> extends StatelessWidget {
  final List<Widget>? options;
  final Widget Function(BuildContext, int)? optionsBuilder;
  final Widget? placeholder;
  final T? initialValue;
  final List<T> initialValues;
  final ValueChanged<T?>? onChanged;
  final ValueChanged<List<T>>? onMultipleChanged;
  final ValueChanged<String>? onSearchChanged;
  final bool enabled;
  final SelectVariant variant;
  final Widget Function(BuildContext, T)? selectedOptionBuilder;
  final Widget Function(BuildContext, List<T>)? selectedOptionsBuilder;
  final Decoration? decoration;
  final EdgeInsets? padding;
  final EdgeInsets? optionsPadding;
  final double? minWidth;
  final double? maxWidth;
  final double? maxHeight;
  final bool closeOnTapOutside;
  final AnchorBase? anchor;
  final ScrollController? scrollController;
  final PopoverController? controller;
  final Widget? trailing;
  final Widget? header;
  final Widget? footer;

  const Select.primary({
    super.key,
    this.options,
    this.optionsBuilder,
    this.placeholder,
    this.initialValue,
    this.onChanged,
    this.enabled = true,
    this.selectedOptionBuilder,
    this.decoration,
    this.padding,
    this.optionsPadding,
    this.minWidth,
    this.maxWidth,
    this.maxHeight,
    this.closeOnTapOutside = true,
    this.anchor,
    this.scrollController,
    this.controller,
    this.trailing,
    this.header,
    this.footer,
  })  : variant = SelectVariant.primary,
        initialValues = const [],
        onMultipleChanged = null,
        onSearchChanged = null,
        selectedOptionsBuilder = null;

  const Select.withSearch({
    super.key,
    this.options,
    this.optionsBuilder,
    this.placeholder,
    this.initialValue,
    this.onChanged,
    required this.onSearchChanged,
    this.enabled = true,
    this.selectedOptionBuilder,
    this.decoration,
    this.padding,
    this.optionsPadding,
    this.minWidth,
    this.maxWidth,
    this.maxHeight,
    this.closeOnTapOutside = true,
    this.anchor,
    this.scrollController,
    this.controller,
    this.trailing,
    this.header,
    this.footer,
  })  : variant = SelectVariant.search,
        initialValues = const [],
        onMultipleChanged = null,
        selectedOptionsBuilder = null;

  const Select.multiple({
    super.key,
    this.options,
    this.optionsBuilder,
    this.placeholder,
    this.initialValues = const [],
    required this.onMultipleChanged,
    this.enabled = true,
    this.selectedOptionsBuilder,
    this.decoration,
    this.padding,
    this.optionsPadding,
    this.minWidth,
    this.maxWidth,
    this.maxHeight,
    this.closeOnTapOutside = true,
    this.anchor,
    this.scrollController,
    this.controller,
    this.trailing,
    this.header,
    this.footer,
  })  : variant = SelectVariant.multiple,
        initialValue = null,
        onChanged = null,
        onSearchChanged = null,
        selectedOptionBuilder = null;

  const Select.multipleWithSearch({
    super.key,
    this.options,
    this.optionsBuilder,
    this.placeholder,
    this.initialValues = const [],
    required this.onMultipleChanged,
    required this.onSearchChanged,
    this.enabled = true,
    this.selectedOptionsBuilder,
    this.decoration,
    this.padding,
    this.optionsPadding,
    this.minWidth,
    this.maxWidth,
    this.maxHeight,
    this.closeOnTapOutside = true,
    this.anchor,
    this.scrollController,
    this.controller,
    this.trailing,
    this.header,
    this.footer,
  })  : variant = SelectVariant.multipleWithSearch,
        initialValue = null,
        onChanged = null,
        selectedOptionBuilder = null;

  @override
  Widget build(BuildContext context) {
    switch (variant) {
      case SelectVariant.primary:
        return ShadSelect(
          options: options,
          optionsBuilder: optionsBuilder,
          placeholder: placeholder,
          initialValue: initialValue,
          onChanged: onChanged,
          enabled: enabled,
          selectedOptionBuilder: selectedOptionBuilder,
          decoration: decoration?.toShad(),
          padding: padding,
          optionsPadding: optionsPadding,
          minWidth: minWidth,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          closeOnTapOutside: closeOnTapOutside,
          anchor: anchor?.toShad(),
          scrollController: scrollController,
          controller: controller?.toShad(),
          trailing: trailing,
          header: header,
          footer: footer,
        );
      case SelectVariant.search:
        return ShadSelect.withSearch(
          options: options,
          optionsBuilder: optionsBuilder,
          placeholder: placeholder,
          initialValue: initialValue,
          onChanged: onChanged,
          onSearchChanged: onSearchChanged!,
          enabled: enabled,
          selectedOptionBuilder: selectedOptionBuilder,
          decoration: decoration?.toShad(),
          padding: padding,
          optionsPadding: optionsPadding,
          minWidth: minWidth,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          closeOnTapOutside: closeOnTapOutside,
          anchor: anchor?.toShad(),
          scrollController: scrollController,
          controller: controller?.toShad(),
          trailing: trailing,
          header: header,
          footer: footer,
        );
      case SelectVariant.multiple:
        return ShadSelect.multiple(
          options: options,
          optionsBuilder: optionsBuilder,
          placeholder: placeholder,
          initialValues: initialValues,
          onChanged: onMultipleChanged,
          enabled: enabled,
          selectedOptionsBuilder: selectedOptionsBuilder,
          decoration: decoration?.toShad(),
          padding: padding,
          optionsPadding: optionsPadding,
          minWidth: minWidth,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          closeOnTapOutside: closeOnTapOutside,
          anchor: anchor?.toShad(),
          scrollController: scrollController,
          controller: controller?.toShad(),
          trailing: trailing,
          header: header,
          footer: footer,
        );
      case SelectVariant.multipleWithSearch:
        return ShadSelect.multipleWithSearch(
          options: options,
          optionsBuilder: optionsBuilder,
          placeholder: placeholder,
          initialValues: initialValues,
          onChanged: onMultipleChanged,
          onSearchChanged: onSearchChanged!,
          enabled: enabled,
          selectedOptionsBuilder: selectedOptionsBuilder,
          decoration: decoration?.toShad(),
          padding: padding,
          optionsPadding: optionsPadding,
          minWidth: minWidth,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          closeOnTapOutside: closeOnTapOutside,
          anchor: anchor?.toShad(),
          scrollController: scrollController,
          controller: controller?.toShad(),
          trailing: trailing,
          header: header,
          footer: footer,
        );
    }
  }
}
