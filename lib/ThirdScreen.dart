import 'dart:async';

import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third Screen"),
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: CircleAvatar(child: Text("NP")),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/WP.jpeg"),
            title: Text("Hello"),
            subtitle: Text("I am subtitle"),
            trailing: Icon(Icons.arrow_right_alt_outlined),
            onTap: () {
              print("welcome");
            },
            onLongPress: () {
              print("welcome again");
            },
          ),
        ],
      ),
    );
  }
}