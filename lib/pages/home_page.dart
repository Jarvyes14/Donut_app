import 'package:donut_app/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    MyTab(iconPath: 'assets/icons/burger.png'),
    MyTab(iconPath: 'assets/icons/donut.png'),
    MyTab(iconPath: 'assets/icons/pancakes.png'),
    MyTab(iconPath: 'assets/icons/pizza.png'),
    MyTab(iconPath: 'assets/icons/smoothie.png')
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu, color: Colors.grey[800]),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person, 
              color: Colors.grey[800]),
            ),
          ],
        ),
        body: Column(children:[
          //Texto principal
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:36, vertical: 18),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32)),
                  Text("eat", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.underline)),
                ],
              ),
            ),
            TabBar(
              tabs: myTabs,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFFFFB6C1),  // Color de la barra de selección
              ),
            )//TabBar
          ],)
      ),
    );
  }
}