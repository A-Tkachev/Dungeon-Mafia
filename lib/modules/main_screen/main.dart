

import 'package:flutter/material.dart';


class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final thm = Theme.of(context);
    return Container(
        margin: EdgeInsets.only(
            top: height * 0.1,
            left: width * 0.1),
      child: const Text("Mafia"));
  }
}


