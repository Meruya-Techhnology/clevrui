import 'package:clevrui/clevrui.dart';
import 'package:clevrui/values/dimens_util.dart';
import 'package:example/module/presentation/provider/form_component_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormComponentPage extends StatelessWidget {
  static const String routeName = "/form-component";

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FormComponentProvider(context: context),
      builder: (context, child) => Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(DimensUtil.m),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Form Component",
                  style: TextThemeUtil.headline6(context),
                ),
                SizedBox(height: DimensUtil.m),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Words",
                  ),
                  initialValue: "Brown fox, jump over the fence",
                ),
                SizedBox(height: DimensUtil.m),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Words",
                    errorText: "The fox cannot jump",
                  ),
                  initialValue: "Brown fox, jump over the fence",
                ),
                SizedBox(height: DimensUtil.m),
                Row(
                  children: [
                    Consumer<FormComponentProvider>(
                      builder: (context, provider, child) => Checkbox(
                        value: provider.getCheckboxValue1,
                        onChanged: provider.changeCheckboxValue1,
                      ),
                    ),
                    Text("Is this good ?"),
                  ],
                ),
                Row(
                  children: [
                    Consumer<FormComponentProvider>(
                      builder: (context, provider, child) => Checkbox(
                        value: provider.getCheckboxValue2,
                        onChanged: provider.changeCheckboxValue2,
                      ),
                    ),
                    Text("Are you hungry ?"),
                  ],
                ),
                SizedBox(height: DimensUtil.m),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your favorite class",
                      style: TextThemeUtil.bodyText2(context),
                    ),
                    Consumer<FormComponentProvider>(
                      builder: (context, provider, child) => Row(
                        children: [
                          Row(
                            children: [
                              Radio(
                                groupValue: provider.getRadioGroupValue,
                                value: true,
                                onChanged: provider.checkRadioButton1,
                              ),
                              Text("Science"),
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                groupValue: provider.getRadioGroupValue,
                                value: false,
                                onChanged: provider.checkRadioButton2,
                              ),
                              Text("Physic"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Your favorite book",
                      style: TextThemeUtil.bodyText2(context),
                    ),
                    Consumer<FormComponentProvider>(
                      builder: (context, provider, child) => Slider(
                        min: 0,
                        max: 100,
                        divisions: 10,
                        label: provider.getSliderValue.toString(),
                        value: provider.getSliderValue,
                        onChanged: provider.changeSliderValue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
