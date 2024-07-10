import 'package:elmadrasah/ContactFile/contact_file5.dart';
import 'package:elmadrasah/ContactFile/contact_file7.dart';
import 'package:elmadrasah/widgets/custom_option_button.dart';
import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';

class ContactFileSix extends StatefulWidget {
  static const String routeName = 'contactInfoSix';

  const ContactFileSix({super.key});

  @override
  State<ContactFileSix> createState() => _ContactFileSixState();
}

class _ContactFileSixState extends State<ContactFileSix> {
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
                        width: MediaQuery.of(context).size.width * 0.21,
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
                        width: MediaQuery.of(context).size.width * 0.64,
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
                'كون الباقة التي تتناسب مع احتياجك \n توفير تجربة دراسية مخصصة ',
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
              'كم حصة اسبوعيا',
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
              CustomOptionButton(text: 'حصتين'),
              CustomOptionButton(text: 'حصة واحدة'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'كم عدد ساعات الحصة الواحدة',
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
              CustomOptionButton(text: 'ساعتين'),
              CustomOptionButton(text: 'ساعة و نصف'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'ساعة واحدة'),
              CustomOptionButton(text: '30_دقيقة'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'ساعتين و نصف'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'مدة الاشتراك',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xAB0A0A0A)),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(2, 5), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 18.0, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0x4CFF0000),
                          ),
                          height: 25,
                          width: 150,
                          child: Center(
                              child: Text(
                            'خصم 15 %',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Text(
                        'ثلاثة فصول دراسية',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xB5000000),
                            fontSize: 16),
                      ),
                      Text(
                        'اثنا عشر شهرا',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xB5008F13),
                            fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 8.0, right: 5, left: 5),
                            child: Text(
                              'AED 650',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 5,
                            color: Color(0xFF009A03),
                          ),
                        ],
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
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Container(
                  width: 200,
                  height: 150,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(2, 5), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 18.0, bottom: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0x4CFF0000),
                          ),
                          height: 25,
                          width: 150,
                          child: Center(
                              child: Text(
                            'خصم 30 %',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      Text(
                        'فصلين دراسيين',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xB5000000),
                            fontSize: 16),
                      ),
                      Text(
                        'ستة اشهر',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xB5008F13),
                            fontSize: 16),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 8.0, right: 5, left: 5),
                            child: Text(
                              'AED 800',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 5,
                            color: Color(0xFF009A03),
                          ),
                        ],
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
              NavNextButton(action: ContactFileSeven.routeName),
              NavPrevButton(
                action: ContactFileFive.routeName,
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
