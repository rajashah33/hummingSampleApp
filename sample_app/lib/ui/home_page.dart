import 'package:flutter/material.dart';
import 'package:sample_app/app_data.dart';
import 'package:sample_app/custom_widgets/drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AppData appData = AppData.instance;

  final postTextCtrl = TextEditingController();
  List statusList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  for (var i = 0; i < 15; i++)
                    Container(
                      margin: EdgeInsets.all(12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/id/1/200/200',
                              height: 120.0,
                              width: 120.0,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Container(
                            child: Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'This is Heading of the realted new ws this is Heading which must be bold',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'This is Heading of the realted new ws this is an another Heading of the This is Heading of the realted new ws this is an another ',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.calendar_today_rounded),
                                          SizedBox(width: 10),
                                          Text('03-03-2021'),
                                        ],
                                      ),
                                      Container(
                                        padding:
                                            EdgeInsets.fromLTRB(15, 0, 15, 0),
                                        color: Colors.deepOrange,
                                        child: Text(
                                          'Sports',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      InkWell(
                                        child: Icon(
                                            Icons.bookmark_border_outlined),
                                        onTap: () {},
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
