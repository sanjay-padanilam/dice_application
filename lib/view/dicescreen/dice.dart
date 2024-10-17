import 'package:dice_application/controller/dicescree_controller.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
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
              context.read<DicescreeController>().onpressed();
            },
            child: Consumer(
              builder: (context, value, child) => Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            context.watch<DicescreeController>().random == null
                                ? "assets/images/start_button.avif"
                                : DicescreeController.diceimages[context
                                    .watch<DicescreeController>()
                                    .random!]))),
              ),
            ),
          ),
        ));
  }
}
