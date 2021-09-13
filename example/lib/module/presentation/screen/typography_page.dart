import 'package:clevrui/values/dimens_util.dart';
import 'package:clevrui/widgets/clevr_app_bar.dart';
import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  static const String routeName = "/typography";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ClevrAppBar(
        title: Text(
          "Typography",
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: DimensUtil.s,
              horizontal: DimensUtil.m,
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Headline1",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Divider(),
                Text(
                  "Headline2",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Divider(),
                Text(
                  "Headline3",
                  style: Theme.of(context).textTheme.headline3,
                ),
                Divider(),
                Text(
                  "Headline4",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Divider(),
                Text(
                  "Headline5",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Divider(),
                Text(
                  "Headline6",
                  style: Theme.of(context).textTheme.headline6,
                ),
                Divider(),
                Text(
                  "BodyText1",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Divider(),
                Text(
                  "BodyText2",
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                Divider(),
                Text(
                  "Subtitle1",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Divider(),
                Text(
                  "Subtitle2",
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                Divider(),
                Text(
                  "Button",
                  style: Theme.of(context).textTheme.button,
                ),
                Divider(),
                Text(
                  "Caption",
                  style: Theme.of(context).textTheme.caption,
                ),
                Divider(),
                Text(
                  "Overline",
                  style: Theme.of(context).textTheme.overline,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
