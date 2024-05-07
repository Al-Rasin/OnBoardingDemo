import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_boarding_demo/app/utils/appcolors.dart';
import 'package:on_boarding_demo/app/utils/appsizes.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({
    super.key,
    required this.text,
    required this.color,
    required this.size,
    required this.fontWeight,
    required this.onpressed,
  });

  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        width: 150,
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(
            AppSize.size30,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              text,
              style: GoogleFonts.poppins(
                fontSize: size,
                fontWeight: fontWeight,
                color: color,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
