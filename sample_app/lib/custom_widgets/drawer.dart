import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_app/app_data.dart';
import 'package:sample_app/ui/home_page.dart';
import 'package:sample_app/ui/profile_page.dart';
import 'package:sample_app/ui/video_page.dart';
import 'package:sample_app/util/app_config.dart';

class MyDrawer extends StatelessWidget {
  AppData appData = AppData.instance;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
                appData.currentUser.fname + ' ' + appData.currentUser.lname),
            accountEmail: Text(appData.currentUser.email),
            currentAccountPicture: Container(
              child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/default_avatar.png')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_filled, color: AppConfig.primaryColor),
            title: Text("Home "),
            onTap: () async {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomePage()),
                  (Route<dynamic> route) => false);
            },
          ),
          ListTile(
            leading: Icon(Icons.video_library, color: AppConfig.primaryColor),
            title: Text("Videos"),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VideoPage()));
            },
          ),
          ListTile(
            leading: Icon(Icons.person, color: AppConfig.primaryColor),
            title: Text("Profile"),
            onTap: () async {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
      ),
    );
  }
}
