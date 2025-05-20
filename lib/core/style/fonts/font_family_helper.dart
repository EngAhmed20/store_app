class FontFamilyHelper{
  const FontFamilyHelper._();
  static const String arabicFont='Cairo';
  static const String englishFont='Poppins';
//TODO: switch arabic and english fonts
static String getFontFamily() {
  final lang = 'en';
  switch (lang) {
    case 'ar':
      return arabicFont;
    case 'en':
      return englishFont;
    default:
      return arabicFont;
  }
}



}