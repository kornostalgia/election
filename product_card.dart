import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/cost/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.title!,
              child: Image.network(product.image!),
            ),
            SizedBox(height: 5,),
            Text(
              product.title!,
              style: TextStyle(
                fontSize: 20,
                  color: Colors.orange),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${product.price.toString()}',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent),
                ),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xFFE3E2E3),
                  child: SvgPicture.asset('assets/icons/click.svg'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

