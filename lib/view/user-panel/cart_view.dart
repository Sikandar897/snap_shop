import 'package:flutter/material.dart';
import 'package:snap_shop/utils/appconstant.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        foregroundColor: AppConstant.appTextColor,
        backgroundColor: AppConstant.appMainColor,
      ),
      body: const Center(
        child: Text(
          'Cart Screen',
          style: TextStyle(color: AppConstant.appMainColor),
        ),
      ),
    );
  }
}
