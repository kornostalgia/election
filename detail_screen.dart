import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/cost/product.dart';
import 'package:shimmer/shimmer.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {Key? key, required this.product, required this.onProductAdd})
      : super(key: key);

  final Product product;
  final VoidCallback onProductAdd;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String _cartTag = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: secondaryColor,
        centerTitle: true,
        title: Shimmer.fromColors(
          child: Text(
            widget.product.title!,
            style: TextStyle(
              fontFamily: 'Jua',
              fontSize: 20,
            ),
          ),
          baseColor: Color(0xffa4e804),
          highlightColor: Color(0xff615c5c),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ElevatedButton(
              onPressed: () {
                widget.onProductAdd();
                setState(() {
                  _cartTag = '_cartTag';
                });
                Navigator.pop(context);
              },
              child: Text(
                "선 택 하 기",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2.0,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              color: Colors.white,
              child: Hero(
                tag: widget.product.title! + _cartTag,
                child: Image.network(widget.product.image!),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.product.category!,
                    style: TextStyle(fontSize: 23, color: Colors.redAccent),
                  ),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: secondaryColor,
                    ),
                    onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(widget.product.snack!,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black))),
                        ),
                    child: Text("${widget.product.price!} 원",
                        style: TextStyle(fontSize: 18, color: Colors.white))),
                // ElevatedButton(
                //     style: ElevatedButton.styleFrom(),
                //     onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(content: Text('This is ElevatedButton'))),
                //     child: Text('ElevatedButton')),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              widget.product.subtitle!,
              style: TextStyle(
                height: 1.3,
                  letterSpacing: 2,
                  fontSize: 14,
                  color: Colors.black,
                  fontFamily: 'NanumGothic'),
            ),
          ),
        ],
      ),
    );
  }
}
