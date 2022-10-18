import 'package:flutter/material.dart';
import '../UI/blocks/button.dart';
import '../UI/blocks/other_obj.dart';
import '../Objects.dart';

String x = uiStyles.theme;

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            uiStyles.theme == 'Dark theme'
                ? uiLang.darkTheme
                : uiLang.whiteTheme,
            style: uiStyles.barTextTitle,
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle_rounded),
              iconSize: uiStyles.barIconSize,
              color: uiStyles.invertColorTheme,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              iconSize: uiStyles.barIconSize,
              color: uiStyles.invertColorTheme,
            ),
          ],
        ),
        body: Container(
          color: uiStyles.ColorTheme,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 20,
                ),
                bitBox.build(context),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    LogoImage(),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: BPMText(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UISizeButton(),
                    UIRitmButton(),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UIMinusButton(),
                    UISliderBPM(),
                    ButtonPlus(),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UIPlayButton(),
                    UITabButton(),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    UITimerConfig(),
                    UILinerProgress(),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
