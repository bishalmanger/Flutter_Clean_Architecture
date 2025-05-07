import 'dart:ui';

import 'font_manager.dart';

TextStyle _getTextStyle(double fontSize, String fontFamily, Color color, FontWeight fontWeight)
{
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
      color: color
    );
}

TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color})
{
   return _getTextStyle(fontSize, FontFamilyManager.fontFamily, color, FontWeightManager.light);
}


TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color})
{
   return _getTextStyle(fontSize, FontFamilyManager.fontFamily, color, FontWeightManager.regular);
}


TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color})
{
   return _getTextStyle(fontSize, FontFamilyManager.fontFamily, color, FontWeightManager.medium);
}


TextStyle getSemiStyle({double fontSize = FontSize.s12, required Color color})
{
   return _getTextStyle(fontSize, FontFamilyManager.fontFamily, color, FontWeightManager.semiBold);
}

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color})
{
   return _getTextStyle(fontSize, FontFamilyManager.fontFamily, color, FontWeightManager.bold);
}