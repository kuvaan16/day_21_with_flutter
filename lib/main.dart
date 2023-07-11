import 'package:day_21_with_flutter/chatscreen.dart';
import 'package:flutter/material.dart';

import 'chatpage.dart';
import 'model/chats_model.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/chatpage': (context) => ChatPage(),
        '/chatScreen': (context) => ChatScreen(userChat: getUserChat[0]),
      },
    );
  }
}
