import 'package:store_app/core/service/shared_pref/pref_keys.dart';
import 'package:store_app/core/service/shared_pref/shared_pref.dart';

class FontFamilyHelper{
  const FontFamilyHelper._();
  static const String arabicFont='Cairo';
  static const String englishFont='Poppins';
//TODO: switch arabic and english fonts
static String getFontFamily() {
  final currentLang = SharedPref().getString(PrefKeys.language) ?? PrefKeys.en;
  switch (currentLang) {
    case PrefKeys.ar:
      return arabicFont;
    case PrefKeys.en:
      return englishFont;
    default:
      return englishFont;
  }
}



}