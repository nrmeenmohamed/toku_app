import 'package:flutter/material.dart';

import '../../models/family.dart';
import '../../shared/components/components.dart';

class FamilyScreen extends StatelessWidget {

  List<Family> family = [
    const Family(
        imageName: 'assets/images/family/family_father.png',
        japName: 'Chichioya',
        engName: 'father',
        sound: 'sounds/family/toku_assets_sounds_family_members_grand father.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_mother.png',
        japName: 'Hahaoya',
        engName: 'mother',
        sound: 'sounds/family/toku_assets_sounds_family_members_mother.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_son.png',
        japName: 'Musuko',
        engName: 'son',
        sound: 'sounds/family/toku_assets_sounds_family_members_son.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_daughter.png',
        japName: 'Musume',
        engName: 'daughter',
        sound: 'sounds/family/toku_assets_sounds_family_members_daughter.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_grandfather.png',
        japName: 'Ojisan',
        engName: 'grandfather',
        sound: 'sounds/family/toku_assets_sounds_family_members_grand father.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_grandmother.png',
        japName: 'sobo',
        engName: 'grandmother',
        sound: 'sounds/family/toku_assets_sounds_family_members_grand mother.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_older_brother.png',
        japName: 'Nisan',
        engName: 'older brother',
        sound: 'sounds/family/toku_assets_sounds_family_members_older bother.wav'
    ),
    const Family(
        imageName: 'assets/images/family/family_older_sister.png',
        japName: 'Ane',
        engName: 'older sister',
        sound: 'sounds/family/toku_assets_sounds_family_members_older sister.wav'
    ),

  ];

  FamilyScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF463126),
        title: const Text(
          'Family Members',
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context,index)=>numberItem(
            number: family[index],
          color: const Color(0xFF528032),
        ),
        itemCount: family.length,
      ),
    );
  }
}
