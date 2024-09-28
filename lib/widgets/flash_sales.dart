import 'package:flutter/material.dart';

class FlashSalesWidget extends StatelessWidget {
  const FlashSalesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    // Dummy data for category images and names from assets
    final List<Map<String, String>> categories = [
      {
        "categoryImg": 'assets/images/1.jpg',
        "categoryName": 'Heel',
        "originalPrice": '3000',
        "flashPrice": '2300',
      },
      {
        "categoryImg": 'assets/images/2.jpg',
        "categoryName": 'Eye Liner',
        "originalPrice": '900',
        "flashPrice": '600',
      },
      {
        "categoryImg": 'assets/images/3.jpg',
        "categoryName": 'Lipstick',
        "originalPrice": '1200',
        "flashPrice": '600',
      },
      {
        "categoryImg": 'assets/images/4.jpg',
        "categoryName": 'Jacket',
        "originalPrice": '5000',
        "flashPrice": '4500',
      },
    ];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: screenHeight / 3.6, // Adjust the height to your design preference
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
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0)),
                child: Container(
                  width: screenWidth / 2.5, // Adjust width per card
                  color: Colors.white,
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
                      // Original price with strikethrough
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Rs. ${categories[index]['originalPrice']}',
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            'Rs. ${categories[index]['flashPrice']}',
                            style: const TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
