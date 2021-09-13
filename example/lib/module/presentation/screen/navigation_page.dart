import 'package:flutter/material.dart';

class NavigationPage extends StatelessWidget {
  static const String routeName = "/navigation";
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Column(),
    );
  }
}
