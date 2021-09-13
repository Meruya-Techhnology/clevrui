import 'package:example/module/presentation/screen/alert_dialog_page.dart';
import 'package:example/module/presentation/screen/avatar_image_page.dart';
import 'package:example/module/presentation/screen/button_page.dart';
import 'package:example/module/presentation/screen/card_page.dart';
import 'package:example/module/presentation/screen/color_scheme_page.dart';
import 'package:example/module/presentation/screen/form_component_page.dart';
import 'package:example/module/presentation/screen/main_menu.dart';
import 'package:example/module/presentation/screen/navigation_page.dart';
import 'package:example/module/presentation/screen/typography_page.dart';
import 'package:flutter/material.dart';

class RoutesUtil {
  static Map<String, WidgetBuilder> get routes {
    return <String, WidgetBuilder>{
      MainMenu.routeName: (_) => new MainMenu(),
      TypographyPage.routeName: (_) => new TypographyPage(),
      ColorSchemePage.routeName: (_) => new ColorSchemePage(),
      FormComponentPage.routeName: (_) => new FormComponentPage(),
      ButtonPage.routeName: (_) => new ButtonPage(),
      NavigationPage.routeName: (_) => new NavigationPage(),
      AlertDialogPage.routeName: (_) => new AlertDialogPage(),
      CardPage.routeName: (_) => new CardPage(),
      AvatarImagePage.routeName: (_) => new AvatarImagePage(),
    };
  }

  static MaterialPageRoute<dynamic>? generatedRoutes(RouteSettings settings) {
    MaterialPageRoute? routes;
    // switch (settings.name) {
    //   case Home.routeName:
    //     final args = settings.arguments;
    //     routes = MaterialPageRoute(
    //       builder: (context) {
    //         return Home(args);
    //       },
    //     );
    //     break;
    // }
    return routes;
  }
}
