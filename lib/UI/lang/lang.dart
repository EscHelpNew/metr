import 'en.dart' as en;
import 'ru.dart' as ru;

// TODO: make singltote
class UILang {
  String lang;
  String darkTheme;
  String whiteTheme;
  String otherText;

  UILang({String lang = 'En'}) {
    if (lang == 'En') {
      parsingMap(en.langMap);
    } else if (lang == 'Ru') {
      parsingMap(ru.langMap);
    } else {}
  }

  parsingMap(Map<String, dynamic> fLang) {
    lang = fLang["lang"];
    darkTheme = fLang["darkTheme"];
    whiteTheme = fLang["whiteTheme"];
    otherText = fLang["text"];
  }
}
