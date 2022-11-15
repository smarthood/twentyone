import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:twentyone/Widgets/Responsive.dart';

import '../Widgets/Custom_Text.dart';

class TwentyoneBoard extends StatefulWidget {
  const TwentyoneBoard({Key? key}) : super(key: key);

  @override
  _TwentyoneBoardState createState() => _TwentyoneBoardState();
}

class _TwentyoneBoardState extends State<TwentyoneBoard> {
  int count = 0;
  late bool isIncButtonDisable;
  late bool isDecButtonDisable;
  @override
  void initState() {
    isIncButtonDisable = false;
    isDecButtonDisable = true;
  }

  @override
  void increment() {
    setState(() {
      if (count == -1) {
        isDecButtonDisable = true;
      } else {
        isDecButtonDisable = false;
      }
      count++;
    });
    print(count);
  }

  @override
  void decrement() {
    setState(() {
      if (count <= 1) {
        isDecButtonDisable = true;
      } else {
        isDecButtonDisable = false;
      }
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: isIncButtonDisable ? null : increment,
                  iconSize: 100,
                  icon: Icon(
                    Icons.arrow_drop_up,
                  )),
              CustomText(shadows: [
                Shadow(
                  blurRadius: 40,
                  color: Colors.purple,
                )
              ], text: '$count', fontSize: 120),
              IconButton(
                  onPressed: isDecButtonDisable ? null : decrement,
                  iconSize: 100,
                  icon: Icon(
                    Icons.arrow_drop_down,
                  )),
              TextButton(
                onPressed: () {},
                child: Text("Pass"),
                style: TextButton.styleFrom(
                    primary: Colors.white, backgroundColor: Colors.purple),
              )
            ],
          ),
        ),
      ),
    );
  }
}
