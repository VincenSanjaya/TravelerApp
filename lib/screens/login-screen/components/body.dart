import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/components/bottom-navigation.dart';
import 'package:flutter_traveler_app/screens/home-screen/home-screen.dart';
import 'package:flutter_traveler_app/screens/register-screen/register-screen.dart';
import 'package:flutter_traveler_app/utils/auth_service.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class BodyLogin extends StatefulWidget {
  const BodyLogin({Key? key}) : super(key: key);

  @override
  State<BodyLogin> createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 90),
            child: Text("Masuk", style: TextStyle(fontSize: 36, color: Styles.black, fontWeight: FontWeight.w800),),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(top: 25),
            child: Text("Selamat Datang kembali Travelers!\nKami telah merindukanmu", style: TextStyle(fontSize: 15, color: Styles.black, fontWeight: FontWeight.w600),),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Row(
              children: <Widget> [
                ElevatedButton(onPressed: () {
                  AuthService().signInWithGoogle().then((result) {
                    if (result != null) {
                      Get.offAllNamed("/home");
                    }
                  });
                },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Styles.darkerPrimary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal:  AppLayout.getWidth(33.5), vertical: AppLayout.getHeight(19))),
                  ),
                    child: Image.asset("assets/images/google_icon.png", width: 24, height: 24,),
          ),
                Spacer(),
                ElevatedButton(onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Styles.darkerPrimary),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: AppLayout.getWidth(33.5), vertical: AppLayout.getHeight(19))),
                  ),
                    child: Image.asset("assets/images/facebook_icon.png", width: 24, height: 24,),
          )
        ]
            ),
          ),
          Container (
            margin: EdgeInsets.only(top: 40),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Email", style: TextStyle(fontSize: 20, color: Styles.black,),),
                ),

                SizedBox(height: 5,),

                TextField(
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Styles.primaryColor,
                  style: TextStyle(color: Styles.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Styles.primaryColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    hintText: "Enter Your Email",
                  ),
                )
              ],
            ),
          ),
          Container (
            margin: EdgeInsets.only(top: 25),
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text("Password", style: TextStyle(fontSize: 20, color: Styles.black,),),
                ),

                SizedBox(height: 5,),

                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  cursorColor: Styles.primaryColor,
                  style: TextStyle(color: Styles.black, fontWeight: FontWeight.w600),
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Styles.primaryColor, width: 2.0),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                    hintText: "Enter Your Password",
                  ),
                )
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, BottomBar.routeName);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith((states) => Styles.primaryColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                fixedSize: MaterialStateProperty.all(Size(342, 65)),
              ),
              child: Text("Masuk", style: TextStyle(fontSize: 20, color: Styles.white, fontWeight: FontWeight.w700),),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Belum punya akun? ", style: TextStyle(fontSize: 15, color: Styles.black, fontWeight: FontWeight.w600),),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                },
                child: Text("Daftar", style: TextStyle(fontSize: 15, color: Styles.primaryColor, fontWeight: FontWeight.w800),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
