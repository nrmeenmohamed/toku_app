import 'package:flutter/material.dart';

import '../../models/phrase.dart';
import '../../shared/components/components.dart';

class PhraseScreen extends StatelessWidget {
  List<Phrase> phrase = [
    const Phrase(
      japName: 'Anata no namae wa nanidesu ka?',
      engName: 'what is your name ?',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_what_is_your_name.wav',
    ),
    const Phrase(
      japName: 'Doko ni kimasu ka?',
      engName: 'where are you coming ?',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_are_you_coming.wav',
    ),
    const Phrase(
      japName: 'Go kibun wa ikagadesu ka?',
      engName: 'how are you feeling ?',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_how_are_you_feeling.wav',
    ),
    const Phrase(
      japName: 'Kimasu ka?',
      engName: 'are you coming ?',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_are_you_coming.wav',
    ),
    const Phrase(
      japName: 'Hai, kimasu',
      engName: 'yes i am coming',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_yes_im_coming.wav',
    ),
    const Phrase(
      japName: 'Watashi wa dōbutsu ga daisukidesu',
      engName: 'i love animal',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_i_love_anime.wav',
    ),
    const Phrase(
      japName: 'Watashi wa puroguramingu ga daisukidesu',
      engName: 'i love programming',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_i_love_programming.wav',
    ),
    const Phrase(
      japName: 'Puroguramingu wa kantandesu',
      engName: 'programming is easy',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_programming_is_easy.wav',
    ),
    const Phrase(
      japName: 'Kōdoku suru koto o wasurenaide kudasai',
      engName: 'don\'t forget to subscribe',
      soundName: 'sounds/phrases/toku_assets_sounds_phrases_dont_forget_to_subscribe.wav',
    ),


  ];

  PhraseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF49332a),
        title: const Text(
          'Phrases',
        ),
       // titleSpacing: 10.0,
      ),
      body: ListView.builder(
          itemBuilder: (context, index)=>phraseItem(phrase: phrase[index]),
        itemCount: phrase.length,
      ),
    );
  }
}
