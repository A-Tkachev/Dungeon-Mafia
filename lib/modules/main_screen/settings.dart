
import 'package:flutter/material.dart';


class  Settings extends StatefulWidget {
  const Settings ({super.key});

  @override
  State<Settings> createState() => SettingsState();
}

class SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final thm = Theme.of(context);
    return Container(
        margin: EdgeInsets.only(
            top: height * 0.1,
            left: width * 0.1),
        child: const Text("Settings"));
  }
}
