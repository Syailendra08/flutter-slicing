import 'package:flutter/material.dart';

class FormTextarea extends StatelessWidget {
  const FormTextarea({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFFB0C4CF), // warna biru abu-abu
          borderRadius: BorderRadius.circular(20), // sudut membulat
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: 10,
              offset: const Offset(0, 6), // shadow ke bawah
            ),
          ],
        ),
        child: const Text(
          "Isi konten di sini",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}