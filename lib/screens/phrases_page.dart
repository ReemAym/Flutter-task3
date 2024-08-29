import 'package:flutter/material.dart';
import 'package:try_pro/component/list_items.dart';
import '../modeles/number.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        jpName: 'ichi',
        enName: 'grandfather',
        sound: 'sounds/family_members/grandfather.wav'),
    ItemModel(
        jpName: 'ni',
        enName: 'grandmother',
        sound: 'sounds/family_members/grandmother.wav'),
    ItemModel(
        jpName: 'san',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        jpName: 'shi',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        jpName: 'go',
        enName: 'older brother',
        sound: 'sounds/family_members/olderbrother.wav'),
    ItemModel(
        jpName: 'roku',
        enName: 'older sister',
        sound: 'sounds/family_members/oldersister.wav'),
    ItemModel(
        jpName: 'sebun',
        enName: 'younger brother',
        sound: 'sounds/family_members/youngerbrother.wav'),
    ItemModel(
        jpName: 'hachi',
        enName: 'younger sister',
        sound: 'sounds/family_members/youngersister.wav'),
    ItemModel(
        jpName: 'kokonotsu',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        jpName: 'jū',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text('Phrases'),
      ),
      body: ListView.builder(
          itemCount: numbersList.length,
          itemBuilder: (context, index) {
            return ItemInfo(
              num: numbersList[index],
              color: Color.fromARGB(255, 13, 121, 175),
            );
          }),
    );
  }
}

// List<Widget> getList(List<Number> num) {
//   List<Widget> list = [];
//   for (int i = 0; i < num.length; i++) {
//     list.add(Item(num: num[i]));
//   }
//   return list;
// }
