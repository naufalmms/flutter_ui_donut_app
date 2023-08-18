import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

// ignore: must_be_immutable
class SmoothieTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Mango", "36", Colors.yellow, "assets/images/smoothie_mango.png"],
    ["Strawberry", "45", Colors.red, "assets/images/smoothie_strobery.png"],
    ["Blueberry", "84", Colors.blue, "assets/images/smoothie_blueberry.png"],
    ["Banana", "95", Colors.yellow, "assets/images/smoothie_banana.png"],
  ];

  SmoothieTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}
