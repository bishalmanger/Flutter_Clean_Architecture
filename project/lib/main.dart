import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
    runApp(const CleanArchitectureDemo());
}
class CleanArchitectureDemo extends StatelessWidget {
  const CleanArchitectureDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text("Counter App",
            style: TextStyle(fontFamily: 'Tagesschrift', fontWeight: FontWeight.w400),

          ),centerTitle: true,),
        ),
    );
  }
}
