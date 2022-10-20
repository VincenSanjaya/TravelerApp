// import 'package:flutter/material.dart';
// import 'package:flutter_traveler_app/utils/constant.dart';
// import 'package:flutter_traveler_app/utils/utils.dart';
//
// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   State<Body> createState() => _BodyState();
// }
//
// class _BodyState extends State<Body> {
//   int currentPage = 0;
//   List<Map<String, String>> splashData = [
//     {
//       "text-1": "Hi! Travelers",
//       "text-2": "Selamat Datang!",
//       "image": "assets/images/images-1.png"
//     },
//     {
//       "text-1": "Jelajahi",
//       "text-2": "INDONESIA",
//       "image": "assets/images/images-2.png"
//     },
//     {
//       "text-1": "Dalam Genggaman Anda",
//       "text-2": "",
//       "image": "assets/images/images-3.png"
//     },
//     {
//       "text-1": "Bersama Traveler",
//       "text-2": "Explore the world, Buy anything",
//       "image": "assets/images/images-4.png"
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 3,
//               child: PageView.builder(
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//                 itemCount: splashData.length,
//                 itemBuilder: (context, index) => SplashContent(
//                   text: splashData[index]["text"],
//                   image: splashData[index]["image"],
//                 ),
//               ),
//             ),
//             Expanded(
//                 flex: 2,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
//                   child: Column(
//                     children: <Widget>[
//                       Spacer(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                             splashData.length, (index) => buildDot(index: index)),
//                       ),
//                       Spacer(flex: 3,),
//                       SizedBox(
//                         width: double.infinity,
//                         height: AppLayout.getHeight(56),
//                         child: TextButton(
//                             style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(Styles.primaryColor),
//                                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                                     RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(20.0),
//                                     )
//                                 )
//                             ),
//                             onPressed: () {
//                             } ,
//                             child: Text(
//                               "Continue",
//                               style: TextStyle(
//                                   fontSize: AppLayout.getWidth(10),
//                                   color: Colors.white),
//                             )),
//                       ),
//                       Spacer(),
//                     ],
//                   ),
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
//
//   AnimatedContainer buildDot({required int index}) {
//     return AnimatedContainer(
//       duration: kAnimationDuration,
//       margin: EdgeInsets.only(right: AppLayout.getWidth(5)),
//       height: 6,
//       width: currentPage == index ? 21 : 6,
//       decoration: BoxDecoration(
//           color: currentPage == index ? Styles.primaryColor : Color(0xFFD8D8D8),
//           borderRadius: BorderRadius.circular(3)),
//     );
//   }
// }
