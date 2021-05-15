import 'package:flutter/material.dart';
import 'package:catcher/catcher.dart';
import 'package:sample_app/ui/video_page.dart';

void main() {
  //debug configuration
  CatcherOptions debugOptions =
      CatcherOptions(DialogReportMode(), [ConsoleHandler()]);

  //release configuration
  CatcherOptions releaseOptions = CatcherOptions(DialogReportMode(), [
    EmailManualHandler(["rajashah33@gmail.com"], printLogs: true)
  ]);
  Catcher(
    rootWidget: MyApp(),
    debugConfig: debugOptions,
    releaseConfig: releaseOptions,
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Catcher.navigatorKey,
      title: 'Humming Sparrow Sample App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: VideoPage(),
    );
  }
}
