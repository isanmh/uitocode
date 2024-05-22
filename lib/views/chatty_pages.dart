import 'package:flutter/material.dart';
import 'package:uitocode/themes/chatty_themes.dart';
import 'package:uitocode/widgets/chat_tile.dart';

class ChattyPages extends StatelessWidget {
  const ChattyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: greenColor,
          onPressed: () {
            Navigator.pushNamed(context, '/shoes');
          },
          child: Icon(
            Icons.add,
            size: 30,
            color: whiteColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        // body
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  'assets/images/pic.png',
                  height: 100,
                  width: 100,
                ),
                const SizedBox(height: 20),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: ligthBlueColor,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleText,
                      ),
                      // reusable widget
                      const ChatTile(
                        imageUrl: 'assets/images/friend1.png',
                        name: 'Joshuer',
                        text: 'Sorry, you’re not my ty...',
                        time: 'Now',
                      ),
                      const ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriella',
                        text: 'I saw it clearly and mig...',
                        time: '2:30',
                      ),
                      const SizedBox(height: 30),
                      Text(
                        'Groups',
                        style: titleText,
                      ),
                      const ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11:11',
                      ),
                      const ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Angga',
                        text: 'Here here we can go...',
                        time: '11:11',
                      ),
                      const ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11:11',
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
