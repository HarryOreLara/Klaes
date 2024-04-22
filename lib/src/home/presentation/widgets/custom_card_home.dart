import 'package:flutter/material.dart';
import 'package:klaes_app/config/theme/theme.dart';




class CustomCardHome extends StatelessWidget {
  const CustomCardHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: const LinearGradient(
          // colors: [backgroundSecondaryCard, backgroundPrimaryCard],
          colors: [
            Color.fromARGB(255, 45, 45, 45),
            Color.fromARGB(255, 43, 43, 43),
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 102, 102, 102), // Color de la sombra
            spreadRadius: 1, // Radio de expansión de la sombra
            blurRadius: 1, // Radio de difuminado de la sombra
            offset: Offset(0, 1), // Desplazamiento de la sombra
          ),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.person,
            color: IconsCustomColors.iconColorPrimary,
            size: 25.0,
          ),
          Column(
            children: [
              Text(
                "Harry Ore",
                style: TextCustomStyle.letterCardsPrimary,
              ),
              Text(
                "73617110",
                style: TextCustomStyle.letterCardsPrimary,
              )
            ],
          ),
          Text(
            "19.00",
            style: TextCustomStyle.letterCardsPrimary,
          )
        ],
      ),
    );
  }
}
