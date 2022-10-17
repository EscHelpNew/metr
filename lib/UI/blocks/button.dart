import 'package:flutter/material.dart';
import 'package:metronome/Objects.dart';

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
        width: 80,
        height: 80,
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
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.black12),
          ),
          child: Column(
            children: [
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              Text('$cout'),
              Text('$metrLogic.getBeats')
            ],
          ),
        ),
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
