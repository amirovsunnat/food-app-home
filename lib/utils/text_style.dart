import 'package:app_resource_management/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionText extends StatelessWidget {
  final String text;
  const SectionText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sen(
        fontSize: 20,
        color: AppColors.mainBlackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BurgerTitle extends StatelessWidget {
  final String text;
  final double? fontSize;
  const BurgerTitle({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text,
      style: GoogleFonts.sen(
        fontSize: fontSize ?? 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class BurgerDescription extends StatelessWidget {
  final String text;
  final double? fontSize;
  const BurgerDescription({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.sen(
        fontSize: fontSize ?? 13,
        color: AppColors.greyTextColor,
      ),
    );
  }
}
