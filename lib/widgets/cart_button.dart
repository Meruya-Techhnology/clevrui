import 'package:clevrui/values/dimens_util.dart';
import 'package:flutter/material.dart';

import 'circle_button.dart';

class CartButton extends StatelessWidget {
  final int amount;
  final VoidCallback onInitialTap;
  final VoidCallback onRemoveTap;
  final VoidCallback onAddTap;
  const CartButton({
    this.amount = 0,
    required this.onInitialTap,
    required this.onRemoveTap,
    required this.onAddTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Visibility(
        visible: amount == 0,
        replacement: adjustButton(context),
        child: initialButton(context),
      ),
    );
  }

  Widget initialButton(BuildContext context) => MaterialButton(
        onPressed: onInitialTap,
        elevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        visualDensity: VisualDensity.compact,
        color: Theme.of(context).colorScheme.primary,
        splashColor: Theme.of(context).colorScheme.secondary,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          "Tambah",
          style: Theme.of(context).textTheme.button,
        ),
      );

  Widget adjustButton(BuildContext context) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            onTap: onRemoveTap,
            icon: Icons.remove,
            size: 18,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: DimensUtil.xs,
            ),
            width: DimensUtil.xxl,
            alignment: Alignment.center,
            child: Text("$amount"),
          ),
          CircleButton(
            onTap: onAddTap,
            icon: Icons.add,
            size: 18,
          ),
        ],
      );
}
