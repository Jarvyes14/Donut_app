import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;

  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color:donutColor[200], 
          borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            // price tag
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
                      child: Text(
                        '\$$donutPrice',
                        style: TextStyle(
                          color: donutColor[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 45),
            // donut pic
            Image.asset(
              imageName,
              width: 200,
              height: 200,
            ),

            const SizedBox(height: 25),
            // donut Text
            Text(
              donutFlavor,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            
            Text(
              "Dunkin's",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 25),
            // love icon + add button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_border,
                      size: 34,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Add", 
                      style: TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        )
                      ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}