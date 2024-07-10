import 'package:elmadrasah/ContactFile/contact_file2.dart';
import 'package:elmadrasah/ContactFile/contact_file4.dart';
import 'package:elmadrasah/widgets/custom_option_button.dart';
import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';

class ContactFileThree extends StatefulWidget {
  static const String routeName = 'contactInfoThree';

  const ContactFileThree({super.key});

  @override
  State<ContactFileThree> createState() => _ContactFileThreeState();
}

class _ContactFileThreeState extends State<ContactFileThree> {
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
                        width: MediaQuery.of(context).size.width * 0.51,
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
                        width: MediaQuery.of(context).size.width * 0.34,
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
                'حدد المواد التي ترغب في تسجيلها \n  افاقك و فتح باب المعرفة؟ ام ولي\nامر تود متابعة رحلة ابنك التعليمية؟',
                style: TextStyle(fontSize: 20, color: Color(0x98000000)),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF009A03),
                ),
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.025,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 20),
            child: Text(
              'حدد المواد التي ترغب في دراستها',
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
              CustomOptionButton(text: 'اللغة العربية'),
              CustomOptionButton(text: 'الرياضيات'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'اللغة الإنجليزية'),
              CustomOptionButton(text: 'اللغة الالمانية'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'الكيمياء'),
              CustomOptionButton(text: 'علوم الحاسوب'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'الفيزياء'),
              CustomOptionButton(text: 'الاحياء'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'اللغة الفرنسية'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavNextButton(action: ContactFileFour.routeName),
              NavPrevButton(
                action: ContactFileTwo.routeName,
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
