import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';
import 'package:korelectioninfo/cost/cart_short_view.dart';
import 'package:korelectioninfo/cost/cost_controller.dart';
import 'package:korelectioninfo/cost/cost_header.dart';
import 'package:korelectioninfo/cost/detail_screen.dart';
import 'package:korelectioninfo/cost/product.dart';
import 'package:korelectioninfo/cost/product_card.dart';

class CostHome extends StatelessWidget {
  final controller = CostController();

  void _onVerticalGesture(DragUpdateDetails details) {
    if (details.primaryDelta! < -0.7) {
      controller.changeCostState(CostState.cart);
    } else if (details.primaryDelta! > 12) {
      controller.changeCostState(CostState.normal);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: secondaryColor,
        centerTitle: true,
        title: Text(
          '선거비용에 대해 알아봅니다.',
          style: TextStyle(
            fontFamily: 'Jua',
            fontSize: 20,
          ),
        ),
      ),
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.grey[500],
          child: AnimatedBuilder(
              animation: controller,
              builder: (context, _) {
                return LayoutBuilder(
                  builder: (context, BoxConstraints constraints) {
                    return Stack(
                      children: [
                        AnimatedPositioned(
                          duration: panelTransition,
                          top: controller.costState == CostState.normal
                              ? headerHeight
                              : -(constraints.maxHeight -
                              cartBarHeight * 2 -
                              headerHeight),
                          left: 0,
                          right: 0,
                          height: constraints.maxHeight -
                              headerHeight -
                              cartBarHeight,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: const BorderRadius.only(
                                bottomLeft:
                                Radius.circular(defaultPadding * 1.5),
                                bottomRight:
                                Radius.circular(defaultPadding * 1.5),
                              ),
                            ),
                            child: GridView.builder(
                              itemCount: myProducts.length,
                              gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1.0,
                                mainAxisSpacing: defaultPadding,
                                crossAxisSpacing: defaultPadding,
                              ),
                              itemBuilder: (context, index) => ProductCard(
                                product: myProducts[index],
                                press: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      transitionDuration:
                                      const Duration(milliseconds: 500),
                                      reverseTransitionDuration:
                                      const Duration(milliseconds: 500),
                                      pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                          FadeTransition(
                                            opacity: animation,
                                            child: DetailsScreen(
                                              product: myProducts[index],
                                              onProductAdd: () {
                                                controller.addProductToCart(
                                                    myProducts[index]);
                                              },
                                            ),
                                          ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: panelTransition,
                          bottom: 0,
                          left: 10,
                          right: 10,
                          height: controller.costState == CostState.normal
                              ? cartBarHeight
                              : (constraints.maxHeight - cartBarHeight),
                          child: GestureDetector(
                            onVerticalDragUpdate: _onVerticalGesture,
                            child: Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              color: Colors.grey[500],
                              alignment: Alignment.topLeft,
                              child: AnimatedSwitcher(
                                duration: panelTransition,
                                child: CardShortView(controller: controller)
                              ),
                            ),
                          ),
                        ),
                        AnimatedPositioned(
                          duration: panelTransition,
                          top: controller.costState == CostState.normal
                              ? 0
                              : -headerHeight,
                          right: 0,
                          left: 0,
                          height: headerHeight,
                          child: CostHeader(),
                        ),
                        AnimatedPositioned(
                          duration: panelTransition,
                          top: controller.costState == CostState.normal
                              ? 0
                              : -headerHeight,
                          right: 0,
                          left: 0,
                          height: headerHeight,
                          child: CostHeader(),
                        ),
                      ],
                    );
                  },
                );
              }),
        ),
      ),
    );
  }
}