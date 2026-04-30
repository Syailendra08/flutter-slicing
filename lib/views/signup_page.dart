import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_shop/widgets/button.dart';
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 30),

              // Title
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Tech",
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        text: "Shop",
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

               SizedBox(height: 30),

              // Form Fields
              buildLabel("Full name"),
              buildInput(),

              buildLabel("Email"),
              buildInput(),

              buildLabel("Username"),
              buildInput(),

              buildLabel("Password"),
              buildInput(isPassword: true),

               SizedBox(height: 30),

              // Button (pakai CustomButton kamu)
              CustomButton(
                textButton: "Sign Up",
                onPressed: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Label Text
  Widget buildLabel(String text) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 13,
          color: Colors.black54,
        ),
      ),
    );
  }

  // Input Field (modif dari FormTextarea kamu)
  Widget buildInput({bool isPassword = false}) {
    return Container(
      width: double.infinity,
      margin:  EdgeInsets.only(bottom: 16),
      padding:  EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color:  Color(0xFFB0C4CF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 8,
            offset:  Offset(0, 4),
          ),
        ],
      ),
      child: TextField(
        obscureText: isPassword,
        decoration:  InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}