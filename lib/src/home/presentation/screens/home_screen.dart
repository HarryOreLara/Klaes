import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Saldo disponible",
                      style: textStyle.labelSmall,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                      size: 20.0,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "0.00",
                      style: textStyle.titleMedium,
                    ),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.monetization_on),
                        label: const Text("Comprar"))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
