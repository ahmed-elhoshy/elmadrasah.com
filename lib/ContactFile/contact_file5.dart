import 'package:elmadrasah/ContactFile/contact_file4.dart';
import 'package:elmadrasah/ContactFile/contact_file6.dart';
import 'package:elmadrasah/Cubit/my_cubit.dart';
import 'package:elmadrasah/model/days.dart';
import 'package:elmadrasah/widgets/custom_option_button.dart';
import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactFileFive extends StatefulWidget {
  static const String routeName = 'ContactFileFive';

  const ContactFileFive({super.key});

  @override
  State<ContactFileFive> createState() => _ContactFileFiveState();
}

class _ContactFileFiveState extends State<ContactFileFive> {
  List<Days> daysList = [];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<MyCubit>(context).emitGetAllDays();
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
                        width: MediaQuery.of(context).size.width * 0.31,
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
                        width: MediaQuery.of(context).size.width * 0.54,
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
                'حدد الفترة الزمنية المناسبة لك \n  افاقك و فتح باب المعرفة؟ ام ولي\nامر تود متابعة رحلة ابنك التعليمية؟',
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
              'ما الايام المناسبة لك',
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
//               BlocBuilder<MyCubit,MyStates>(
//                   builder:(context,state){
//                     if(state is GetAllDays){
// daysList = (state).allDaysList;
//   return SizedBox(
//     height: 100,
//     width: 350,
//     child: ListView.builder(
//       scrollDirection: Axis.horizontal,
//       shrinkWrap: true,
//         padding: EdgeInsets.all(8),
//         itemCount: daysList.length,
//         itemBuilder:(BuildContext context, int index){
//           return CustomOptionButton(text: daysList[index].englishData.toString());
//         }
//     ),
//   );
//
//                     }else {
//                       return CircularProgressIndicator();
//                     }
//                   }
//               )
              CustomOptionButton(text: 'الثلاثاء'),
              CustomOptionButton(text: 'الاثنين'),
              CustomOptionButton(text: 'الحد'),
              CustomOptionButton(text: 'السبت'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: 'الجمعة'),
              CustomOptionButton(text: 'الخميس'),
              CustomOptionButton(text: 'الاربعاء'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'ما الفترة الزمنية المناسبة لك',
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
              CustomOptionButton(text: 'الفترة المسائية'),
              CustomOptionButton(text: 'الفترة الصباحية'),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 30.0, top: 30),
            child: Text(
              'اختار التوقيت المناسب لك',
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
              CustomOptionButton(text: '15:00 ص'),
              CustomOptionButton(text: '15:00 م'),
              CustomOptionButton(text: '15:00 م'),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomOptionButton(text: '12:00 م'),
              CustomOptionButton(text: '15:00 ص'),
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
              NavNextButton(action: ContactFileSix.routeName),
              NavPrevButton(
                action: ContactFileFour.routeName,
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
