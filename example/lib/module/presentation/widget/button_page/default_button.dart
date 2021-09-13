import 'package:clevrui/values/dimens_util.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        textButtonSection(context),
        Divider(),
        materialButtonSection(context),
        Divider(),
        elevatedButtonSection(context),
        Divider(),
        outlinedButtonSection(context),
        Divider(),
        iconButtonSection(context),
        Divider(),
        buttonBarSection(context),
      ],
    );
  }

  Widget textButtonSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Text Button",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "A button that basically a text, usually TextButton used for link",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: DimensUtil.xs),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Text button",
                ),
              ),
              SizedBox(width: DimensUtil.m),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Text button icon"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget materialButtonSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Material Button",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "A default material button",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(width: DimensUtil.m),
          MaterialButton(
            onPressed: () {},
            child: Text(
              "Tambah",
            ),
          ),
        ],
      ),
    );
  }

  Widget elevatedButtonSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Elevated Button",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "A button that basically `elevated`",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(height: DimensUtil.xs),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Simpan"),
              ),
              SizedBox(width: DimensUtil.m),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text(
                  "Tambah",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget outlinedButtonSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Outlined Button",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "A button with border decoration",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(width: DimensUtil.m),
          Row(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Tambah",
                ),
              ),
              SizedBox(width: DimensUtil.m),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.save),
                label: Text("Simpan"),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget iconButtonSection(BuildContext context) {
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
            "A button based on icon",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(width: DimensUtil.m),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          ),
        ],
      ),
    );
  }

  Widget buttonBarSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(DimensUtil.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Button Bar",
            style: Theme.of(context).textTheme.headline6,
          ),
          Text(
            "This is not a button, but with button bar we can force the button"
            " position & alignment",
            style: Theme.of(context).textTheme.caption,
          ),
          SizedBox(width: DimensUtil.m),
          ButtonBar(
            children: [
              MaterialButton(
                elevation: 0,
                onPressed: () {},
                child: Text(
                  "Cancel",
                ),
              ),
              MaterialButton(
                elevation: 0,
                onPressed: () {},
                color: Theme.of(context).colorScheme.error,
                textColor: Theme.of(context).colorScheme.onError,
                child: Text(
                  "Delete",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
