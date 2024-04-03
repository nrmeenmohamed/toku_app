import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

import '../../models/numbers.dart';
import '../../models/phrase.dart';

// home screen
Widget defaultText({
  required String text,
  required Color color,
  required Function() onTap,
}) => GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsetsDirectional.only(start: 15.0),
        alignment: AlignmentDirectional.centerStart,
        color: color,
        width: double.infinity,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );



// number screen
Widget numberItem({
  required Number number,
  required Color color,
})=>  Container(
  color:color,
  padding: const EdgeInsetsDirectional.only(end: 5.0,),
  child: Row(
    children: [
      // image
      Container(
        color: const Color(0xFFfff4db),
        child: Image(
          image: AssetImage(number.imageName),
          width: 90.0,
          height: 90.0,
        ),
      ),

      // words
      Padding(
        padding: const EdgeInsetsDirectional.only(start: 8.0,),
        child: Column(
          children: [
            Text(
              number.japName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Text(
              number.engName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
      const Spacer(flex: 1,),

      // icon
      IconButton(
        icon: const Icon(
          Icons.play_arrow ,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: ()
        {

          final player = AudioPlayer();
          player.play(AssetSource(number.sound));
        },
        splashColor: Colors.lightBlue,
      ),
    ],
  ),
);




// phrase screen
Widget phraseItem({
  required Phrase phrase,
})=>Container(
  color: const Color(0xFF47a5cb),
  padding: const EdgeInsetsDirectional.only(
    start: 10.0,
    top: 20.0,
    bottom: 20.0,
  ),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              phrase.japName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            Text(
              phrase.engName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
      const Spacer(flex: 1,),

      // icon
      IconButton(
        icon: const Icon(
          Icons.play_arrow ,
          color: Colors.white,
          size: 30.0,
        ),
        onPressed: ()
        {

          final player = AudioPlayer();
          player.play(AssetSource(phrase.soundName));
        },
        splashColor: Colors.lightBlue,
      ),
    ],
  ),
);
