import 'package:flutter/material.dart';

import '../../models/color.dart';
import '../../shared/components/components.dart';

class ColorsScreen extends StatelessWidget {
  List<ColorsItems> colors = [
    const ColorsItems(
        imageName: 'assets/images/colors/color_black.png',
        japName: 'Kuro',
        engName: 'black',
        sound: 'sounds/colors/toku_assets_sounds_colors_black.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/color_brown.png',
        japName: 'Chairo',
        engName: 'brown',
        sound: 'sounds/colors/toku_assets_sounds_colors_brown.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/color_dusty_yellow.png',
        japName: 'Dasutiierō',
        engName: 'dusty yellow',
        sound: 'sounds/colors/toku_assets_sounds_colors_dusty yellow.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/color_gray.png',
        japName: 'Gurē',
        engName: 'gray',
        sound: 'sounds/colors/toku_assets_sounds_colors_gray.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/color_white.png',
        japName: 'Shiro',
        engName: 'white',
        sound: 'sounds/colors/toku_assets_sounds_colors_white.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/yellow.png',
        japName: 'Kiiro',
        engName: 'yellow',
        sound: 'sounds/colors/toku_assets_sounds_colors_yellow.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/color_green.png',
        japName: 'Midori',
        engName: 'green',
        sound: 'sounds/colors/toku_assets_sounds_colors_green.wav'
    ),
    const ColorsItems(
        imageName: 'assets/images/colors/color_red.png',
        japName: 'Aka',
        engName: 'red',
        sound: 'sounds/colors/toku_assets_sounds_colors_red.wav'
    ),
  ];

  ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF463126),
        title: const Text(
          'Colors',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=>numberItem(
          number: colors[index],
          color: const Color(0xFF7d40a2),
        ),
        itemCount: colors.length,
      ),
    );
  }
}
