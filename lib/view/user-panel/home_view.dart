import 'package:flutter/material.dart';
import 'package:snap_shop/routes/app_routes.dart';
import 'package:snap_shop/utils/appconstant.dart';
import '../../widgets/all_products.dart';
import '../../widgets/banner.dart';
import '../../widgets/category.dart';
import '../../widgets/drawer.dart';
import '../../widgets/flash_sales.dart';
import '../../widgets/heading.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve height and width from MediaQuery
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snap Shop'),
        foregroundColor: AppConstant.appTextColor,
        backgroundColor: AppConstant.appMainColor,
        actions: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, AppRoutes.cartview),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.shopping_cart),
            ),
          )
        ],
      ),
      drawer: const DrawerWidget(),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight / 90.0,
              ),

              //banner widget
              const BannerWidget(),

              //heading widget

              HeadingWidget(
                headingTitle: 'Categories',
                headingSubTitle: 'According to your budget',
                onTap: () {},
                buttonText: 'See More >',
              ),

              // category widget
              const FancyCategoryWidget(),

              //heading flash sales
              HeadingWidget(
                headingTitle: 'Flash Sales',
                headingSubTitle: 'According to your budget',
                onTap: () {},
                buttonText: 'See More >',
              ),

              //flash sales widget
              const FlashSalesWidget(),

              //heading all products sales
              HeadingWidget(
                headingTitle: 'All Products',
                headingSubTitle: 'According to your budget',
                onTap: () {},
                buttonText: 'See More >',
              ),

              const AllProducts()
            ],
          ),
        ),
      ),
    );
  }
}
