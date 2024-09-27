import 'package:flutter/material.dart';
import 'package:snap_shop/utils/appconstant.dart';

import '../../widgets/drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snap Shop'),
        foregroundColor: AppConstant.appTextColor,
        backgroundColor: AppConstant.appSecondoryColor,
      ),
      drawer: const DrawerWidget(),
    );
  }
}
