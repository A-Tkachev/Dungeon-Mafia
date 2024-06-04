
import 'package:flutter/material.dart';
import 'package:dungeon_mafia/theme/theme.dart';
import 'package:dungeon_mafia/router/router.dart';

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dangeon Mafia',
      theme: whiteTheme,
      routes: routes,
    );
  }
}
