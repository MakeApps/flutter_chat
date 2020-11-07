import 'package:chatapp/responsive.dart';
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Message_bar.dart';
import 'PopupMenuConstants.dart';
import 'chat_page.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

   
        return Scaffold(
            body: ResponsiveWidget.isSmallScreen(context)
                ? ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i) => new Card(
                          child: InkWell(
                              onTap: () {},
                              child: new ListTile(
                                leading: new CircleAvatar(
                                  foregroundColor: Theme.of(context).primaryColor,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: new NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQkrnluQdJgOwT-G9V5EkCI3yzjXmJ1gBAeQA&usqp=CAU'),
                                ),
                                title: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text('Pratiksha'),
                                    new Text('10.00'),
                                  ],
                                ),
                                subtitle: new Container(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child: new Text(
                                    'message',
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ChatPage()));
                                },
                              )),
                        ))
                : Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      Row(
                        children: [
                          Padding(
                              padding:
                                  EdgeInsets.only(top: 20, left: 30, right: 150),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                backgroundImage:
                                    AssetImage('assets/aspirelogo.png'),
                              )),
                          Padding(
                              padding: EdgeInsets.only(right: 50),
                              child: Icon(Icons.chat)),
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
                          ]
                        
                      ),
                      SizedBox(height: 30),
                      Expanded(
                          child: SizedBox(
                           
                        width: 400,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 15,
                              itemBuilder: (context, index) {
                                return Card(
                                    margin: EdgeInsets.only(
                                        top: 5.0,
                                        bottom: 5.0,
                                        left: 20,
                                        right: 5
                                        ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: InkWell(
                                            onTap: _incrementCounter,
                                            child: ListTile(
                                                leading: CircleAvatar(
                                                  foregroundColor:
                                                      Theme.of(context)
                                                          .primaryColor,
                                                  backgroundColor: Colors.grey,
                                                backgroundImage: new NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQkrnluQdJgOwT-G9V5EkCI3yzjXmJ1gBAeQA&usqp=CAU'),
                                                ),
                                                title: new Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    new Text('Pratiksha'),
                                                    new Text('10.00'),
                                                  ],
                                                ),
                                                subtitle: new Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 5.0),
                                                    child: new Text(
                                                      'message',
                                                    ))))));
                              })))]),
                ResponsiveWidget.isLargeScreen(context)?Row(children: [
                  Container(
                      height: deviceHeight * 0.90,
                      width: deviceWidth * 0.65,
                      child: Stack(children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/background.png',
                                    ),
                                    fit: BoxFit.cover))),
                        Column(
                          children: [
                            Expanded(
                              child:
                              
                              Text(  '$_counter',
              style: Theme.of(context).textTheme.headline4) /*ListView.builder(
                                itemCount: 10,
                                itemBuilder:
                                    (BuildContext context, int index) {},
                              ),*/
                            ),
                            MessageEditBar(),
                          ],
                        )
                      ]))
                 ]):Row(children: [
                  Container(
                      height: deviceHeight * 0.90,
                      width: deviceWidth * 0.60,
                      child: Stack(children: <Widget>[
                        Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/background.png',
                                    ),
                                    fit: BoxFit.cover))),
                        Column(
                          children: [
                            Expanded(
                              child:
                              
                              Text(  '$_counter',
              style: Theme.of(context).textTheme.headline4) 
                              
                            ),
                            MessageEditBar(),
                          ],
                        )
                      ]))
                 ])]));
  }
}
