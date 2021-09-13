import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  static const String routeName = "/card";
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cards"),
      ),
    );
  }
}
