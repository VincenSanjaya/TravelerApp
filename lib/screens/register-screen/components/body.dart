import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyRegister extends StatefulWidget {
  const BodyRegister({Key? key}) : super(key: key);

  @override
  State<BodyRegister> createState() => _BodyRegisterState();
}

class _BodyRegisterState extends State<BodyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 70),
            child: Text(
              "Registrasi",
              style: TextStyle(
                  fontSize: 36,
                  color: Styles.black,
                  fontWeight: FontWeight.w800),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 25),
            child: Text(
              "Halo Calon Travelers, Silahkan Registrasi\nUntuk Mendapatkan Informasi Menarik",
              style: TextStyle(
                  fontSize: 15,
                  color: Styles.black,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith(
                      (states) => Styles.darkerPrimary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(33.5),
                      vertical: AppLayout.getHeight(19))),
                ),
                child: Icon(
                  FontAwesomeIcons.google,
                ),
              ),
              Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Styles.darkerPrimary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(33.5),
                        vertical: AppLayout.getHeight(19))),
                  ),
                  child: Icon(
                    FontAwesomeIcons.facebook,
                  ))
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nama",
                    style: TextStyle(
                      fontSize: 20,
                      color: Styles.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  cursorColor: Styles.primaryColor,
                  style: TextStyle(
                      color: Styles.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Styles.primaryColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    hintText: "Enter Your Name",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 20,
                      color: Styles.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Styles.primaryColor,
                  style: TextStyle(
                      color: Styles.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Styles.primaryColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    hintText: "Enter Your Email",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 20,
                      color: Styles.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  cursorColor: Styles.primaryColor,
                  style: TextStyle(
                      color: Styles.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Styles.primaryColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    hintText: "Enter Your Password",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Styles.primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(Size(342, 65)),
              ),
              child: Text(
                "Jadilah Travelers!",
                style: TextStyle(
                    fontSize: 20,
                    color: Styles.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sudah punya akun? ",
                style: TextStyle(
                    fontSize: 15,
                    color: Styles.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                child: Text(
                  "Masuk",
                  style: TextStyle(
                      fontSize: 15,
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
