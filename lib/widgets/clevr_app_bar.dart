import 'package:flutter/material.dart';

class ClevrAppBar extends AppBar {
  final Widget title;
  final bool centerTitle;
  final double? titleSpacing;
  final TextStyle? titleTextStyle;
  final Widget? leading;
  final List<Widget>? actions;
  final double elevation;
  final Widget? flexibleSpace;
  final bool? backwardsCompatibility;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Brightness? brightness;

  ClevrAppBar({
    required this.title,
    this.centerTitle = false,
    this.titleSpacing,
    this.titleTextStyle,
    this.leading,
    this.actions,
    this.elevation = 0.0,
    this.flexibleSpace,
    this.backwardsCompatibility,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.foregroundColor,
    this.brightness,
  }) : super(
          title: title,
          centerTitle: centerTitle,
          titleSpacing: titleSpacing,
          titleTextStyle: titleTextStyle,
          leading: leading,
          actions: actions,
          elevation: elevation,
          flexibleSpace: flexibleSpace,
          backwardsCompatibility: backwardsCompatibility,
          automaticallyImplyLeading: automaticallyImplyLeading,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          brightness: brightness,
        );
}
