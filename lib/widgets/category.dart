import 'package:flutter/material.dart';

class FancyCategoryWidget extends StatelessWidget {
  const FancyCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Dummy data for category images and names from assets
    final List<Map<String, String>> categories = [
      {
        "categoryImg": 'assets/images/jackets.jpg',
        "categoryName": 'Jackets',
      },
      {
        "categoryImg": 'assets/images/skincare.jpg',
        "categoryName": 'Skin Care',
      },
      {
        "categoryImg": 'assets/images/clothes.jpg',
        "categoryName": 'Clothes',
      },
      {
        "categoryImg": 'assets/images/Footware.jpg',
        "categoryName": 'Footwear',
      },
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: screenHeight / 3.9, // Adjust the height to your design preference
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {
                // Action for tapping on category
              },
              child: Container(
                width: screenWidth / 2.5, // Adjust width per card
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: 4,
                      blurRadius: 10,
                      offset: const Offset(0, 5), // shadow position
                    ),
                  ],
                  color: Colors.white, // Background color
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Category image from assets
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0)),
                      child: Image.asset(
                        categories[index]['categoryImg']!,
                        height: screenHeight / 4.9, // Adjust image height
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    // Category title
                    Text(
                      categories[index]['categoryName']!,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
