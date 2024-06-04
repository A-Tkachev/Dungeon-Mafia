


import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {

    final thm = Theme.of(context);

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    // Text("text", style: thm.textTheme.titleLarge,)
    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(
          top: height * 0.1,
          left: width * 0.1
        ),
        child: Column(
          // выравнивание столбцов
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Главный экран", style: thm.textTheme.titleLarge,)

          ],
        ),
      ),

      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home),
              label: "Правила"
          ),
          NavigationDestination(
              icon: Icon(Icons.settings),
              label: "Настройки"
          ),
          NavigationDestination(
              icon: Icon(Icons.info),
              label: "О приложении"
          ),
        ],

      )
    );
  }
}

