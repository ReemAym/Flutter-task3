import 'package:flutter/material.dart';
import 'package:try_pro/screens/family_members_page.dart';
import 'package:try_pro/screens/numbers_page.dart';
import 'package:try_pro/screens/phrases_page.dart';
import 'package:try_pro/screens/color_page.dart';


import '../component/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text('Toku'),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NumbersPage();
              }));
            },
            color: Color(0xffEE9235),
            text: 'Numbers',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FamilyMemberPage();
              }));
            },
            color: Color.fromARGB(255, 20, 117, 7),
            text: 'Family members',
          ),
          Category(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ColorsPage();
              }));},
            color: Color.fromARGB(255, 82, 16, 144),
            text: 'Colors',
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PhrasesPage();
              }));
            },
            color: Color.fromARGB(255, 13, 121, 175),
            text: 'Phrases',
          ),
        ],
      ),
    );
  }
}
