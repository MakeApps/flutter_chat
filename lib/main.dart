import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';

import 'ChatHomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) {
        return brightness == Brightness.light
            ? ThemeData(
                primarySwatch: Colors.blue,
                
                backgroundColor: Colors.white,
                cardColor: Colors.blueGrey[50],
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.black,
                    decorationColor: Colors.blue,
                  ),
                ))
                
              
            : ThemeData(
                primarySwatch: Colors.blueGrey,
                backgroundColor: Colors.blueGrey[900],
                cardColor: Colors.blueGrey[700],
                primaryTextTheme: TextTheme(
                  button: TextStyle(
                    color: Colors.blueGrey[200],
                    decorationColor: Colors.blueGrey[50],
                  )),
                bottomAppBarColor: Colors.blueGrey[700],
                iconTheme: IconThemeData(color: Colors.blueGrey[200]),
                brightness: brightness,
              );
      },
      themedWidgetBuilder: (context, data) => MaterialApp(
        title: 'Messenger',
        theme: data,
        debugShowCheckedModeBanner: false,
      home: MessengerApp(),
    ));
  }
}

