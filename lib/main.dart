import 'package:assignment_task/profile.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: FeedPage(),
      home: Profile(),
    );
  }
}
