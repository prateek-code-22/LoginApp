import 'package:flutter/material.dart';
import 'package:welcomebuddy/Pages/WelcomePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff00BFA6),
        shadowColor: Colors.blueGrey,
        elevation: 5.0,
        title: Text(
          "Login App",
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset("assets/home.png", fit: BoxFit.cover),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Welcome to login page!",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter the Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter the Password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                print("Button pressed!");
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
              child: Text("Login"),
              style: TextButton.styleFrom(),
            )
          ],
        ),
      ),
    );
  }
}
