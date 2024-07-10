import 'package:elmadrasah/ContactFile/contact_file6.dart';
import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';

import '../widgets/Utils/CalenderFunction.dart';
import '../widgets/custom_text_field.dart';
import 'contact_file8.dart';

class ContactFileSeven extends StatefulWidget {
  static const String routeName = 'ContactFileSeven';

  const ContactFileSeven({super.key});

  @override
  State<ContactFileSeven> createState() => _ContactFileSevenState();
}

class _ContactFileSevenState extends State<ContactFileSeven> {
  var firstNameController = TextEditingController(text: '');

  var lastNameController = TextEditingController(text: '');

  var emailController = TextEditingController(text: '');
  var phoneController = TextEditingController(text: '');

  var passwordController = TextEditingController(text: '');

  var confirmPasswordController = TextEditingController(text: '');
  DateTime selectedDate = DateTime.now();
  bool agree = false;

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
                        width: MediaQuery.of(context).size.width * 0.11,
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
                        width: MediaQuery.of(context).size.width * 0.74,
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
                'استعد للتعلم و التطور معنا \n  افاقك و فتح باب المعرفة؟ ام ولي\nامر تود متابعة رحلة ابنك التعليمية؟',
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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF009A03), width: 2),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 140,
                      ),
                      Text(
                        'AED 800',
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Text(
                          ' : الاجمالي',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xFF009A03),
                ),
                height: MediaQuery.of(context).size.height * 0.09,
                width: MediaQuery.of(context).size.width * 0.025,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.0, right: 30, top: 20),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF009A03), width: 1.5),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  ImageIcon(
                    AssetImage('assets/visa.png'),
                    color: Color(0xFF00308A),
                    size: 45,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/mastercard.png'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'بطاقة الائتمان',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.025,
                    width: MediaQuery.of(context).size.width * 0.045,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Color(0xFF009A03), width: 6)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
              label: 'رقم البطاقة',
              controller: phoneController,
              inputType: 'int',
              icon: Icons.lock,
              validator: (text) {}),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              CalendarUtils.showCalendar(context, selectedDate);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0x47000000), width: 2),
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.date_range, color: Color(0xFF009A03)),
                    SizedBox(
                      width: 217,
                    ),
                    Text(
                      'تاريخ الميلاد',
                      style: TextStyle(color: Color(0x9E000000), fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
              label: 'رمز الحماية',
              controller: phoneController,
              inputType: 'int',
              icon: Icons.security,
              validator: (text) {}),
          const SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            label: 'الاسم علي البطاقة',
            controller: lastNameController,
            inputType: 'x',
            icon: Icons.credit_card,
            validator: (text) {
              if (text == null || text.trim().isEmpty) {
                return 'Please enter last name';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'الشروط و الاحكام',
                  style: TextStyle(
                      color: Color(0xFF009A03),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  ' اوافق علي',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Checkbox(
                    value: agree,
                    fillColor: MaterialStateProperty.resolveWith((Set states) {
                      if (states.contains(MaterialState.disabled)) {
                        return Colors.green.withOpacity(.32);
                      }
                      return Colors.green;
                    }),
                    onChanged: (bool? value) {
                      // This is where we update the state when the checkbox is tapped
                      setState(() {
                        agree = value!;
                      });
                    }),
              )
              // InkWell(
              //   onTap: () {
              //     agree =true;
              //     setState(() {
              //
              //     });
              //   },
              //   child: Container(
              //     height: 20,
              //     width: 20,
              //     color: Color(0xFF009A03),
              //     child: Icon(
              //       Icons.done,
              //       color: agree == true ? Colors.white : Colors.red ,
              //     ),
              //   ),
              // )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavNextButton(action: ContactFileEight.routeName),
              NavPrevButton(
                action: ContactFileSix.routeName,
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
