// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deadline1 extends StatefulWidget {
  const Deadline1({super.key});

  @override
  State<Deadline1> createState() => _Deadline1State();
}

class _Deadline1State extends State<Deadline1> {
  TextEditingController textfield1 = TextEditingController();
  TextEditingController textfield2 = TextEditingController();
  double? natija;
  String ynatija = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "1-deadline",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: CupertinoTextField(
                style: TextStyle(fontSize: 24),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  border: Border.all(color: Colors.blueAccent, width: 0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                placeholder: "Birinchi son",

                controller: textfield1,
                keyboardType: TextInputType.number,
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: CupertinoTextField(
                style: TextStyle(fontSize: 24),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.withOpacity(0.1),
                  border: Border.all(color: Colors.blueAccent, width: 0.5),
                  borderRadius: BorderRadius.circular(12),
                ),
                placeholder: "Ikkinchi son",
                controller: textfield2,
                keyboardType: TextInputType.number,
              ),
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 65,
                  height: 65,
                  child: CupertinoButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (textfield1.text.isNotEmpty &&
                          textfield2.text.isNotEmpty) {
                        setState(() {
                          natija =
                              double.parse(textfield1.text) +
                              double.parse(textfield2.text);
                          textfield1.clear();
                          textfield2.clear();
                          ynatija = natija.toString();
                        });
                      }
                    },
                    child: Text(
                      "+",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: CupertinoButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (textfield1.text.isNotEmpty &&
                          textfield2.text.isNotEmpty) {
                        setState(() {
                          natija =
                              double.parse(textfield1.text) -
                              double.parse(textfield2.text);
                          textfield1.clear();
                          textfield2.clear();
                          ynatija = natija.toString();
                        });
                      }
                    },
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: CupertinoButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (textfield1.text.isNotEmpty &&
                          textfield2.text.isNotEmpty) {
                        setState(() {
                          natija =
                              double.parse(textfield1.text) *
                              double.parse(textfield2.text);
                          textfield1.clear();
                          textfield2.clear();
                          ynatija = natija.toString();
                        });
                      }
                    },
                    child: Text(
                      "x",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  width: 65,
                  height: 65,
                  child: CupertinoButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (textfield1.text.isNotEmpty &&
                          textfield2.text.isNotEmpty) {
                        setState(() {
                          natija =
                              double.parse(textfield1.text) /
                              double.parse(textfield2.text);
                          textfield1.clear();
                          textfield2.clear();
                          ynatija = natija.toString();
                        });
                      }
                    },
                    child: Text(
                      "/",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            ynatija.isNotEmpty
                ? Text(
                  "Natija: $ynatija",
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                )
                : SizedBox(),

            SizedBox(height: 20),
            ynatija.isEmpty
                ? SizedBox()
                : SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                    color: Colors.red,
                    child: Text(
                      "Tozalash",
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                    onPressed: () {
                      setState(() {
                        ynatija = "";
                      });
                    },
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
