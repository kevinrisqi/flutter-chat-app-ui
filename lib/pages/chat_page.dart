import 'dart:ui';

import 'package:cashy/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:cashy/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/me.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                      fontSize: 16,
                      color: lightBlueColor,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends', style: titleTextStyle),
                      ChatTile(
                        imageUrl: "assets/images/friend1.png",
                        name: "Joshuer",
                        text: "Sorry, you're not my best friend",
                        time: "NOW",
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: "assets/images/friend2.png",
                        name: "Gabriella",
                        text: "I saw it clearly",
                        time: "13.12",
                        unread: false,
                      ),
                      SizedBox(height: 30),
                      Text(
                        "Groups",
                        style: titleTextStyle,
                      ),
                      ChatTile(
                          imageUrl: "assets/images/group1.png",
                          name: "Jakarta Fair",
                          text: "Why does Everyone",
                          time: "11:11",
                          unread: false),
                      ChatTile(
                          imageUrl: "assets/images/group2.png",
                          name: "Angga",
                          text: "Here we go again",
                          time: "7:11",
                          unread: true),
                      ChatTile(
                          imageUrl: "assets/images/group3.png",
                          name: "Bentley",
                          text: "The car is most expensive",
                          time: "5:11",
                          unread: true),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
