import 'package:flutter/material.dart';
import '../../shared/components/components.dart';
import '../colors/color_screen.dart';
import '../family_members/family_screen.dart';
import '../numbers/numbers_screen.dart';
import '../phrases/phrases_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFfff4d9),
      appBar: AppBar(
        title: const Text(
          'Toku',
        ),
        backgroundColor: const Color(0xFF49332a),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // numbers
          Expanded(
            child: defaultText(
              text: 'Numbers',
              color: const Color(0xFFf99531),
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>NumbersScreen(),
                    ),
                );
              },
            ),
          ),

          // family members
          Expanded(
            child: defaultText(
              text: 'Family Members',
              color: const Color(0xFF528032),
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>FamilyScreen(),
                    ),
                  );
                }
            ),
          ),

          // Colors
          Expanded(
            child:defaultText(
              text: 'Colors',
              color: const Color(0xFF7d40a2),
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>ColorsScreen(),
                    ),
                  );
                }

            ),
          ),

          // phrases
          Expanded(
            child: defaultText(
              text: 'Phrases',
              color: const Color(0xFF47a5cb),
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context)=>PhraseScreen(),
                    ),
                  );
                }

            ),
          ),

          const Spacer(flex: 5,),


        ],
      ),
    );
  }
}
