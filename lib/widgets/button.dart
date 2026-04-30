import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String textButton;
  final VoidCallback? onPressed;
  final double widthButton;
  final double heightButton;
  final double titleSize;
  final double radius;
  final Color fontColor;
 
  const CustomButton({
    super.key,
    required this.textButton,
    required this.onPressed,
    this.heightButton = 50,
    this.widthButton = double.infinity,
    this.titleSize = 16,
    this.radius = 20,
    this.fontColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widthButton,
      height: heightButton,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient:  LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF0C4CD7), 
            Color(0xFF0A3FB1), 
            Color(0xFF0A3FB1), 
            Color(0xFF062871),
          ],
          stops: [0.0, 0.38, 0.45, 1.0],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
         
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          textButton,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: titleSize,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}