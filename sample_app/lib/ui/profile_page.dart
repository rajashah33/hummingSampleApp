import 'package:flutter/material.dart';
import 'package:sample_app/app_data.dart';
import 'package:sample_app/custom_widgets/drawer.dart';
import 'package:sample_app/util/popups.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final postTextCtrl = TextEditingController();
  AppData appData = AppData.instance;
  List statusList = [];

  bool _enableEdit = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              color: Color.fromRGBO(232, 232, 232, 1),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                        'https://picsum.photos/id/1/200/200',
                      ),
                    ),
                    Text(
                      appData.currentUser.fname +
                          ' ' +
                          appData.currentUser.lname,
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    RaisedButton(
                        child: Text('Edit Profile'),
                        onPressed: () {
                          setState(() {
                            _enableEdit = true;
                          });
                        })
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // hintText: 'Sadhupatti, GHY',
                              labelText: 'Location',
                            ),
                            initialValue: appData.currentUser.location,
                            enabled: _enableEdit,
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // hintText: '785694',
                              labelText: 'Pincode',
                            ),
                            initialValue: appData.currentUser.pincode,
                            enabled: _enableEdit,
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // hintText: '785694',
                              labelText: 'Date of Birth',
                            ),
                            initialValue: appData.currentUser.dob,
                            enabled: _enableEdit,
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // hintText: '785694',
                              labelText: 'Gender',
                            ),
                            initialValue: appData.currentUser.gender,
                            enabled: _enableEdit,
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              // hintText: '785694',
                              labelText: 'Whatsapp',
                            ),
                            initialValue: '+91- ' + appData.currentUser.phone,
                            enabled: _enableEdit,
                          ),
                        ),
                        Container(
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              hintText: 'someone@email.com',
                              labelText: 'Email',
                            ),
                            initialValue: appData.currentUser.email,
                            enabled: _enableEdit,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            RaisedButton(
                                child: Text('Save'),
                                onPressed: () {
                                  setState(() {
                                    _enableEdit = false;
                                    CustomPopups().showMessageFlushbar(
                                        context, 'Saved', null);
                                  });
                                  // code for saving
                                })
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
