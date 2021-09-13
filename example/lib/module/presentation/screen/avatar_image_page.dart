import 'package:flutter/material.dart';

class AvatarImagePage extends StatelessWidget {
  static const String routeName = "/avatar-image";
  const AvatarImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar & Images"),
      ),
    );
  }
}
