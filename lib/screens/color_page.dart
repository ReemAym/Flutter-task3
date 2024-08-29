import 'package:flutter/material.dart';
import 'package:try_pro/component/list_items.dart';
import '../modeles/number.dart';


class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> numbersList = const [
    ItemModel(
        image: 'assets/images/colors/color_black.png',
        jpName: 'ichi',
        enName: 'black',
        sound: 'sounds/colors/black.wav'),
    ItemModel(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'ni',
        enName: 'brown',
        sound: 'sounds/colors/brown.wav'),
    ItemModel(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'san',
        enName: 'dusty yellow',
        sound: 'sounds/colors/dusty_yellow.wav'),
    ItemModel(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'shi',
        enName: 'gray',
        sound: 'sounds/colors/gray.wav'),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        jpName: 'go',
        enName: 'green',
        sound: 'sounds/colors/green.wav'),
    ItemModel(
        image: 'assets/images/colors/color_red.png',
        jpName: 'roku',
        enName: 'red',
        sound: 'sounds/colors/red.wav'),
    ItemModel(
        image: 'assets/images/colors/color_white.png',
        jpName: 'sebun',
        enName: 'white',
        sound: 'sounds/colors/white.wav'),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        jpName: 'hachi',
        enName: 'yellow',
        sound: 'sounds/colors/yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463228),
        title: Text('Colors'),
      ),
      body: ListView.builder(
          itemCount: numbersList.length,
          itemBuilder: (context, index) {
            return Item(
              num: numbersList[index],
              color: Color.fromARGB(255, 82, 16, 144),
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
