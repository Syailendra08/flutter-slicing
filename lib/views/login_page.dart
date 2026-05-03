import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_shop/views/onboarding_page.dart';
import 'package:tech_shop/widgets/button.dart';
import 'package:tech_shop/widgets/form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),

                Image.network(
                  "https://i.ibb.co.com/hRKQp8S5/Minimal-house-symbol-real-estate-mortgage-loan-concept-3d-vector-icon-cartoon-minimal-style-Premiu.png",
                ),

                SizedBox(height: 30),

                alignLeft("Username"),
                FormTextarea(hintText: "Enter your username"),

              alignLeft("Password"),
                FormTextarea(hintText: "Enter your password", isPassword: true),
                SizedBox(height: 20),

                CustomButton(text: "Sign In", onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  OnboardingPage()),
                  );
                }),

                SizedBox(height: 20),

                Text(
                  "Or Sign in with",
                  style: TextStyle(color: Colors.black54),
                ),

                SizedBox(height: 10),

                CustomButton(
                  text: "Google",
                  isSocial: true,
                  icon: Icons.g_mobiledata,
                  onPressed: () {},
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an account? "),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign Up Now!",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    
                  ],
                
                ),
                  SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ),
    );
  }

   Widget alignLeft(String text) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(bottom: 6),
        child: Text(
          text,
          style: GoogleFonts.poppins(
            fontSize: 13,
            color: Colors.black54,
             ),
        ),
      ),
    );
  }
}
