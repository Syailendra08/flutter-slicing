import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_shop/widgets/button.dart';
import 'package:tech_shop/widgets/form.dart';
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
               SizedBox(height: 80),

              
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Tech",
                        style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        text: "Shop",
                        style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

                 SizedBox(height: 30),

           
              buildLabel("Full name"),
              FormTextarea(),

              buildLabel("Email"),
              FormTextarea(),

              buildLabel("Username"),
              FormTextarea(),

              buildLabel("Password"),
              FormTextarea(
                isPassword: true,
              ),

              SizedBox(height: 10),

          
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

  
  Widget buildLabel(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6),
      child: Text(
        text,
        style: GoogleFonts.poppins(
          fontSize: 13,
          color: Colors.black54,
        ),
      ),
    );
  }
}