import 'package:flutter/material.dart';
import 'package:welcomebuddy/Widgets/drawer.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome Page"),
      ),
      body: Center(
        child: Image.asset("assets/welcome.png"),
      ),
      drawer: MyDrawer(),
    );
  }
}
