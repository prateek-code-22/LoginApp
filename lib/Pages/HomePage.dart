import 'package:flutter/material.dart';
import 'package:welcomebuddy/Pages/WelcomePage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool changeButton = false;
  String name = " ";

  final _formKey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formKey.currentState.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      //edit 3: make tick back to rectangle button
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
      setState(() {
        changeButton = false;
      });
    }
  }

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
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset("assets/home.png", fit: BoxFit.cover),
                SizedBox(
                  height: 10.0,
                ),
                Text("Welcome $name!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            hintText: "Enter the Username",
                            labelText: "Username"),
                        //check username==null
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Username cannot be empty!";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter the Password",
                            labelText: "Password"),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password cannot be empty!";
                          } else if (value.length < 6) {
                            return "Password length must be of length 6";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                InkWell(
                  onTap: () => movetoHome(context),

                  //Edit 2: Implemented Animated Container in place of Elevated Button
                  child: AnimatedContainer(
                    width: changeButton ? 50 : 150.0,
                    height: 50.0,
                    alignment: Alignment.center,
                    duration: Duration(seconds: 1),
                    child: changeButton
                        ? Icon(
                            Icons.done_rounded,
                            color: Colors.white,
                            size: 30.0,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    decoration: BoxDecoration(
                      //shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                      color: Color(0xff00BFA6),
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                  ),
                ),

                //edi1 1
                /*ElevatedButton(
                onPressed: () {
                  print("Button pressed!");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                child: Text("Login"),
                style: TextButton.styleFrom(),
              )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
