import 'package:flutter/material.dart';
import 'package:tech_shop/widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Column(
          children: [
     
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Icon(Icons.menu),

                 Column(
  mainAxisSize: MainAxisSize.min,
  children: const [
    Text(
      "TECH",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.blue,
        height: 1, // penting!
      ),
    ),
    Text(
      "SHOP",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.blue,
        height: 1, // penting!
      ),
    ),
  ],
),

                   Icon(Icons.search),
                ],
              ),
            ),

           
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Popular Products",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

           
             Expanded(child: SizedBox()),
          ],
        ),
      ),

    
      bottomNavigationBar: CustomNavbar(
        selectedIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}