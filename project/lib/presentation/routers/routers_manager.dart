import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/core/constants/app_string.dart';
import 'package:project/presentation/forget_password/forget_password.dart';
import 'package:project/presentation/login/login.dart';
import 'package:project/presentation/main/main_screen.dart';
import 'package:project/presentation/onbording/onbording_screen.dart';
import 'package:project/presentation/registration/registration.dart';
import 'package:project/presentation/splash/splash_screen.dart';
import 'package:project/presentation/store_details/store_details.dart';

class Routes
{
   static const String splashRoute = '/';
   static const String onBoardingRoute = '/onboarding';
   static const String loginRoute = '/loginRoute';
   static const String registerRoute = '/registerRout';
   static const String forgetPassword = '/forgetPassword';
   static const String mainRoute = '/mainRoute';
   static const String storeDetailsRoute = '/storeDetails';
}

class RouteGenerator
{
    static Route<dynamic> getRoute(RouteSettings routeSettings)
    {
        switch(routeSettings.name)
            {
               case Routes.splashRoute: return MaterialPageRoute(builder: (_) => SplashScreen());
               case Routes.loginRoute: return MaterialPageRoute(builder: (_) => Login());
               case Routes.onBoardingRoute: return MaterialPageRoute(builder: (_) => OnbordingScreen());
               case Routes.registerRoute: return MaterialPageRoute(builder: (_) => Registration());
               case Routes.forgetPassword: return MaterialPageRoute(builder: (_) => ForgetPassword());
               case Routes.mainRoute: return MaterialPageRoute(builder: (_) => MainScreen());
               case Routes.storeDetailsRoute: return MaterialPageRoute(builder: (_) => StoreDetails());
               default: return UnDefinedRoute();
            }
    }

    static Route<dynamic> UnDefinedRoute()
    {
       return MaterialPageRoute(builder: (_) => Scaffold(
         appBar: AppBar(title: const Text(AppStrings.noRouteFound),),
         body: const Center(child: Text(AppStrings.noRouteFound),),
       ));
    }
}