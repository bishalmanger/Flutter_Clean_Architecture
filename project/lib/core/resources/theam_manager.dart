import 'package:flutter/material.dart';
import 'package:project/core/resources/color_manager.dart';
import 'package:project/core/resources/font_manager.dart';
import 'package:project/core/resources/styles_manager.dart';
import 'package:project/core/resources/value_manager.dart';

ThemeData getApplicationTheme()
{
   return ThemeData(
   //   main colors of the app
   primaryColor:  ColorManager.primaryBackgroundColor,
   primaryColorLight: ColorManager.primaryBackgroundColor,
   primaryColorDark: ColorManager.primaryBackgroundColor,


   disabledColor: ColorManager.primaryGrayColor, //Will be use for disabled button

   //Card view theme
   cardTheme: CardTheme(
      color: ColorManager.primaryWhiteColor,
      shadowColor: ColorManager.primaryGrayColor,
      elevation: AppSize.m8,
   ),


   //App bar theme
   appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primaryBackgroundColor,
      elevation: AppSize.m8,
      shadowColor: ColorManager.primaryBackgroundColor,
      titleTextStyle: getRegularStyle(color: ColorManager.primaryGrayColor),
   ),


   //Button theme
   buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      disabledColor: ColorManager.primaryGrayColor,
      buttonColor: ColorManager.primaryBackgroundColor,
      splashColor: ColorManager.primaryOpacity70,
   ),


   //Elevated button theme
   elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
         textStyle: getRegularStyle(color: ColorManager.primaryWhiteColor),
          backgroundColor: ColorManager.primaryBackgroundColor,
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppSize.m12))
      )
   ),

   //Text theme
   textTheme: TextTheme(
     headlineLarge: getSemiStyle(color: ColorManager.primaryGrayColor, fontSize: FontSize.s16),
      titleLarge: getMediumStyle(color: ColorManager.primaryGrayColor, fontSize: FontSize.s14),
      bodySmall: getRegularStyle(color: ColorManager.primaryGrayColor),
      bodyLarge: getRegularStyle(color: ColorManager.primaryGrayColor),
   ),
   //Input decoration theme (text form field)
   inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(AppPadding.m8),
      hintStyle: getRegularStyle(color: ColorManager.primaryGrayColor),

      // label style
      labelStyle: getRegularStyle(color: ColorManager.primaryGrayColor),

      // error style
      errorStyle: getRegularStyle(color: ColorManager.primaryRedColor),

      enabledBorder: OutlineInputBorder(
         borderSide: BorderSide(color: ColorManager.primaryGrayColor, width: AppSize.m8),
         borderRadius: BorderRadius.circular(AppSize.m8)
      ),
       focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(color: ColorManager.primaryGrayColor, width: AppSize.m8),
         borderRadius: BorderRadius.circular(AppSize.m8)
      ),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primaryRedColor, width: AppSize.m8),
          borderRadius: BorderRadius.circular(AppSize.m8)
      ),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.primary, width: AppSize.m8),
          borderRadius: BorderRadius.circular(AppSize.m8)
      )
   )
   );
}