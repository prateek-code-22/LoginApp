import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final url =
      "https://scontent.fccu13-1.fna.fbcdn.net/v/t1.6435-9/p843x403/151244771_1407520196124711_5518540022035966800_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=e3f864&_nc_ohc=5WvWVpHMGlcAX-QZwyN&_nc_ht=scontent.fccu13-1.fna&tp=6&oh=570f6dbd19d911761b124ff65f1fb18e&oe=60C37324";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff00BFA6),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
                accountName: Text("Prateek Singh"),
                accountEmail: Text("prateeksingh@gmail.com"),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
