import 'package:flutter/material.dart';
import 'package:twentyone/Screens/Create_Room.dart';
import 'package:twentyone/Screens/Join_Room.dart';
import 'package:twentyone/home.dart';

import 'Widgets/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '21',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgcolor, primaryColor: Colors.purple),
      routes: {
        MainMenu.routeName: (context) => MainMenu(),
        CreateRoom.routeName: ((context) => CreateRoom()),
        JoinRoom.routeName: (context) => JoinRoom()
      },
      initialRoute: MainMenu.routeName,
    );
  }
}
