import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({Key? key, required this.size}) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
          height: size.height * 0.2,
          child: Positioned(
            top: 100,
            child: Stack(children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                  bottom: kDefaultPadding,
                ),
                height: size.height * 0.2 - 47,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
                child: Row(children: <Widget>[
                  Text("Hi Vincencio!",
                      style: TextStyle(
                          color: Styles.white, fontWeight: FontWeight.bold, fontSize: 24)),
                  Spacer(),
                  GestureDetector(
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications_none,
                        color: Styles.white,
                      ),
                      onPressed: () {

                      },
                    ),
                  )

                ]),
              ),
              Positioned(
                bottom:25,
                left: 0,
                right: 0,
                child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: Styles.primaryColor.withOpacity(0.33),
                        )
                      ],
                    ),
                    child: TextField(
                      onChanged: (value) {},
                      style: TextStyle(color: Styles.black, fontWeight: FontWeight.w600),
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Styles.primaryColor.withOpacity(0.5), height: 1.4),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: Styles.primaryColor,
                        ),
                      ),
                    )),
              ),
            ]),
          )),
    );
  }
}
