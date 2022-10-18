import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:metronome/Objects.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonPlus extends StatefulWidget {
  const ButtonPlus({Key key}) : super(key: key);

  @override
  State<ButtonPlus> createState() => _ButtonPlusState();
}

int cout = 1;

class _ButtonPlusState extends State<ButtonPlus> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        //color: Colors.amber,
        width: 65,
        height: 65,
        child: ElevatedButton(
            onPressed: () => {
                  setState(() {
                    cout++;
                    metrLogic.addBeat();
                  }),
                },
            onLongPress: () => {
                  setState(() {
                    cout--;
                  })
                },
            child: FaIcon(FontAwesomeIcons.plus)),
      ),
    );
  }
}

class bpmText extends StatefulWidget {
  const bpmText({Key key}) : super(key: key);

  @override
  State<bpmText> createState() => _bpmTextState();
}

class _bpmTextState extends State<bpmText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('$cout'),
    );
  }
}

class UISizeButton extends StatefulWidget {
  const UISizeButton({Key key}) : super(key: key);

  @override
  State<UISizeButton> createState() => _UISizeButtonState();
}

class _UISizeButtonState extends State<UISizeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('${metrLogic.size[0]}/${metrLogic.size[1]}'),
      ),
    );
  }
}

class UIRitmButton extends StatefulWidget {
  const UIRitmButton({Key key}) : super(key: key);

  @override
  State<UIRitmButton> createState() => _UIRitmButtonState();
}

class _UIRitmButtonState extends State<UIRitmButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      child: ElevatedButton(
        onPressed: () {},
        child: Text('${metrLogic.ritmSize[1]}'),
      ),
    );
  }
}

class UIMinusButton extends StatefulWidget {
  const UIMinusButton({Key key}) : super(key: key);

  @override
  State<UIMinusButton> createState() => _UIMinusButtonState();
}

class _UIMinusButtonState extends State<UIMinusButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 65,
        width: 65,
        child: ElevatedButton(
          onPressed: () {},
          child: const FaIcon(FontAwesomeIcons.minus),
        ),
      ),
    );
  }
}

class UIPlayButton extends StatefulWidget {
  const UIPlayButton({Key key}) : super(key: key);

  @override
  State<UIPlayButton> createState() => _UIPlayButtonState();
}

class _UIPlayButtonState extends State<UIPlayButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      child: ElevatedButton(
        onPressed: () {},
        child: const FaIcon(FontAwesomeIcons.play),
      ),
    );
  }
}

class UITabButton extends StatefulWidget {
  const UITabButton({Key key}) : super(key: key);

  @override
  State<UITabButton> createState() => _UITabButtonState();
}

class _UITabButtonState extends State<UITabButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 65,
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Tab'),
      ),
    );
  }
}

class UITimerConfig extends StatefulWidget {
  const UITimerConfig({Key key}) : super(key: key);

  @override
  State<UITimerConfig> createState() => _UITimerConfigState();
}

class _UITimerConfigState extends State<UITimerConfig> {
  final double _btnHeight = 30;
  final double _btnWidth = 90;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: _btnHeight,
            width: _btnWidth,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                '3 Min',
                style: uiStyles.TimerStyle,
              ),
            ),
          ),
          Container(
            height: _btnHeight,
            width: _btnWidth,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                '4 Min',
                style: uiStyles.TimerStyle,
              ),
            ),
          ),
          Container(
            height: _btnHeight,
            width: _btnWidth,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                '5 Min',
                style: uiStyles.TimerStyle,
              ),
            ),
          ),
          Container(
            height: _btnHeight,
            width: _btnWidth,
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                children: [
                  Text(
                    'Auto ',
                    style: uiStyles.TimerStyle,
                  ),
                  const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
