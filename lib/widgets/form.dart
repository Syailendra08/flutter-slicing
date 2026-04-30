import 'package:flutter/material.dart';

class FormTextarea extends StatelessWidget {
  const FormTextarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin:  EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        padding:  EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:  Color(0xFFB0C4CF), 
          borderRadius: BorderRadius.circular(20), 
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              offset:  Offset(0, 6), 
            ),
          ],
        ),
        child:  Text(
          "Isi konten di sini",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}