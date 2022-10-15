// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'dart:io';

class Loggging {
  bool _printConsole = false;
  bool _printFile = false;
  bool _printWebConsole = false;

  bool errLogEn = true;
  bool warningLogEn = false;
  bool infoLogEn = true;

  String _pathWay;
  String _nameFileLog;

  Loggging(
      {printConsole = false,
      printFile = false,
      printWebConsole = false,
      pathWay = './',
      nameFileLog = 'myFileLog.txt'}) {
    _printConsole = printConsole;
    _printFile = printFile;
    _printWebConsole = printWebConsole;

    _pathWay = pathWay;
    _nameFileLog = nameFileLog;
    File('$_pathWay$_nameFileLog').create();
  }

  void err(dynamic v1, [dynamic v2, dynamic v3, dynamic v4]) {
    _outputSelect('ERROR', v1, v2, v3, v4);
  }

  void warning(dynamic v1, [dynamic v2, dynamic v3, dynamic v4]) {
    _outputSelect('WARNING', v1, v2, v3, v4);
  }

  void debug(dynamic v1, [dynamic v2, dynamic v3, dynamic v4]) {
    if (kDebugMode == true) {
      _outputSelect('DEBUG', v1, v2, v3, v4);
    }
  }

  void info(dynamic v1, [dynamic v2, dynamic v3, dynamic v4]) {
    _outputSelect('INFO', v1, v2, v3, v4);
  }

  void _outputSelect(dynamic event, dynamic v1,
      [dynamic v2, dynamic v3, dynamic v4]) {
    if (_printConsole != false) {
      _printColsole(event, v1, v2, v3, v4);
    }
    if (_printFile != false) {
      _fPrintFile(event, v1, v2, v3, v4);
    }
    if (_printWebConsole != false) {
      _fPrintWebConsole(event, v1, v2, v3, v4);
    }
  }

  void _printColsole(dynamic event, dynamic v1,
      [dynamic v2, dynamic v3, dynamic v4]) {
    var time = DateTime.now();

    if (v1 != null && v2 == null) {
      print('[${time.toString()}][$event] {$v1}');
    } else if (v1 != null && v2 != null && v3 == null) {
      print('[${time.toString()}][$event] {$v1} {$v2}');
    } else if (v1 != null && v2 != null && v3 != null && v4 == null) {
      print('[${time.toString()}][$event] {$v1} {$v2} {$v3}');
    } else {
      print('[${time.toString()}][$event] {$v1} {$v2} {$v3} {$v4}');
    }
  }

  void _fPrintFile(dynamic event, dynamic v1,
      [dynamic v2, dynamic v3, dynamic v4]) {
    //  File('$_pathWay$_nameFileLog').writeAsString("contents11");
  }

  void _fPrintWebConsole(dynamic event, dynamic v1,
      [dynamic v2, dynamic v3, dynamic v4]) {}
}
