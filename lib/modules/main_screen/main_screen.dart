
import 'package:dungeon_mafia/modules/main_screen/main.dart';
import 'package:dungeon_mafia/modules/main_screen/rules.dart';
import 'package:dungeon_mafia/modules/main_screen/settings.dart';
import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {

    final thm = Theme.of(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // Text("text", style: thm.textTheme.titleLarge,)
    return Scaffold(

      body: <Widget> [
        const Rules(),
        const Main(),
        const Settings()
      ][currentPageIndex],

      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            print(index);
          });
        },
        indicatorColor: const Color.fromRGBO(184, 224, 191, 1.0),
        selectedIndex: currentPageIndex,
        backgroundColor: const Color.fromRGBO(62, 178, 80, 0.5019607843137255),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.book),
              label: "Правила"
          ),
          NavigationDestination(
              icon: Icon(Icons.home),
              label: "Главная"
          ),
          NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Настройки"
          ),
        ],
      )
    );
  }
}

