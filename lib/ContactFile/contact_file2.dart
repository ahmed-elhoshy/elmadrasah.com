import 'package:elmadrasah/ContactFile/contact_file3.dart';
import 'package:elmadrasah/widgets/custom_option_button.dart';
import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';

import 'contact_file1.dart';

class ContactFileTwo extends StatefulWidget {
  static const String routeName = 'contactInfoTwo';

  const ContactFileTwo({super.key});

  @override
  State<ContactFileTwo> createState() => _ContactFileTwoState();
}

class _ContactFileTwoState extends State<ContactFileTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        title: Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.35),
          child: Text(
            "المدرسة.كوم",
            style: TextStyle(
                fontSize: 27,
                color: Color(0xFF009A03),
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.003,
          ),
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Center(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                bottomLeft: Radius.circular(40))),
                        height: 13,
                        width: MediaQuery.of(context).size.width * 0.61,
                      ),
                      Container(
                        height: 18,
                        width: MediaQuery.of(context).size.width * 0.04,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(color: Colors.green, width: 4)),
                      ),
                      Container(
                        height: 13,
                        width: MediaQuery.of(context).size.width * 0.24,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40))),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'اختار المرحاة الدراسية التي تناسبك \n  افاقك و فتح باب المعرفة؟ ام ولي\nامر تود متابعة رحلة ابنك التعليمية؟',
                style: TextStyle(fontSize: 20, color: Color(0x98000000)),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFFF5BB00),
                ),
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.025,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 20),
            child: Text(
              'حدد المرحلة الدراسية',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xAB0A0A0A)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'التعليم الابتدائي'),
              CustomOptionButton(text: 'رياض الاطفال'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'التعليم الثانوي'),
              CustomOptionButton(text: 'التعليم المتوسط'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'حدد صفك الدراسي',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xAB0A0A0A)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'الصف السادس'),
              CustomOptionButton(text: 'الصف الخامس'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'الصف الثامن'),
              CustomOptionButton(text: 'الصف السابع'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'حدد المنهج الدراسي',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xAB0A0A0A)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'المنهج الامريكي'),
              CustomOptionButton(text: 'المنهج البريطاني'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'المنهج الوزاري'),
              CustomOptionButton(text: 'اخري'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavNextButton(action: ContactFileThree.routeName),
              NavPrevButton(
                action: ContactFileOne.routeName,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}
