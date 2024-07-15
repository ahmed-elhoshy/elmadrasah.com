import 'package:elmadrasah/ContactFile/contact_file3.dart';
import 'package:elmadrasah/ContactFile/contact_file5.dart';
import 'package:elmadrasah/model/purposes.dart';
import 'package:elmadrasah/widgets/custom_option_button.dart';
import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/my_cubit.dart';
import '../Cubit/my_states.dart';

class ContactFileFour extends StatefulWidget {
  static const String routeName = 'contactInfoFour';

  const ContactFileFour({super.key});

  @override
  State<ContactFileFour> createState() => _ContactFileFourState();
}

class _ContactFileFourState extends State<ContactFileFour> {
  List<Purposes> purposesList = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<MyCubit>(context).emitGetAllPurposes();
  }

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
                        width: MediaQuery.of(context).size.width * 0.41,
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
                        width: MediaQuery.of(context).size.width * 0.44,
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
                'املأ المعلومات الاضافية لتمكيننا من \n توفير تجربة دراسية مخصصة ',
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
              'ما عدد الطلاب المشتركين',
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
              CustomOptionButton(text: 'ثلاث طلاب'),
              CustomOptionButton(text: 'طالبين'),
              CustomOptionButton(text: 'طالب واحد'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'اكثر من ذلك'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'حدد اهدافك الدراسية',
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
              SizedBox(
                width: 20,
              ),
              BlocBuilder<MyCubit, MyStates>(builder: (context, state) {
                if (state is GetAllPurposes) {
                  purposesList = (state).allPurposesList;
                  return SizedBox(
                    height: 200,
                    width: 310,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 20,
                            mainAxisExtent: 80),
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        shrinkWrap: true,
                        itemCount: purposesList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return CustomOptionButton(
                              text: purposesList[index].arabicData ?? "");
                        }),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              })
              // CustomOptionButton(text: 'حل واجبات'),
              // CustomOptionButton(text: 'تحضير لاختبار'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavNextButton(action: ContactFileFive.routeName),
              NavPrevButton(
                action: ContactFileThree.routeName,
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
