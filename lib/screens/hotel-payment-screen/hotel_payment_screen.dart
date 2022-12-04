import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/hotel-detail-page/hotel-detail-screen.dart';

import '../../utils/constant.dart';
import 'components/body_hotel_payment.dart';

class HotelPaymentScreen extends StatefulWidget {
  static String routeName = '/hotelpayment';
  HotelPaymentScreen({Key? key}) : super(key: key);

  @override
  _HotelPaymentScreenState createState() => _HotelPaymentScreenState();
}

class _HotelPaymentScreenState extends State<HotelPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text('Pembayaran Kamu Belum Selesai', style: TextStyle(color: Styles.black, ),),
              content: Text('Apakah kamu yakin ingin keluar?\nKamu akan kehilangan data yang sudah kamu isi.', style: TextStyle(color: Styles.black, fontWeight: FontWeight.w600 ),),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Cancel'),
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HotelDetailScreen())),
                  child: Text('OK'),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Styles.primaryColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Order Details',
          style: TextStyle(
            color: Styles.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
      ),
      body: BodyHotelPayment(),
    );
  }
}


