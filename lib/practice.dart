import 'package:chatapp/responsive.dart';
import 'package:flutter/material.dart';

class Practice extends StatefulWidget {
  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
 

  
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(

      body: ResponsiveWidget.isLargeScreen(context)?
      Container(
        height: deviceHeight,
        width: deviceWidth,
        child: 
      Row(children:[

        Column(children:[
          Container(
            height: 500,
            width: 500,
            color: Colors.red,)
        ]),
        Column(children:[
          Row(children: [Container(height: 50,width:500,color:Colors.blue)],),
          Container(
            height: 500,
            width: 500,
            color: Colors.green,)
        
        ]),
      ])
      ,
      
    ):ResponsiveWidget.isMediumScreen(context)?Container(
        height: deviceHeight,
        width: deviceWidth,
        child: 
      Row(children:[

        Column(children:[
          Container(
            height: 500,
            width: 400,
            color: Colors.red,)
        ]),
        Column(children:[
          Row(children: [Container(height: 50,width:400,color:Colors.blue)],),
          Container(
            height: 500,
            width: 300,
            color: Colors.green,)
        
        ]),
      ])
    ):ResponsiveWidget.isSmallScreen(context)?Container(
      height: deviceHeight,
        width: deviceWidth,
        child: 
      Row(children:[

        Column(children:[
          Container(
            height: 500,
            width: 100,
            color: Colors.red,)
        ]),
        Column(children:[
          Row(children: [Container(height: 50,width:400,color:Colors.blue)],),
          Container(
            height: 500,
            width: 100,
            color: Colors.green,)
        
        ]),
      ])

    ):Container());
  }
}