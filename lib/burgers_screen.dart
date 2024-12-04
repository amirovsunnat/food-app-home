import 'package:app_resource_management/utils/app_colors.dart';
import 'package:app_resource_management/utils/app_images.dart';
import 'package:app_resource_management/utils/text_style.dart';
import 'package:app_resource_management/widgets/burger_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BurgersScreen extends StatelessWidget {
  const BurgersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: customIconContainer(icon: Icons.arrow_back_ios_new_outlined),
        title: Container(
          // height: 30,
          width: 135,
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Text(
                "Burger",
                style: GoogleFonts.sen(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.arrow_drop_down_sharp,
                color: AppColors.mainColor,
              ),
            ],
          ),
        ),
        actions: [
          customIconContainer(
            icon: Icons.search,
            color: AppColors.mainBlackColor,
            iconColor: AppColors.whiteColor,
          ),
          customIconContainer(
            icon: Icons.settings_applications_sharp,
            iconColor: AppColors.mainColor,
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionText(text: "Popular Burgers"),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                childAspectRatio: 0.75,
                crossAxisCount: 2,
                children: [
                  BurgerCard(
                    imagePath: AppImages.burgerOne,
                    title: "Burger Bistro",
                    description: "Rose garden",
                    cost: "\$40",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Smokin' Burger",
                    description: "Cafenio Restaurant",
                    cost: "\$60",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerOne,
                    title: "Buffalo Burgers",
                    description: "Kaji Firm Kitchen",
                    cost: "\$75",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Bullseye Burgers",
                    description: "Kabab restaurant",
                    cost: "\$94",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Bullseye Burgers",
                    description: "Kabab restaurant",
                    cost: "\$94",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Bullseye Burgers",
                    description: "Kabab restaurant",
                    cost: "\$94",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerOne,
                    title: "Burger Bistro",
                    description: "Rose garden",
                    cost: "\$40",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Smokin' Burger",
                    description: "Cafenio Restaurant",
                    cost: "\$60",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerOne,
                    title: "Buffalo Burgers",
                    description: "Kaji Firm Kitchen",
                    cost: "\$75",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Bullseye Burgers",
                    description: "Kabab restaurant",
                    cost: "\$94",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Bullseye Burgers",
                    description: "Kabab restaurant",
                    cost: "\$94",
                    onTap: () {},
                  ),
                  BurgerCard(
                    imagePath: AppImages.burgerTwo,
                    title: "Bullseye Burgers",
                    description: "Kabab restaurant",
                    cost: "\$94",
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container customIconContainer({
  required IconData icon,
  Color color = AppColors.whiteColor,
  Color iconColor = AppColors.blackColor,
}) {
  return Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
    margin: const EdgeInsets.only(left: 10),
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
    child: Icon(
      icon,
      size: 26,
      color: iconColor,
    ),
  );
}
