import 'package:flutter/material.dart';
import 'package:sample_app/app_data.dart';
import 'package:sample_app/custom_widgets/drawer.dart';
import 'package:sample_app/custom_widgets/video_wrapper.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  AppData appData = AppData.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'),
      ),
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            VideoWrapper(
              videoPlayerController:
                  VideoPlayerController.asset('assets/m3.mp4'),
              looping: true,
            ),
            Flexible(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'This is Heading of the realted new ws this is Heading which must be bold',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 16),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Time & Date here',
                          maxLines: 2,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'This is Heading of the realted new ws this is Heading which must be bold',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                            width: double.infinity,
                            child: RaisedButton(
                              onPressed: () {},
                              child: Text('Information'),
                            ))
                      ],
                    ),
                  ),
                  for (var i = 0; i < 15; i++)
                    Container(
                      margin: EdgeInsets.all(8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              'https://picsum.photos/id/1/200/135',
                              height: 120.0,
                              width: 120.0,
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Flexible(
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
                                      fontSize: 15),
                                ),
                                SizedBox(height: 5),
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
                                          EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      color: Colors.deepOrange,
                                      child: Text(
                                        'Info',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    // Icon(Icons.bookmark_border_outlined),
                                  ],
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
          ],
        ),
      ),
    );
  }
}
