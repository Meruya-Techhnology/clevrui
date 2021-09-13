import 'package:clevrui/values/dimens_util.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final double? size;
  final Color? color;
  final Color? iconColor;
  final Color? splashColor;
  final EdgeInsets contentPadding;

  const CircleButton({
    required this.onTap,
    required this.icon,
    this.size,
    this.color,
    this.iconColor,
    this.contentPadding = const EdgeInsets.all(4),
    this.splashColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? Theme.of(context).colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DimensUtil.xxl),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(DimensUtil.xxl),
        splashColor: Theme.of(context).colorScheme.secondary,
        onTap: onTap,
        child: Padding(
          padding: contentPadding,
          child: Icon(
            icon,
            color: iconColor ?? Theme.of(context).colorScheme.onPrimary,
            size: size,
          ),
        ),
      ),
    );
  }
}
