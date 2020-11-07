
import 'package:chatapp/practice.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/responsive.dart';
import 'package:flutter/rendering.dart';

import 'ChatScreen.dart';
import 'PopupMenuConstants.dart';


class MessengerApp extends StatefulWidget {
  @override
  
  _MessengerAppHomeState createState() => _MessengerAppHomeState();
}


class _MessengerAppHomeState extends State<MessengerApp> with
  SingleTickerProviderStateMixin{
    TabController _tabController;
    bool showFab = true;
  @override
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
            ?AppBar(                                    //SmallScreen

        title: Text('Messenger'),
        elevation: 0.7,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            new Tab(icon: Icon(Icons.chat)),
            new Tab(icon:Icon(Icons.call)),
            new Tab(icon:Icon(Icons.notifications))
          ],

        ),
        actions: <Widget>[
           IconButton(
                  icon: Icon(Icons.brightness_6),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    DynamicTheme.of(context).setBrightness(
                        Theme.of(context).brightness == Brightness.dark
                            ? Brightness.light
                            : Brightness.dark);
                    print(Theme.of(context).brightness);}),
         //IconButton(icon:Icon(Icons.search), onPressed: () {  },),
           
      
          
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
         PopupMenuButton<String>(
                                //onSelected: choiceAction,
                                itemBuilder: (BuildContext context) {
                              return Constants.choices.map((String choice) {
                                return PopupMenuItem<String>(
                                  mouseCursor: MouseCursor.defer,
                                  value: choice,
                                  child: Text(choice),
                                );
                              }).toList();
                            })
        ],
      
      ):AppBar(
        
      ),
      
      body: ResponsiveWidget.isSmallScreen(context)?TabBarView(
        controller: _tabController,
        children: <Widget>[
          ChatScreen(),
           ChatScreen(),
            ChatScreen(),
            
        ],
    ):Container(child:
      ChatScreen(),
    ),
    

    floatingActionButton:FloatingActionButton(
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Practice()));},
        child: Icon(Icons.chat) ,
    ));
  }
}