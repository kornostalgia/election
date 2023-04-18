import 'package:flutter/material.dart';
import 'package:korelectioninfo/constant.dart';

class CostHeader extends StatelessWidget {
  const CostHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: headerHeight,
      color: Colors.grey[500],
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
              Text(
                "항목을 클릭하시면 자세한 정보를 보실 수 있습니다.",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                ),
              ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/icons/icon.png"),
          )
        ],
      ),
    );
  }
}