import 'package:app_resource_management/burgers_screen.dart';
import 'package:app_resource_management/utils/app_colors.dart';
import 'package:app_resource_management/utils/text_style.dart';
import 'package:flutter/material.dart';

class BurgerCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String cost;
  final VoidCallback onTap;
  const BurgerCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.cost,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitWidth,
                  image: AssetImage(
                    imagePath,
                  ),
                ),
              ),
            ),
          ),
          BurgerTitle(text: title),
          BurgerDescription(text: description),
          const Spacer(),
          Row(
            children: [
              const BurgerTitle(text: "\$40"),
              const Spacer(),
              customIconContainer(
                icon: Icons.add,
                color: AppColors.mainColor,
                iconColor: AppColors.whiteColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
