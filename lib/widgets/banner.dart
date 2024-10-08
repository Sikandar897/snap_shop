import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final List<String> _imageUrls = [
    'https://i.pinimg.com/564x/85/90/2e/85902e2dd9dc854e7f036564b559da80.jpg',
    'https://img.freepik.com/free-vector/horizontal-banner-template-black-friday-sales_23-2150867247.jpg?t=st=1727470173~exp=1727473773~hmac=b7096cc57ab32f0b82568ef9709f1e5329c1a97226c840a2e6ec623e91e70521&w=2000',
    "https://i.pinimg.com/564x/84/ad/1c/84ad1c67da7c18049aaa3f71bb3e474b.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true, // Auto-play the slider

            aspectRatio: 2.5, // Aspect ratio for images
            viewportFraction: 1,
            scrollDirection: Axis
                .horizontal // Fraction of screen width occupied by each image
            ),
        items: _imageUrls.map((imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: screenWidth - 10, // Adjust the image width
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover, // Image should cover the available space
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
