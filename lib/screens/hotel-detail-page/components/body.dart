import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/home-screen/components/carousel-banner.dart';
import 'package:flutter_traveler_app/screens/hotel-payment-screen/hotel_payment_screen.dart';
import 'package:flutter_traveler_app/screens/hotel-screen/components/hotel-list.dart';
import 'package:flutter_traveler_app/screens/hotel-screen/hotel-screen.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:readmore/readmore.dart';

class BodyHotelDetail extends StatefulWidget {
  const BodyHotelDetail({Key? key}) : super(key: key);

  @override
  State<BodyHotelDetail> createState() => _BodyHotelDetailState();
}

class _BodyHotelDetailState extends State<BodyHotelDetail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/images/hotel-image-12.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: AppLayout.getHeight(350)),
                  height: 500,
                  width: AppLayout.getScreenWidth(),
                  decoration: BoxDecoration(
                    color: Styles.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 50, left: 25),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "The Apruva Kempinski Bali",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Styles.black,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(left: 25),
                        child: Text(
                          "Nusa Dua, Bali",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Styles.grey,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 25),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "4.7 Star Hotel",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Styles.primaryColor,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 25),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Deskripsi",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Styles.black,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10, left: 25, right: 25),
                        alignment: Alignment.centerLeft,
                        child: ReadMoreText(
                          "Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                          trimLines: 3,
                          colorClickableText: Styles.primaryColor,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Selengkapnya',
                          trimExpandedText: '..Lebih Dikit',
                          moreStyle: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(height: 20,),
                      BannerCarousel()
                    ],
                  ),
                ),
                Positioned(
top: 50,
left: 20,
                  child: Container(
                    child: IconButton(onPressed: () {
                      Navigator.pushNamed(context, HotelScreen.routeName);
                    }, icon: Icon(Icons.arrow_back_ios, color: Styles.white,)),
                  ),
                )
              ],
            ),
            Container(
                height: 100,
                width: AppLayout.getScreenWidth(),
                decoration: BoxDecoration(
                  color: Styles.lightGrey.withOpacity(0.5),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp 4.410.000,00",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Styles.black,
                            ),
                          ),
                          Text(
                            "per Malam",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Styles.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, HotelPaymentScreen.routeName);
                        },
                        child: Text(
                          "Pesan Kamar",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Styles.white,
                          ),
                        ),

                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                          backgroundColor: Styles.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
