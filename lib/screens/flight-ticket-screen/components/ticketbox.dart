import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_traveler_app/utils/constant.dart';
import 'package:flutter_traveler_app/utils/utils.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class TicketBox extends StatefulWidget {
  const TicketBox({
    Key? key,
  }) : super(key: key);

  @override
  State<TicketBox> createState() => _TicketBoxState();
}

class _TicketBoxState extends State<TicketBox> {
  FocusNode searchFocusNode = FocusNode();
  FocusNode textFieldFocusNode = FocusNode();
  TextEditingController _controller = TextEditingController();
  late SingleValueDropDownController _cnt;
  late SingleValueDropDownController _cnt2;
  late MultiValueDropDownController _cntMulti;
  TextEditingController _date = TextEditingController();
  TextEditingController _date2 = TextEditingController();

  @override
  void initState() {
    _cnt = SingleValueDropDownController();
    _cnt2 = SingleValueDropDownController();
    _cntMulti = MultiValueDropDownController();
    super.initState();
  }

  @override
  void dispose() {
    _cnt.dispose();
    _cnt2.dispose();
    _cntMulti.dispose();
    super.dispose();
  }

  //make _controller show picked amount
  void _onChanged(String value) {
    setState(() {
      _controller.text = value;
    });
  }

  int indexDewasa = 0;
  int indexAnak = 0;
  int indexBayi = 0;

  final amountDewasa = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  final amountAnak = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];
  final amountBayi = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
  ];

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        builder: (context) => CupertinoSlider());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      margin:
          EdgeInsets.only(top: AppLayout.getHeight(165), left: 20, right: 20),
      height: 555,
      width: 350,
      decoration: BoxDecoration(
        color: Styles.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(children: [
        Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10, left: 15),
              height: 100,
              width: AppLayout.getScreenWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Styles.darkGrey,
                  width: 2,
                ),
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Dari",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Styles.grey,
                    ),
                  ),
                ),
                fromDestination(),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 10, left: 15),
              height: 100,
              width: AppLayout.getScreenWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Styles.darkGrey,
                  width: 2,
                ),
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Menuju",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Styles.grey,
                    ),
                  ),
                ),
                toDestination(),
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 10, left: 5),
                  height: 72,
                  width: AppLayout.getScreenWidth() / 3 + 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Styles.darkGrey,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "Keberangkatan",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Styles.grey,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: TextField(
                              controller: _date,
                              decoration: InputDecoration(
                                hintText: "Pilih Tanggal",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Styles.black,
                                ),
                                focusColor: Styles.primaryColor,
                                border: InputBorder.none,
                              ),
                              onTap: () async {
                                DateTime? pickeddate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime(2025),
                                );
                                if (pickeddate != null) {
                                  setState(() {
                                    _date.text = DateFormat('dd-MM-yyyy')
                                        .format(pickeddate);
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 10, left: 5),
                  height: 72,
                  width: AppLayout.getScreenWidth() / 3 + 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Styles.darkGrey,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Text(
                            "Kepulangan",
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w800,
                              color: Styles.grey,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              top: 10,
                            ),
                            child: TextField(
                              controller: _date2,
                              decoration: InputDecoration(
                                hintText: "Pilih Tanggal",
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Styles.black,
                                ),
                                focusColor: Styles.primaryColor,
                                border: InputBorder.none,
                              ),
                              onTap: () async {
                                DateTime? pickeddate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2022),
                                  lastDate: DateTime(2025),
                                );
                                if (pickeddate != null) {
                                  setState(() {
                                    _date2.text = DateFormat('dd-MM-yyyy')
                                        .format(pickeddate);
                                  });
                                } else {
                                  print("Date is not selected");
                                }
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(top: 10, left: 5),
              height: 72,
              width: AppLayout.getScreenWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Styles.darkGrey,
                  width: 2,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Text(
                        "Penumpang",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w800,
                          color: Styles.grey,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: "Pilih Penumpang",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                              color: Styles.black,
                            ),
                            focusColor: Styles.primaryColor,
                            border: InputBorder.none,
                          ),
                          onTap: () => _showModalBottomSheet(context),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            //button seacrh with darkerprimary dan white text
            Container(
              width: AppLayout.getScreenWidth(),
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Cari Tiket",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Styles.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Styles.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            top: 87,
            left: 240,
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Styles.white,
                border: Border.all(
                  color: Styles.darkGrey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Icons.swap_vert,
                color: Styles.black,
                size: 30,
              ),
            ))
      ]),
    );
  }

  Container toDestination() {
    return Container(
      padding: EdgeInsets.only(right: 15),
      alignment: Alignment.centerLeft,
      child: DropDownTextField(
        // initialValue: "name4",
        controller: _cnt2,
        clearOption: true,
        enableSearch: true,
        clearIconProperty: IconProperty(color: Styles.primaryColor),
        searchDecoration:
            const InputDecoration(hintText: "enter your custom hint text here"),
        validator: (value) {
          if (value == null) {
            return "Required field";
          } else {
            return null;
          }
        },
        dropDownItemCount: 6,

        dropDownList: const [
          DropDownValueModel(name: 'Semarang (SRC)', value: "value1"),
          DropDownValueModel(
              name: 'Jakarta (CGK)',
              value: "value2",
              toolTipMsg:
                  "DropDownButton is a widget that we can use to select one unique value from a set of values"),
          DropDownValueModel(name: 'Malang (MLG)', value: "value3"),
          DropDownValueModel(
              name: 'Surabaya (SUB)',
              value: "value4",
              toolTipMsg:
                  "DropDownButton is a widget that we can use to select one unique value from a set of values"),
          DropDownValueModel(name: 'Yogyakarta (JOG)', value: "value5"),
          DropDownValueModel(name: 'Bandung (BDO)', value: "value6"),
          DropDownValueModel(name: 'Bali (DPS)', value: "value7"),
          DropDownValueModel(name: 'Lombok (LOP)', value: "value8"),
        ],
        onChanged: (val) {},
      ),
    );
  }

  Container fromDestination() {
    return Container(
      padding: EdgeInsets.only(right: 15),
      alignment: Alignment.centerLeft,
      child: DropDownTextField(
        // initialValue: "name4",
        controller: _cnt,
        clearOption: true,
        enableSearch: true,
        clearIconProperty: IconProperty(color: Styles.primaryColor),
        searchDecoration: const InputDecoration(hintText: "Pilih Bandara"),
        validator: (value) {
          if (value == null) {
            return "Required field";
          } else {
            return null;
          }
        },
        dropDownItemCount: 6,

        dropDownList: const [
          DropDownValueModel(name: 'Semarang (SRC)', value: "value1"),
          DropDownValueModel(
              name: 'Jakart (JKT)',
              value: "value2",
              toolTipMsg:
                  "DropDownButton is a widget that we can use to select one unique value from a set of values"),
          DropDownValueModel(name: 'Batam (BTH)', value: "value3"),
          DropDownValueModel(
              name: 'Makassar (UPG)',
              value: "value4",
              toolTipMsg:
                  "DropDownButton is a widget that we can use to select one unique value from a set of values"),
          DropDownValueModel(name: 'Yogyakarta (JOG)', value: "value5"),
          DropDownValueModel(name: 'Samarinda (SRI)', value: "value6"),
          DropDownValueModel(name: 'Bali (DPS)', value: "value7"),
          DropDownValueModel(name: 'Palangkaraya (PKY)', value: "value8"),
        ],
        onChanged: (val) {},
      ),
    );
  }

  Container CupertinoSlider() {
    return Container(
        height: 380,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                "Tambah Penumpang",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Styles.primaryColor,
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Dewasa",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Styles.primaryColor,
                            ),
                          ),
                        ),
                        //cupertino picker
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Styles.primaryColor,
                                width: 1,
                              ),
                            ),
                          ),
                          child: CupertinoPicker(
                              backgroundColor: Colors.white,
                              itemExtent: 50,
                              onSelectedItemChanged: (int index) {
                                setState(() => this.indexDewasa = index);

                                final item1 = amountDewasa[index];
                                print(item1);
                              },
                              children: amountDewasa
                                  .map((item1) => Center(
                                        child: Text(
                                          item1,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Styles.primaryColor,
                                          ),
                                        ),
                                      ))
                                  .toList()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Anak",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Styles.primaryColor,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Styles.primaryColor,
                                width: 1,
                              ),
                            ),
                          ),
                          child: CupertinoPicker(
                              backgroundColor: Colors.white,
                              itemExtent: 50,
                              onSelectedItemChanged: (int index) {
                                setState(() => this.indexAnak = index);

                                final item2 = amountAnak[index];
                                print(item2);
                              },
                              children: amountAnak
                                  .map((item2) => Center(
                                        child: Text(
                                          item2,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Styles.primaryColor,
                                          ),
                                        ),
                                      ))
                                  .toList()),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Bayi",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Styles.primaryColor,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 150,
                          decoration: BoxDecoration(
                            border: Border.symmetric(
                              vertical: BorderSide(
                                color: Styles.primaryColor,
                                width: 1,
                              ),
                            ),
                          ),
                          child: CupertinoPicker(
                              backgroundColor: Colors.white,
                              itemExtent: 50,
                              onSelectedItemChanged: (int index) {
                                setState(() => this.indexBayi = index);

                                final item3 = amountBayi[index];
                                print(item3);
                              },
                              children: amountBayi
                                  .map((item3) => Center(
                                        child: Text(
                                          item3,
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600,
                                            color: Styles.primaryColor,
                                          ),
                                        ),
                                      ))
                                  .toList()),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //make a button when tap it show item that choosen
            Container(
              width: AppLayout.getScreenWidth(),
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Styles.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);

                  setState(() {
                    _controller.text = amountDewasa[indexDewasa] +
                        " Dewasa, " +
                        amountAnak[indexAnak] +
                        " Anak, " +
                        amountBayi[indexBayi] +
                        " Bayi";
                  });
                },
                child: Text(
                  "Haiii <3",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
