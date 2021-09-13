import 'package:clevrui/clevrui.dart';
import 'package:clevrui/values/dimens_util.dart';
import 'package:example/module/presentation/provider/button_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        cartButtonSection(context),
        Divider(),
        buttonWithLoader(context),
      ],
    );
  }

  Widget cartButtonSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cart Button",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "Custom button for cart control",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: DimensUtil.xs),
          Consumer<ButtonProvider>(
            builder: (context, provider, child) {
              return CartButton(
                amount: provider.cartAmount,
                onInitialTap: () => provider.addCartAmount(1),
                onRemoveTap: provider.removeCartAmount,
                onAddTap: () => provider.addCartAmount(1),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buttonWithLoader(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Icon Button",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "Custom button for icon",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: DimensUtil.xs),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                elevation: 0,
                color: Theme.of(context).colorScheme.primary,
                textColor: Theme.of(context).colorScheme.onPrimary,
                child: Icon(
                  Icons.airplanemode_active,
                ),
              ),
              SizedBox(width: DimensUtil.m),
              CircleButton(
                onTap: () {},
                icon: Icons.ac_unit,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
