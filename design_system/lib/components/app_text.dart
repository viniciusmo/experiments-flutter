import 'package:flutter/material.dart';
import 'package:shadcn_ui/src/theme/theme.dart';

enum TextStyleType {
  h1Large,
  h1,
  h2,
  h3,
  h4,
  p,
  blockquote,
  table,
  list,
  lead,
  large,
  small,
  muted,
}

class AppText extends StatelessWidget {
  final String data;
  final TextStyleType styleType;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  const AppText.h1Large(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.h1Large;

  const AppText.h1(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.h1;

  const AppText.h2(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.h2;

  const AppText.h3(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.h3;

  const AppText.h4(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.h4;

  const AppText.p(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.p;

  const AppText.blockquote(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.blockquote;

  const AppText.table(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.table;

  const AppText.list(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.list;

  const AppText.lead(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.lead;

  const AppText.large(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.large;

  const AppText.small(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.small;

  const AppText.muted(
      this.data, {
        super.key,
        this.textAlign,
        this.overflow,
        this.maxLines,
      }) : styleType = TextStyleType.muted;

  @override
  Widget build(BuildContext context) {
    final textTheme = ShadTheme.of(context).textTheme;
    final TextStyle resolvedStyle;
    switch (styleType) {
      case TextStyleType.h1Large:
        resolvedStyle = textTheme.h1Large;
        break;
      case TextStyleType.h1:
        resolvedStyle = textTheme.h1;
        break;
      case TextStyleType.h2:
        resolvedStyle = textTheme.h2;
        break;
      case TextStyleType.h3:
        resolvedStyle = textTheme.h3;
        break;
      case TextStyleType.h4:
        resolvedStyle = textTheme.h4;
        break;
      case TextStyleType.p:
        resolvedStyle = textTheme.p;
        break;
      case TextStyleType.blockquote:
        resolvedStyle = textTheme.blockquote;
        break;
      case TextStyleType.table:
        resolvedStyle = textTheme.table;
        break;
      case TextStyleType.list:
        resolvedStyle = textTheme.list;
        break;
      case TextStyleType.lead:
        resolvedStyle = textTheme.lead;
        break;
      case TextStyleType.large:
        resolvedStyle = textTheme.large;
        break;
      case TextStyleType.small:
        resolvedStyle = textTheme.small;
        break;
      case TextStyleType.muted:
        resolvedStyle = textTheme.muted;
        break;
      default:
        resolvedStyle = textTheme.p;
        break;
    }

    return Text(
      data,
      style: resolvedStyle,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
