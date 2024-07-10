import 'package:elmadrasah/Registeration/registeration2.dart';
import 'package:elmadrasah/widgets/customButton.dart';
import 'package:flutter/material.dart';

class RegistrationScreenOne extends StatefulWidget {
  RegistrationScreenOne({super.key});

  static const String routeName = 'register1';

  @override
  State<RegistrationScreenOne> createState() => _RegistrationScreenOneState();
}

class _RegistrationScreenOneState extends State<RegistrationScreenOne> {
  final List<String> userInfo = ['parent', 'student'];

  String? selectedUserState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.04,
                  ),
                  child: const Text(
                    'تسجيل جديد',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Flexible(
                    child: Text(
                  ' هل انت طالب تسعي الي توسيع \n  افاقك و فتح باب المعرفة؟ ام ولي\nامر تود متابعة رحلة ابنك التعليمية؟',
                  style: TextStyle(fontSize: 20, color: Color(0x98000000)),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.right,
                )),
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
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.12,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.12,
                ),
                scrollDirection: Axis.horizontal,
                itemCount: userInfo.length,
                itemBuilder: (context, index) {
                  final userInitState = userInfo[index];
                  return GestureDetector(
                    onTap: () =>
                        setState(() => selectedUserState = userInitState),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.height * 0.2,
                        decoration: BoxDecoration(
                          border:
                              (Border.all(color: Colors.transparent, width: 1)),
                          shape: BoxShape.circle,
                          color: const Color(0xFF009A03),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.13,
                    ),
                    child: Text('طالب',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: selectedUserState == 'student'
                                ? FontWeight.normal
                                : FontWeight.bold)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.height * 0.134,
                    ),
                    child: Text('ولي امر',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: selectedUserState == 'parent'
                                ? FontWeight.normal
                                : FontWeight.bold)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            CustomButton(
                action: RegistrationScreenTwo.routeName, text: 'التالي'),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تسجيل دخول ',
                  style: TextStyle(
                      color: Color(0xFF009A03),
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
                Text('هل لديك حساب؟', style: TextStyle(fontSize: 17)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
