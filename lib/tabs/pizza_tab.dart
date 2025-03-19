import 'package:donut_app/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  //Lista de Donas
   final List donutsOnSale = [
    // [donutFlavor, donutPrice, donutColor, imageName],
     ["Ice Cream","36", Colors.blue, "assets/images/icecream_donut.png"],
     ["Strawberry","45", Colors.red,"assets/images/strawberry_donut.png"],
     ["Grape Ape","84", Colors.purple,"assets/images/grape_donut.png"],
     ["Choco","95", Colors.brown, 'assets/images/chocolate_donut.png'],
     ["Ice Cream","36", Colors.blue, "assets/images/icecream_donut.png"],
     ["Strawberry","45", Colors.red,"assets/images/strawberry_donut.png"],
     ["Grape Ape","84", Colors.purple,"assets/images/grape_donut.png"],
     ["Choco","95", Colors.brown, 'assets/images/chocolate_donut.png'],
   ];
  PizzaTab({super.key});
    @override  
    Widget build(BuildContext context) {
    //Acomodar elementos en Cuadricula
      return GridView.builder(
    //Eementos en nuestra lista
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(8.0),
     //Organiza como distribuir
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       //numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 0.7,),
        itemBuilder: (context, index){
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice:donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            imageName:donutsOnSale[index][3]
          );
        }
      );
  }
}