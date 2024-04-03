import 'package:flutter/material.dart';

import '../../models/numbers.dart';
import '../../shared/components/components.dart';

class NumbersScreen extends StatelessWidget {
  List<Number> nums = [
    const Number(
      imageName: 'assets/images/numbers/number_one.png',
      japName: 'Ichi',
      engName: 'one',
        sound: 'sounds/numbers/1.mp3'
    ),
    const Number(
      imageName: 'assets/images/numbers/number_two.png',
      japName: 'Ni',
      engName: 'two',
        sound: 'sounds/numbers/2.mp3'
    ),
    const Number(
      imageName: 'assets/images/numbers/number_three.png',
      japName: 'San',
      engName: 'three',
        sound: 'sounds/numbers/3.mp3'
    ),
    const Number(
      imageName: 'assets/images/numbers/number_four.png',
      japName: 'Shi',
      engName: 'four',
        sound: 'sounds/numbers/4.mp3'
    ),
    const Number(
      imageName: 'assets/images/numbers/number_five.png',
      japName: 'Go',
      engName: 'five',
        sound: 'sounds/numbers/5.mp3'

    ),
    const Number(
      imageName: 'assets/images/numbers/number_six.png',
      japName: 'Roku',
      engName: 'six',
        sound: 'sounds/numbers/6.mp3'

    ),
    const Number(
      imageName: 'assets/images/numbers/number_seven.png',
      japName: 'Sebun',
      engName: 'seven',
        sound: 'sounds/numbers/7.mp3'
    ),
    const Number(
      imageName: 'assets/images/numbers/number_eight.png',
      japName: 'Hachi',
      engName: 'eight',
        sound: 'sounds/numbers/8.mp3'

    ),
    const Number(
      imageName: 'assets/images/numbers/number_nine.png',
      japName: 'Kyū',
      engName: 'nine',
        sound: 'sounds/numbers/9.mp3'

    ),
    const Number(
      imageName: 'assets/images/numbers/number_ten.png',
      japName: 'Jū',
      engName: 'ten',
        sound: 'sounds/numbers/10.mp3'

    ),
  ];

  NumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF463126),
        title: const Text(
          'Numbers',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=>numberItem(
            number: nums[index],
          color: const Color(0xFFf99531),
        ),
        itemCount: nums.length,
      ),
    );
  }
}


