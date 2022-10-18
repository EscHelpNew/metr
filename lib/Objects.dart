import 'MainLogic/MetrLogic.dart';
import 'logging/logging.dart';
import 'UI/styleUI.dart';
import 'UI/lang/lang.dart';
import 'UI/blocks/other_obj.dart';
import 'UI/blocks/button.dart';

var metrLogic = MetrLogic(65, 30, 150); //основная логика приложения
var log = Loggging(
    printConsole: true,
    printFile: false,
    pathWay: './assets/log',
    nameFileLog: 'logfile.txt');

//UI obj
var uiStyles = UIStyles(theme: 'dark'); //стили приложения
var uiLang = UILang(lang: 'En'); // тексты приложения
var bitBox = BitBox(
  width: 60,
  height: 18,
  numBlock: 4,
);


