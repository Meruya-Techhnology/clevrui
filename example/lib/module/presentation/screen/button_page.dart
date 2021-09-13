import 'package:clevrui/values/dimens_util.dart';
import 'package:example/module/presentation/provider/button_provider.dart';
import 'package:example/module/presentation/widget/button_page/custom_button.dart';
import 'package:example/module/presentation/widget/button_page/default_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonPage extends StatelessWidget {
  static const String routeName = "/button";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ButtonProvider(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(
          title: Text('Button'),
        ),
        body: DefaultTabController(
          length: 2,
          initialIndex: context.read<ButtonProvider>().tabIndex,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                labelPadding: EdgeInsets.symmetric(
                  horizontal: DimensUtil.m,
                  vertical: DimensUtil.s,
                ),
                onTap: context.read<ButtonProvider>().changeTabIndex,
                tabs: [
                  Text('Default Button'),
                  Text('Custom Button'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    DefaultButton(),
                    CustomButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
