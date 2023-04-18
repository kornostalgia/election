//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:korelectioninfo/president/profile_page.dart';
//
// class MindOne extends StatelessWidget {
//   static var screenHeight;
//   static var screenWidth;
//
//   Widget buildSingleItem({
//     images,
//     title,
//     subTitle,
//     price,
//     context,
//     rating,
//   }) {
//     return GestureDetector(
//       onTap: () {
//         Get.to(ProfilePage());
//       },
//       child: Container(
//         width: screenWidth * 0.4 + 10,
//         height: screenHeight * 0.3,
//         margin: EdgeInsets.all(15.0),
//         padding: EdgeInsets.all(10.0),
//         alignment: Alignment.center,
//         decoration: BoxDecoration(
//           color: Color(0xff17191f),
//           borderRadius: BorderRadius.circular(20.0),
//         ),
//         child: Stack(
//           alignment: Alignment.topRight,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   flex: 2,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           blurRadius: 2.0,
//                           spreadRadius: 1.0,
//                           color: Color(0xff30221f),
//                         ),
//                       ],
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: AssetImage(images),
//                       ),
//                       borderRadius: BorderRadius.circular(20.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10.0,
//                 ),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         title,
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 3,
//                       ),
//                       Text(
//                         subTitle,
//                         style: TextStyle(
//                           color: Color(0xffaeaeae),
//                           fontSize: 10,
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 "\$\t",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     color: Color(0xffd17842)),
//                               ),
//                               Text(
//                                 "$price",
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Container(
//                             decoration: BoxDecoration(
//                               color: Color(0xffd17842),
//                               borderRadius: BorderRadius.circular(7),
//                             ),
//                             child: Icon(
//                               Icons.add,
//                               size: 25,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//               height: 20.0,
//               width: 55.0,
//               decoration: BoxDecoration(
//                 color: Color(0xff231715),
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(20.0),
//                   bottomLeft: Radius.circular(15.0),
//                 ),
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   Icon(
//                     Icons.star,
//                     size: 12,
//                     color: Color(0xffd17842),
//                   ),
//                   Text(
//                     "$rating",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     screenHeight = MediaQuery.of(context).size.height;
//     screenWidth = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Color(0xff0c0f14),
//       appBar: AppBar(
//         backgroundColor: Color(0xff0c0f14),
//         title: Text(
//           '더불어 민주당 경선일정',
//         ),
//       ),
//       body: SafeArea(
//         child: Expanded(
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(0, 10, 5, 0),
//                 child: ListTile(
//                   trailing: Text(
//                     "대선 후보자 현황",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//               ),
//               SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     buildSingleItem(
//                       context: context,
//                       images: "assets/cards/IMG_0334.JPG",
//                       title: "Cappuccino",
//                       subTitle: "With Oat Milk",
//                       price: 4.20,
//                       rating: 4.5,
//                     ),
//                     buildSingleItem(
//                       context: context,
//                       images: "assets/cards/IMG_0336.JPG",
//                       title: "Cappuccino",
//                       subTitle: "With Chocolate",
//                       price: 3.14,
//                       rating: 4.5,
//                     ),
//                     buildSingleItem(
//                       context: context,
//                       images: "assets/cards/IMG_0337.JPG",
//                       title: "Cappuccino",
//                       subTitle: "With Chocolate",
//                       price: 3.14,
//                       rating: 4.5,
//                     ),
//                     buildSingleItem(
//                       images: "assets/cards/IMG_0338.JPG",
//                       title: "Cappuccino",
//                       subTitle: "With Chocolate",
//                       price: 3.14,
//                       rating: 4.5,
//                     ),
//                     buildSingleItem(
//                       context: context,
//                       images: "assets/cards/IMG_0339.JPG",
//                       title: "Cappuccino",
//                       subTitle: "With Chocolate",
//                       price: 3.14,
//                       rating: 4.5,
//                     ),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(left: 5),
//                 child: ListTile(
//                   trailing: Text(
//                     "대선 주요 일정",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 30,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: EdgeInsets.all(10.0),
//                 margin: EdgeInsets.symmetric(horizontal: 15),
//                 height: screenHeight * 0.25,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Color(0xff171b22),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "정당별 주요 경선 일정\n시기별 주요 선거 일정"
//                             "\n예비후보자 등록신청\n예비후보자 선거운동",
//                             style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
