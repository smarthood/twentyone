import 'package:flutter/material.dart ';
import 'package:twentyone/Screens/Create_Room.dart';
import 'package:twentyone/Screens/Join_Room.dart';
import 'package:twentyone/Widgets/Custom_Button.dart';
import 'package:twentyone/Widgets/Responsive.dart';

class MainMenu extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenu({super.key});
  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoom.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoom.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Responsive(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
                onTap: () {
                  createRoom(context);
                },
                text: "Create Room"),
            SizedBox(
              height: 10,
            ),
            CustomButton(
                onTap: () {
                  joinRoom(context);
                },
                text: "Join Room"),
          ],
        ),
      ),
    ));
  }
}
