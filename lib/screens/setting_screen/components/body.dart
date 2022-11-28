import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/screens/setting_screen/components/button_setting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

class BodySetting extends StatefulWidget {
  const BodySetting({Key? key}) : super(key: key);

  @override
  State<BodySetting> createState() => _BodySettingState();
}

class _BodySettingState extends State<BodySetting> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            margin:  EdgeInsets.only(top: 20, left: 15, bottom: 10),
            child:  Text(
              "Akun & Keamanan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          ButtonSetting(title: "Informasi Akun", icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular), onTap: () {},),
          const Gap(2),
          ButtonSetting(title: "Keamanan Privasi Akun", icon: Icon(FluentSystemIcons.ic_fluent_lock_shield_regular), onTap: () {},),
          const Gap(2),
          ButtonSetting(title: "Kata Sandi Akun", icon: Icon(FluentSystemIcons.ic_fluent_phone_home_lock_regular), onTap: () {},),
          const Gap(30),
          Container(
            margin:  EdgeInsets.only(left: 15, bottom: 10),
            child:  Text(
              "Preferences",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ButtonSetting(title: "Domisili", icon: Icon(FluentSystemIcons.ic_fluent_flag_regular), onTap: () {},),
          const Gap(2),
          ButtonSetting(title: "Bahasa", icon: Icon(FluentSystemIcons.ic_fluent_translate_regular), onTap: () {},),
          const Gap(20),
          ButtonSetting(title: "Pengaturan Notifikasi", icon: Icon(FontAwesomeIcons.bell), onTap: () {}),
          const Gap(2),
          ButtonSetting(title: "Inbox & Promo", icon: Icon(FluentSystemIcons.ic_fluent_mail_all_regular), onTap: () {}),
          const Gap(2),
          ButtonSetting(title: "Daftar Penumpang", icon: Icon(FluentSystemIcons.ic_fluent_group_list_regular), onTap: () {}),
          const Gap(30),
          Container(
            margin:  EdgeInsets.only(left: 15, bottom: 10),
            child:  Text(
              "Traveler",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ButtonSetting(title: "Tentang Kami", icon: Icon(FluentSystemIcons.ic_fluent_airplane_regular), onTap: () {}),
          const Gap(2),
          ButtonSetting(title: "FAQ", icon: Icon(FluentSystemIcons.ic_fluent_notebook_question_mark_regular), onTap: () {}),
          const Gap(2),
          ButtonSetting(title: "Kebijakan Privasi", icon: Icon(FluentSystemIcons.ic_fluent_lock_regular), onTap: () {}),
          const Gap(15),
          InkWell(child: ButtonSetting(title: "Keluar", icon: Icon(FluentSystemIcons.ic_fluent_power_regular), onTap: () => FirebaseAuth.instance.signOut())),
        ],
      ),
    );
  }
}


