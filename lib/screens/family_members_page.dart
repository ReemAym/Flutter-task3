import 'package:flutter/material.dart';
import 'package:try_pro/component/list_items.dart';
import '../modeles/number.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ichi',
        enName: 'grandfather',
        sound: 'sounds/family_members/grandfather.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'ni',
        enName: 'grandmother',
        sound: 'sounds/family_members/grandmother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'san',
        enName: 'father',
        sound: 'sounds/family_members/father.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'shi',
        enName: 'mother',
        sound: 'sounds/family_members/mother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'go',
        enName: 'older brother',
        sound: 'sounds/family_members/olderbrother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'roku',
        enName: 'older sister',
        sound: 'sounds/family_members/oldersister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'sebun',
        enName: 'younger brother',
        sound: 'sounds/family_members/youngerbrother.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'hachi',
        enName: 'younger sister',
        sound: 'sounds/family_members/youngersister.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'kokonotsu',
        enName: 'son',
        sound: 'sounds/family_members/son.wav'),
    ItemModel(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'jū',
        enName: 'daughter',
        sound: 'sounds/family_members/daughter.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: numbersList.length,
          itemBuilder: (context, index) {
            return Item(
              num: numbersList[index],
              color: Color.fromARGB(255, 20, 117, 7),
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
