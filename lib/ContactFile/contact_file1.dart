import 'package:elmadrasah/widgets/nav_next_button.dart';
import 'package:elmadrasah/widgets/nav_prev_button.dart';
import 'package:flutter/material.dart';

import '../Registeration/registeration2.dart';
import '../widgets/Utils/CalenderFunction.dart';
import 'contact_file2.dart';

class ContactFileOne extends StatefulWidget {
  static const String routeName = 'contactInfoOne';

  const ContactFileOne({super.key});

  @override
  State<ContactFileOne> createState() => _ContactFileOneState();
}

class _ContactFileOneState extends State<ContactFileOne> {
  DateTime selectedDate = DateTime.now();
  List<String> _genders = ['ذكر', 'انثي'];
  String? _selectedGender;
  List<String> _nationalities = ['مصر', 'امارات'];
  String? _selectedNationalities;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Column(
          children: [
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
                          width: MediaQuery.of(context).size.width * 0.71,
                        ),
                        Container(
                          height: 18,
                          width: MediaQuery.of(context).size.width * 0.04,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              border:
                              Border.all(color: Colors.green, width: 4)),
                        ),
                        Container(
                          height: 13,
                          width: MediaQuery.of(context).size.width * 0.14,
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
                  ' هل انت طالب تسعي الي توسيع \n  افاقك و فتح باب المعرفة؟ ام ولي\nامر تود متابعة رحلة ابنك التعليمية؟',
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
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
                        style:
                        TextStyle(color: Color(0x9E000000), fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                DropdownButton<String>(
                  items: <String>['ذكر', 'انثي'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                );
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
                        width: 260,
                      ),
                      DropdownButton(
                        items: _genders.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                        hint: Text(
                          'الجنس',
                          style:
                          TextStyle(color: Color(0x9E000000), fontSize: 16),
                        ),
                        // Not necessary for Option 1
                        value: _selectedGender,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedGender = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                DropdownButton<String>(
                  items: <String>['امارات', 'مصر'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                );
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
                        width: 250,
                      ),
                      DropdownButton(
                        items: _nationalities.map((location) {
                          return DropdownMenuItem(
                            child: new Text(location),
                            value: location,
                          );
                        }).toList(),
                        hint: Text(
                          'الجنسية',
                          style:
                          TextStyle(color: Color(0x9E000000), fontSize: 16),
                        ),
                        // Not necessary for Option 1
                        value: _selectedGender,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedGender = newValue;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NavNextButton(
                  action: ContactFileTwo.routeName,
                ),
                NavPrevButton(
                  action: RegistrationScreenTwo.routeName,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
//
// void showCalendar() async {
//   var chosendate = await showDatePicker(
//     /// future
//     context: context,
//     initialDate: selectedDate,
//     firstDate: DateTime.now(),
//     lastDate: DateTime.now().add(Duration(days: 365)),
//   );
//   if (chosendate != null) {
//     selectedDate = chosendate;
//     setState(() {});
//   }
// }
}
