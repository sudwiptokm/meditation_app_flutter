// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() =>
    runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCFE),
      body: Column(
        children: const [Header(), AvatarArea(), Content()],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff9B84A1),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Expanded(
              child: Text(
                'Settings',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
            Expanded(
              child: Text(
                'Profile',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
            ),
            Expanded(
              child: Text(
                "Logout",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AvatarArea extends StatelessWidget {
  const AvatarArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Container(height: 130, color: Color(0xff9B84A1)),
            Container(
              height: 135,
              color: Colors.white,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [ProfileInfo()]),
            ),
          ],
        ),
        Positioned(
            top: 30,
            child: CircleAvatar(
              radius: 82,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"),
                radius: 79,
              ),
            ))
      ],
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      Text(
        "Alex Monroe",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 30),
      ),
      Text("California, USA",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color(0xffA1A5AC),
              fontWeight: FontWeight.w500,
              fontSize: 16))
    ]);
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1529989659177-4b8629a6e85c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'),
        ),
      ),
    );
  }
}
