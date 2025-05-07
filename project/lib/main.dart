import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/core/resources/theam_manager.dart';
import 'package:project/presentation/routers/routers_manager.dart';

void main()
{
    runApp(const CleanArchitectureDemo());
}
class CleanArchitectureDemo extends StatelessWidget {
  const CleanArchitectureDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false
    );
  }
}
