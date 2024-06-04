



import 'package:flutter/material.dart';


class Rules extends StatelessWidget {
  const Rules({super.key});

  @override
  Widget build(BuildContext context) {
    final thm = Theme.of(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
            top: height * 0.1,
            left: width * 0.1
        ),
        child: const Text("rules"),
      ),
    );
  }
}
