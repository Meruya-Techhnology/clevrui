import 'package:clevrui/values/dimens_util.dart';
import 'package:example/module/presentation/provider/color_scheme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorSchemePage extends StatelessWidget {
  static const String routeName = "/color-scheme";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorSchemeProvider(
        context: context,
      ),
      builder: (context, child) => Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            colorDetail(context),
            Divider(),
            colorList(context),
          ],
        ),
      ),
    );
  }

  Widget colorList(
    BuildContext context,
  ) {
    return Expanded(
      child: Consumer<ColorSchemeProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            itemCount: provider.getColorSchemes.length,
            separatorBuilder: (context, index) => Divider(height: 0),
            itemBuilder: (context, index) {
              var colorScheme = provider.getColorSchemes[index];
              return colorListTile(
                context: context,
                title: colorScheme['title'],
                color: colorScheme['color'],
                index: index,
                provider: provider,
              );
            },
          );
        },
      ),
    );
  }

  Widget colorListTile({
    required BuildContext context,
    required String title,
    required Color color,
    required int index,
    required ColorSchemeProvider provider,
  }) {
    return InkWell(
      onTap: () => provider.changeSelectedColor(index),
      child: Padding(
        padding: EdgeInsets.all(DimensUtil.m),
        child: Row(
          children: [
            Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(DimensUtil.xxl),
                side: BorderSide(
                  width: 1,
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              color: color,
              child: Container(
                height: 40,
                width: 40,
              ),
            ),
            SizedBox(width: DimensUtil.xs),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }

  Widget colorDetail(
    BuildContext context,
  ) {
    return Consumer<ColorSchemeProvider>(
      builder: (context, provider, child) {
        return Container(
          width: 230,
          padding: EdgeInsets.all(DimensUtil.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Color Scheme",
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                provider.getSelectedColor['title'],
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        );
      },
    );
  }
}
