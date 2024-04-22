import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:klaes_app/config/theme/theme.dart';

class QrScreen extends StatelessWidget {
  const QrScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      context.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: IconsCustomColors.iconColorPrimary,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const Center(
                child: Text(
                  "Mi codigo QR",
                  style: TextStyle(
                      color: AppColors.mainTextColor1, fontSize: 30.0),
                ),
              ),
              const Center(
                child: Text(
                  "Usa tu codigo QR para que te transfieran dinero",
                  style: TextStyle(
                      color: AppColors.mainTextColor1, fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              const Icon(
                Icons.qr_code_2,
                size: 350,
                color: IconsCustomColors.iconColorPrimary,
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_rounded,
                    color: IconsCustomColors.iconColorPrimary,
                  ),
                  label: const Text(
                    "Compartir",
                    style: TextStyle(color: AppColors.mainTextColor1),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
