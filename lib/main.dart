import 'package:flutter/material.dart';
import 'package:todo_app/ui/home/home_screen.dart';
import 'package:todo_app/ui/mytheme.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp( MyApplection());

}


class MyApplection extends StatelessWidget{
 @override
  Widget build(BuildContext context) {

    return MaterialApp(
        routes: {
          HomeScreen.routeName : (_)=>HomeScreen(),
        },

        initialRoute: HomeScreen.routeName,

        theme: MyTheme.lightTheme,


    );


  }

}