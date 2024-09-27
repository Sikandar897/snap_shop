import 'package:flutter/material.dart';
import 'package:snap_shop/utils/appconstant.dart';

import '../../widgets/banner.dart';
import '../../widgets/drawer.dart';
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
        backgroundColor: AppConstant.appSecondoryColor,
      ),
      drawer: const DrawerWidget(),
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
            ],
          ),
        ),
      ),
    );
  }
}
