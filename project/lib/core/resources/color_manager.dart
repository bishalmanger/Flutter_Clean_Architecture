import 'dart:ui';

class ColorManager
{
  // static Color primaryBackgroundColor = const Color(0x00ed9728);
  // const Color kTextColour = Color(0xff3a3a3a);


  static Color primaryBackgroundColor = HexColor.fromHex('#ED9728');
  static Color primaryGrayColor = HexColor.fromHex('#ECF9FA');
  static Color primaryWhiteColor = HexColor.fromHex('#F9F6F1');
  static Color primaryOpacity70 = HexColor.fromHex('#F9F6F1').withOpacity(0.70);
  static Color primaryRedColor = HexColor.fromHex('#FF5C59');
  static Color primary = HexColor.fromHex('#4e45bf');
}
extension HexColor on Color
{
    static Color fromHex(String hexColorString)
    {
        hexColorString = hexColorString.replaceAll('#', '');
        if(hexColorString.length == 6)
          {
             hexColorString = "FF$hexColorString";
          }
        return Color(int.parse(hexColorString, radix: 16));
    }
}