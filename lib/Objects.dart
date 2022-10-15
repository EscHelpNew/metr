import 'MainLogic/MetrLogic.dart';
import 'logging/logging.dart';
import 'UI/styleUI.dart';
import 'UI/lang/lang.dart';
import 'dart:io';

var metrLogic = MetrLogic(65, 30, 150); //основная логика приложения
var uiStyles = UIStyles(theme: 'dark'); //стили приложения
// var log = Loggging(
//     printConsole: true,
//     printFile: true,
//     pathWay: './assets/log',
//     nameFileLog: 'logfile.txt');
var uiLang = UILang(lang: 'En'); // тексты приложения
//var myFile = File('file.txt');
