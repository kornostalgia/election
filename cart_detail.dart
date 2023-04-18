
import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/cost/cost_controller.dart';
import 'package:korelectioninfo/cost/price.dart';
import 'package:korelectioninfo/cost/product_item.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({Key? key, required this.controller}) : super(key: key);

  final CostController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Cart",
          style: TextStyle(
              fontSize: 30,
              color: Colors.orange),
          ),
          ...List.generate(
            controller.cart.length,
                (index) => CartDetailsCard(productItem: controller.cart[index]),
          ),
          SizedBox(height: defaultPadding),
          // SizedBox(
          //   width: double.infinity,
          //   child: ElevatedButton(
          //     onPressed: () {},
          //     child: Text("Next - \$30"),
          //   ),
          // )
        ],
      ),
    );
  }
}

class CartDetailsCard extends StatelessWidget {
  const CartDetailsCard({
    Key? key,
    required this.productItem,
  }) : super(key: key);

  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        backgroundImage: AssetImage(productItem.product!.image!),
      ),
      title: Text(
        productItem.product!.title!,
      ),
      trailing: FittedBox(
        child: Row(
          children: [
            Price(amount: "20"),
            Text(
              "  x ${productItem.quantity}",
            )
          ],
        ),
      ),
    );
  }
}