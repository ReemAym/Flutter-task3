import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:try_pro/modeles/number.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.num, required this.color});
  final ItemModel num;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: color,
        child: Row(
          children: [
            num.image==null?SizedBox(): Container(color: Color(0xffFFF6DC), child: Image.asset(num.image!)),
            Expanded(
                child: ItemInfo(
              num: num,
              color: color,
            )),
          ],
        ));
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.num, required this.color});
  final ItemModel num;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  num.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  num.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(num.sound));
                },
                icon: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 30,
                )),
          ),
        ],
      ),
    );
  }
}
