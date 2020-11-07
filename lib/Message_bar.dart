import 'package:chatapp/responsive.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MessageEditBar extends StatefulWidget {
  MessageEditBar();

  @override
  _MessageEditBarState createState() => _MessageEditBarState();
}

class _MessageEditBarState extends State<MessageEditBar> {
  TextEditingController _sendMessageController = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            width: deviceWidth,
            height: 70,
            color: Colors.transparent,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    Row(children: [
                  IconButton(
                      icon: Icon(Icons.add_circle),
                      iconSize: 30,
                      color: Colors.blue,
                      onPressed: () {}),
                  Container(
                    width: (MediaQuery.of(context).size.width - 150),
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextField(
                      cursorColor: Colors.lightBlue[100],
                      controller: _sendMessageController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                                const Radius.circular(30.0))),
                        hintText: "Aa",
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Material(
                    elevation: 2,
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    color: Theme.of(context).primaryColor,
                    child: IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ])))
        : Container();
  }
}
