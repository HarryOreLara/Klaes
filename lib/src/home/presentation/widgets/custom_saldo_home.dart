import 'package:flutter/material.dart';
import 'package:klaes_app/config/theme/letters_colors.dart';

class CustomSaldoHome extends StatelessWidget {
  final double saldo;
  const CustomSaldoHome({
    super.key,
    required this.saldo,
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
              saldo.toString(),
              style: textStyle.titleMedium,
            ),
            const Text(
              "Saldo actual",
              style: TextCustomStyle.letterLittlePrimary,
            )
          ],
        ),
      ),
    );
  }
}
