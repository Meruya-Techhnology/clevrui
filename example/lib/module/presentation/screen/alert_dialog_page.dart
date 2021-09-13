import 'package:clevrui/clevrui.dart';
import 'package:clevrui/values/dimens_util.dart';
import 'package:example/module/presentation/provider/alert_dialog_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlertDialogPage extends StatelessWidget {
  static const String routeName = "/alert-dialog";
  const AlertDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert & Dialog"),
      ),
      body: ChangeNotifierProvider(
        create: (context) => AlertDialogProvider(),
        builder: (context, child) => ListView(
          children: [
            toastSection(context),
            Divider(),
            dialogSection(context),
          ],
        ),
      ),
    );
  }

  Widget toastSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Toast",
            style: TextThemeUtil.headline6(context),
          ),
          Text(
            "Hey we have toast !",
            style: TextThemeUtil.caption(context),
          ),
          SizedBox(width: DimensUtil.m),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.onPrimary,
            onPressed: () => showToast(context),
            child: Text(
              "Show Toast",
            ),
          ),
        ],
      ),
    );
  }

  Widget dialogSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Alert Dialog",
            style: TextThemeUtil.headline6(context),
          ),
          Text(
            "Show the alert dialog",
            style: TextThemeUtil.caption(context),
          ),
          SizedBox(width: DimensUtil.m),
          MaterialButton(
            color: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.onPrimary,
            onPressed: () => showTheDialog(context),
            child: Text(
              "Show Dialog",
            ),
          ),
        ],
      ),
    );
  }

  /// action method
  void showToast(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            Icon(
              Icons.info,
              color: ColorSchemeUtil.background(context),
            ),
            SizedBox(width: DimensUtil.xs),
            Expanded(
              child: Text(
                "This is an information, please be advice",
                style: TextThemeUtil.bodyText1(
                  context,
                  color: ColorSchemeUtil.background(context),
                ),
              ),
            ),
          ],
        ),
        action: SnackBarAction(
          textColor: ColorSchemeUtil.primary(context),
          label: "Show",
          onPressed: () {},
        ),
        backgroundColor: ColorSchemeUtil.onBackground(context),
      ),
    );
  }

  void showTheDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Are you sure ?',
            style: TextThemeUtil.headline6(context),
          ),
          content: Text(
            'Once you press that Yes button, you cannot go back',
            style: TextThemeUtil.bodyText2(context),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Cancel",
                style: TextThemeUtil.button(
                  context,
                  color: ColorSchemeUtil.onSurface(context),
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Delete'),
              textColor: ColorSchemeUtil.onError(context),
              color: ColorSchemeUtil.error(context),
              elevation: 0,
              highlightElevation: 0,
            )
          ],
        );
      },
    );
  }
}
