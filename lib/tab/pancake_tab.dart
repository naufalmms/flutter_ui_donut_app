import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

// ignore: must_be_immutable
class PancakeTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Original", "36", Colors.yellow, "assets/images/pancake_original.png"],
    ["Strawberry", "45", Colors.red, "assets/images/pancake_strobery.png"],
    ["Blueberry", "84", Colors.blue, "assets/images/pancake_blueberry.png"],
    ["Choco", "95", Colors.brown, "assets/images/pancake_chocolate.png"],
  ];

  PancakeTab({super.key});

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
