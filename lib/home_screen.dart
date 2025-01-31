import 'package:flutter/material.dart';
import 'package:islami/my_theme_data.dart';
import 'package:islami/tabs/ahadeth_tab.dart';
import 'package:islami/tabs/quran_tab.dart';
import 'package:islami/tabs/radio_tab.dart';
import 'package:islami/tabs/sebha_tab.dart';
import 'package:islami/tabs/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;


  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/background.png',
        width: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/quran.png')),
                label: 'quran',
                backgroundColor: MyThemeData.primary),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                label: 'sebha',
                backgroundColor: MyThemeData.primary),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/radio.png')),
                label: 'radio',
                backgroundColor: MyThemeData.primary),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ahadeth.png')),
                label: 'ahadeth',
                backgroundColor: MyThemeData.primary),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: 'setting',
                backgroundColor: MyThemeData.primary),
          ],
        ),
        body: tabs[index],
      ),
    ]);
  }

  List<Widget> tabs = [
    QuranTab(),
     SebhaTab(),
     RadioTab(),
     AhadethTab(),
     SettingTab()
  ];
}
