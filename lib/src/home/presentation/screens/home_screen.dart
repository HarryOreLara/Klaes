import 'package:flutter/material.dart';
import 'package:klaes_app/config/theme/theme.dart';
import 'package:klaes_app/src/home/presentation/widgets/custom_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
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
                  CustomSaldoHome(),
                  VerticalDivider(
                    width: 60,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.white,
                  ),
                  CustomSaldoHome(),
                ],
              ),
            ),
            LineChartSample2()
          ],
        ),
      ),
    ));
  }
}

class CustomSaldoHome extends StatelessWidget {
  const CustomSaldoHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;

    return Expanded(
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1250.00",
              style: textStyle.titleMedium,
            ),
            const Text(
              "Saldo actual",
              style: TextCustomStyle.letterLittePrimary,
            )
          ],
        ),
      ),
    );
  }
}
