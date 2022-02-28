import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/home_screen.dart';

void main() {
  runApp(  MyApp());
}

class MyApp extends StatelessWidget {
  
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,  
       //primaryColor: Colors.red,
       textTheme:  Theme.of(context).textTheme.apply(bodyColor: kTextColor),
       visualDensity: VisualDensity.adaptivePlatformDensity,
      primarySwatch: Colors.green
        
      ),
      
      home: HomeScreen(),
    );
  }
}

