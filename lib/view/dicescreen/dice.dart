import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  List diceimages = [
    "assets/images/d1.jpg",
    "assets/images/d2.png",
    "assets/images/d3.png",
    "assets/images/d4.png",
    "assets/images/d5.png",
    "assets/images/d6.png",
    "assets/images/start_button.avif"
  ];
  int? random;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("DICE GAME "),
          centerTitle: true,
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                random = Random().nextInt(6);
              });
            },
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(random == null
                          ? "assets/images/start_button.avif"
                          : diceimages[random!]))),
            ),
          ),
        ));
  }
}

// import 'dart:math';

// import 'package:flutter/material.dart';

// class Dice extends StatefulWidget {
//   const Dice({super.key});

//   @override
//   State<Dice> createState() => _DiceState();
// }

// class _DiceState extends State<Dice> {
//   int? random;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: InkWell(
//           onTap: () {
//             setState(() {
//               random = Random().nextInt(6) + 1;
//             });
//           },
//           child: Container(
//             height: 200,
//             width: 200,
//             decoration: BoxDecoration(
//                 image: DecorationImage(
//                     fit: BoxFit.cover,
//                     image: AssetImage(random == null
//                         ? "assets/images/button.png"
//                         : "assets/images/d$random.png"))),
//           ),
//         ),
//       ),
//     );
//   }
// }
