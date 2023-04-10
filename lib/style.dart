import 'package:flutter/material.dart';

class Style {
  Style(
      {this.width,
      this.height,
      this.margin,
      this.padding,
      this.border,
      this.flex,
      this.textStyle,
      this.backgroundColor,
      this.crossAxisAlignment,
      this.mainAxisAlignment,
      this.icon,
      this.rearIcon,
      this.gap});

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Border? border;
  final int? flex;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  final CrossAxisAlignment? crossAxisAlignment;
  final MainAxisAlignment? mainAxisAlignment;

  final Widget? icon;
  final Widget? rearIcon;

  final double? gap;
}
