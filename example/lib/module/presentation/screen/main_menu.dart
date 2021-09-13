import 'package:clevrui/clevrui.dart';
import 'package:clevrui/values/dimens_util.dart';
import 'package:clevrui/widgets/clevr_app_bar.dart';
import 'package:example/common/provider/main_provider.dart';
import 'package:example/module/presentation/provider/main_menu_provider.dart';
import 'package:example/module/presentation/screen/alert_dialog_page.dart';
import 'package:example/module/presentation/screen/avatar_image_page.dart';
import 'package:example/module/presentation/screen/card_page.dart';
import 'package:example/module/presentation/screen/navigation_page.dart';
import 'package:example/module/presentation/screen/typography_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'button_page.dart';
import 'color_scheme_page.dart';
import 'form_component_page.dart';

class MainMenu extends StatelessWidget {
  static const String routeName = '/main-menu';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainMenuProvider(),
      builder: (context, child) => Scaffold(
        appBar: ClevrAppBar(
          title: Text(
            "Clevrui Gallery",
          ),
          actions: [
            Consumer<MainProvider>(
              builder: (context, provider, child) => Visibility(
                visible: provider.getBrightness == Brightness.light,
                child: IconButton(
                  onPressed: () => provider.changeBrightness(
                    Brightness.dark,
                  ),
                  icon: Icon(
                    Icons.dark_mode,
                  ),
                ),
                replacement: IconButton(
                  onPressed: () => provider.changeBrightness(
                    Brightness.light,
                  ),
                  icon: Icon(
                    Icons.light_mode,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 2.1,
            mainAxisSpacing: DimensUtil.m,
            crossAxisSpacing: DimensUtil.m,
            padding: EdgeInsets.all(DimensUtil.m),
            children: [
              cardMenu(
                context: context,
                icon: Icons.color_lens,
                title: "Color Schemes",
                pageRouteName: ColorSchemePage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.font_download,
                title: "Typography",
                pageRouteName: TypographyPage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.input,
                title: "Form component",
                pageRouteName: FormComponentPage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.smart_button,
                title: "Buttons",
                pageRouteName: ButtonPage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.navigation,
                title: "Navigation",
                pageRouteName: NavigationPage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.warning,
                title: "Alert & Dialog",
                pageRouteName: AlertDialogPage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.credit_card,
                title: "Cards",
                pageRouteName: CardPage.routeName,
              ),
              cardMenu(
                context: context,
                icon: Icons.photo,
                title: "Avatar & Images",
                pageRouteName: AvatarImagePage.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardMenu({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String pageRouteName,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(DimensUtil.s),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(DimensUtil.s),
        color: Theme.of(context).colorScheme.surface,
        child: InkWell(
          borderRadius: BorderRadius.circular(DimensUtil.s),
          onTap: () {
            Navigator.pushNamed(context, pageRouteName);
          },
          child: Container(
            width: 150,
            padding: EdgeInsets.all(DimensUtil.m),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: DimensUtil.xxl,
                ),
                Text(
                  title,
                  style: TextThemeUtil.bodyText1(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
