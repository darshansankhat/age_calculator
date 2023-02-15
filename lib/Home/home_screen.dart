import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Claculator extends StatefulWidget {
  const Claculator({Key? key}) : super(key: key);

  @override
  State<Claculator> createState() => _ClaculatorState();
}

class _ClaculatorState extends State<Claculator> {
  TextEditingController txtDD = TextEditingController();
  TextEditingController txtMM = TextEditingController();
  TextEditingController txtYYYY = TextEditingController();
  TextEditingController txtdd = TextEditingController();
  TextEditingController txtmm = TextEditingController();
  TextEditingController txtyy = TextEditingController();
  int? DD,MM,YYYY;
  int? dd,mm,yy;
  int? a,a1,a2;
  String imagePath = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Age Calculator"),
        actions: [Icon(Icons.more_vert)],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Color(0xff515151), Colors.black], radius: 0.75),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Today's Date",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      color: Color(0xff1A1A1A),
                      child: TextField(
                        controller: txtDD,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff646464),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xff646464),
                          ),
                          hintText: "DD",
                          hintStyle: TextStyle(color: Color(0xff646464)),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      color: Color(0xff1A1A1A),
                      child: TextField(
                        controller: txtMM,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff646464),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xff646464),
                          ),
                          hintText: "MM",
                          hintStyle: TextStyle(color: Color(0xff646464)),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      color: Color(0xff1A1A1A),
                      child: TextField(
                        controller: txtYYYY,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff646464),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xff646464),
                          ),
                          hintText: "YYYY",
                          hintStyle: TextStyle(color: Color(0xff646464)),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Date Of Birth",
                  style: TextStyle(color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 120,
                      color: Color(0xff1A1A1A),
                      child: TextField(
                        controller: txtdd,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff646464),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xff646464),
                          ),
                          hintText: "DD",
                          hintStyle: TextStyle(color: Color(0xff646464)),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      color: Color(0xff1A1A1A),
                      child: TextField(
                        controller: txtmm,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff646464),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xff646464),
                          ),
                          hintText: "MM",
                          hintStyle: TextStyle(color: Color(0xff646464)),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      color: Color(0xff1A1A1A),
                      child: TextField(
                        controller: txtyy,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff646464),
                          )),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Color(0xff646464),
                          ),
                          hintText: "YYYY",
                          hintStyle: TextStyle(color: Color(0xff646464)),
                          border: OutlineInputBorder(),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xff23B17E)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            DD = int.parse(txtDD.text);
                            MM = int.parse(txtMM.text);
                            YYYY = int.parse(txtYYYY.text);
                            dd = int.parse(txtdd.text);
                            mm = int.parse(txtmm.text);
                            yy = int.parse(txtyy.text);
                            a2=YYYY! - yy!;
                          });
                        },
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            a2=0;
                            DD=0;
                            MM=0;
                            YYYY=0;
                            mm=0;
                            dd=0;
                          });
                        },
                        child: Text(
                          "Clear",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Age",
                  style: TextStyle(color: Color(0xff01F0B1), fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1A1A),
                    border: Border.all(
                      width: 3,
                      color: Color(0xff646464),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Years",
                            style: TextStyle(
                                color: Color(0xff01F0B1), fontSize: 18),
                          ),
                          Text(
                            "$a2",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Months",
                            style: TextStyle(
                                color: Color(0xff01F0B1), fontSize: 18),
                          ),
                          Text(
                            "$MM",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Days",
                            style: TextStyle(
                                color: Color(0xff01F0B1), fontSize: 18),
                          ),
                          Text(
                            "$DD",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Next Birthday",
                  style: TextStyle(color: Color(0xff01F0B1), fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xff1A1A1A),
                    border: Border.all(
                      width: 3,
                      color: Color(0xff646464),
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Months",
                            style: TextStyle(
                                color: Color(0xff01F0B1), fontSize: 18),
                          ),
                          Text(
                            "$mm",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Days",
                            style: TextStyle(
                                color: Color(0xff01F0B1), fontSize: 18),
                          ),
                          Text(
                            "$dd",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Pic Your Image To Gallery",
                  style: TextStyle(color: Color(0xff01F0B1), fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    ImagePicker picker = ImagePicker();
                    XFile? image =
                        await picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      imagePath = image!.path;
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 301,
                    decoration: BoxDecoration(
                      color: Color(0xff1A1A1A),
                      border: Border.all(
                        width: 3,
                        color: Color(0xff646464),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Image.network("$imagePath"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
