import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:klaes_app/config/theme/theme.dart';
import 'package:klaes_app/src/home/presentation/presentacion.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: scaffoldBackgroundColor,
            color: scaffolsSecondaryBackgroud,
            animationDuration: const Duration(milliseconds: 300),
            onTap: (index) {
              print(index);
            },
            items: const [
              Icon(Icons.home),
              Icon(
                Icons.monetization_on_sharp,
              ),
              Icon(Icons.person)
            ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: IconsCustomColors.iconColorPrimary,
                    ),
                    Icon(
                      Icons.qr_code_2,
                      color: IconsCustomColors.iconColorPrimary,
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  children: [
                    Text(
                      "Saldo disponible",
                      style: textStyle.labelSmall,
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: IconsCustomColors.iconColorPrimary,
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
                        icon: const Icon(
                          Icons.monetization_on,
                          color: IconsCustomColors.iconColorPrimary,
                        ),
                        label: const Text(
                          "Comprar",
                          style: TextCustomStyle.letterPrimary,
                        ))
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: const Text(
                        "LJ",
                        style: TextCustomStyle.letterSecondary,
                      ),
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.0))),
                      child: const Text(
                        "BC",
                        style: TextCustomStyle.letterSecondary,
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Expanded(
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const IntrinsicHeight(
                  child: Row(
                    children: [
                      CustomSaldoHome(
                        saldo: 1250.00,
                      ),
                      VerticalDivider(
                        width: 60,
                        thickness: 1,
                        indent: 10,
                        endIndent: 10,
                        color: Colors.white,
                      ),
                      CustomSaldoHome(
                        saldo: 750.00,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const CustomChart(),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Transacciones recientes",
                    style: TextCustomStyle.letterPrimary,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const CustomCardHome(),
                const CustomCardHome(),
                const CustomCardHome(),
                const CustomCardHome(),
              ],
            ),
          ),
        ));
  }
}
