
import 'package:flutter/material.dart';
import 'package:ifitness/widgets/control_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'iFitness',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xfff8f8f8),


        ),
        home: Scaffold(
            body: ControlScreen()),
            


    );
  }
}


