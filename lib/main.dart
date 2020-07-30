import 'package:flutter/material.dart';
import 'package:zoom_0720/UI/homepage.dart';
import 'package:zoom_0720/UI/joinMeeting.dart';
import 'package:zoom_0720/UI/meetings.dart';
import 'package:zoom_0720/UI/scheduleMeeting.dart';
import 'package:zoom_0720/UI/settings.dart';
import 'package:zoom_0720/UI/startMeeting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScheduleMeeting();
  }
}
