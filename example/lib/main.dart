import 'package:clevrui/themes/theme_util.dart';
import 'package:example/common/provider/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'common/routes/routes_util.dart';
import 'module/presentation/screen/main_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainProvider(),
      builder: (context, child) => Consumer<MainProvider>(
        builder: (context, provider, child) => MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeUtil(
            brightness: provider.getBrightness,
          ).themes,
          routes: RoutesUtil.routes,
          initialRoute: MainMenu.routeName,
        ),
      ),
    );
  }
}
