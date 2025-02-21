import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  // Lista de donas
  final List donutsOnSale = [
    //[donutFlavor, donutPrice, donutColorm imageName]
    ['Chocolate', 2.99, Colors.brown, 'assets/images/chocolate_donut.png'],
    ['Strawberry', 3.49, Colors.pink[200], 'assets/images/strawberry_donut.png'],
    ['Grape Ape', 3.49, Colors.purple[200], 'assets/images/grape_donut.png'],
    ['Ice Cream', 2.99, Colors.brown[200], 'assets/images/icecream_donut.png'],
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(8.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
      ),
      itemBuilder: (context, index) {
        return Card(
          color: donutsOnSale[index][2],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(donutsOnSale[index][3], height: 100, width: 100),
              Text(donutsOnSale[index][0], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('\$${donutsOnSale[index][1]}', style: TextStyle(fontSize: 16)),
            ],
          ),
        );
      },
    );
  }
}