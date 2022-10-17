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
                Container(
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    bitBox,
                    bitBox,
                    bitBox,
                    bitBox,
                    //ColorBox(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                ),
                Column(
                  children: [
                    Container(
                      child: const Icon(
                        Icons.account_balance,
                        size: 40,
                      ),
                    ),
                    Center(
                      child: Container(
                        child: Text(
                          'This could be your ad',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColorBox(),
                    ColorBox(),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                ),
                Center(
                  child: Container(
                    child: const Text(
                      'BPM',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: const Center(
                        child: ButtonPlus(),
                      ),
                    ),
                    const bpmText(),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColorBox(),
                    ColorBox(),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
