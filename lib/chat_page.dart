import 'package:chatapp/responsive.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';


import 'data.dart';

class SendMenuItems {
  String text;
  IconData icons;
  MaterialColor color;
  SendMenuItems(
      {@required this.text, @required this.icons, @required this.color});
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {


  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Color(0xff737373),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.indigo,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.file_present),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),
                                  Text('Document'),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.orange,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.headset),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),Text('Audio'),
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.pink,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.camera),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),Text('Camera'),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.green,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.location_on),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),Text('Location'),
                            ]),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.blue,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.photo_album),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),Text('Gallery'),
                              Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.purple,
                                  ),
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                    alignment: Alignment.center,
                                    icon: Icon(Icons.person),
                                    iconSize: 30,
                                    color: Colors.white,
                                    onPressed: () {},
                                  )),Text('Contact'),
                            ]),
                      ])));
        });
  }
String _colorName = 'No';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                backgroundColor: Colors.blue,
                elevation: 0,
                leading: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                title: Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQkrnluQdJgOwT-G9V5EkCI3yzjXmJ1gBAeQA&usqp=CAU"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Pratiksha",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Active now",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 14),
                        )
                      ],
                    )
                  ],
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.white,
                      size: 25,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.video_call_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              )
            : AppBar(),
        body: Stack(children: [
          getBody(),
       
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                  padding: EdgeInsets.only(left: 16, bottom: 10),
                  height: 80,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(children: <Widget>[
                    Container(
                        height: 100,
                        width: 120,
                      
                        child: 

                    CircularMenu(
                      toggleButtonSize: 20.0,
                  
                      radius: 100,
                     alignment: Alignment.bottomLeft,
                      items: [
                      CircularMenuItem(
                icon: Icons.file_present,
                iconSize: 30,
                color: Colors.green,
               
                onTap: () { }),
            CircularMenuItem(
                icon: Icons.location_pin,
                iconSize: 30,
                color: Colors.blue,
                onTap: () {
                  
                }),
            CircularMenuItem(
                icon: Icons.headset,
                iconSize: 30,
                color: Colors.orange,
                onTap: () {
                  
                }),
                CircularMenuItem(
                icon: Icons.person,
                iconSize: 30,
                color: Colors.purple,
                onTap: () {
                  
                }),
                    ],)),
                   /* GestureDetector(
                      onTap: () {
                        
                       showModal();
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),*/
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.lightBlue[100],
                        decoration: InputDecoration(
                          hintText: "Type message...",
                          hintStyle: TextStyle(color: Colors.grey.shade500),
                          border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                  const Radius.circular(30.0))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ])))
        ]));
  }

  Widget getBody() {
    return ListView(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 80),
      children: List.generate(messages.length, (index) {
        return ChatBubble(
            isMe: messages[index]['isMe'],
            messageType: messages[index]['messageType'],
            message: messages[index]['message']);
      }),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String message;
  final int messageType;
  const ChatBubble({
    Key key,
    this.isMe,
    this.message,
    this.messageType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isMe) {
      return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.blue),
                    color: Colors.white,
                    borderRadius: getMessageType(messageType)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: EdgeInsets.all(1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQkrnluQdJgOwT-G9V5EkCI3yzjXmJ1gBAeQA&usqp=CAU'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 15,
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[100],
                    borderRadius: getMessageType(messageType)),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    message,
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }
  }

  getMessageType(messageType) {
    if (isMe) {
      if (messageType == 1) {
        return BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30));
      } else if (messageType == 2) {
        return BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30));
      } else if (messageType == 3) {
        return BorderRadius.only(
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(30),
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(30));
      } else {
        return BorderRadius.all(Radius.circular(30));
      }
    } else {
      if (messageType == 1) {
        return BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30));
      } else if (messageType == 2) {
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(5),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30));
      } else if (messageType == 3) {
        return BorderRadius.only(
            topLeft: Radius.circular(5),
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30));
      } else {
        return BorderRadius.all(Radius.circular(30));
      }
    }
  }
}
