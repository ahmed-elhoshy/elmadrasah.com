import 'package:elmadrasah/ContactFile/contact_file1.dart';
import 'package:flutter/material.dart';

import '../widgets/customButton.dart';
import '../widgets/custom_text_field.dart';

class RegistrationScreenTwo extends StatefulWidget {
  static const String routeName = 'register2';

  const RegistrationScreenTwo({super.key});

  @override
  State<RegistrationScreenTwo> createState() => _RegistrationScreenTwoState();
}

class _RegistrationScreenTwoState extends State<RegistrationScreenTwo> {
  var firstNameController = TextEditingController(text: '');

  var lastNameController = TextEditingController(text: '');

  var emailController = TextEditingController(text: '');
  var phoneController = TextEditingController(text: '');

  var passwordController = TextEditingController(text: '');

  var confirmPasswordController = TextEditingController(text: '');
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              CustomTextFormField(
                label: 'الاسم الاول',
                controller: firstNameController,
                inputType: 'x',
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter first name';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'اسم العائلة',
                controller: lastNameController,
                inputType: 'x',
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
              CustomTextFormField(
                  label: 'رقم الموبايل',
                  controller: phoneController,
                  inputType: 'int',
                  icon: Icons.phone,
                  validator: (text) {}),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'البريد الإكتروني',
                controller: emailController,
                inputType: 'x',
                icon: Icons.email,
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter email';
                  }
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(text);
                  if (!emailValid) {
                    return 'please enter valid email';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'كلمة المرور',
                controller: passwordController,
                inputType: 'x',
                icon: Icons.lock,
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter password';
                  }
                  if (text.length < 6) {
                    return 'Password should at least 6 characters';
                  }
                  return null;
                },
                isPassword: true,
              ),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'تأكيد كلمة المرور',
                controller: confirmPasswordController,
                inputType: 'x',
                icon: Icons.lock,
                validator: (text) {
                  if (text == null || text.trim().isEmpty) {
                    return 'Please enter confirm password';
                  }
                  if (text != passwordController.text) {
                    return "password doesn't match";
                  }
                  return null;
                },
                isPassword: true,
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      // register();
                      //Navigator.pushNamed(context, NavigationPage.routeName);
                    },
                    child: CustomButton(
                        action: ContactFileOne.routeName, text: 'تسجيل جديد')),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '_________  او دخول بإستخدام  _________',
                    style: TextStyle(fontSize: 17, color: Color(0x8E000000)),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(color: Color(0xFF009A03))),
                    // color: Color(0xFF009A03),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage('assets/google.png'),
                          color: Colors.green,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * 0.02),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Google',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        border: Border.all(color: Color(0xFF009A03))),
                    // color: Color(0xFF009A03),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ImageIcon(
                          AssetImage('assets/apple.png'),
                          color: Colors.black,
                          size: 55,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            'Apple',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }

// void register() async{
//   if(formKey.currentState?.validate()==true){
//     DialogUtils.showLoading(context, 'Loading...');
//     //await Future.delayed(Duration(seconds: 2));
//     try {
//       final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: emailController.text,
//         password: passwordController.text,
//       );
//       MyUser myUser = MyUser(
//           id: credential.user?.uid ?? '',
//           firstName: firstNameController.text,
//           lastName: lastNameController.text,
//           email: emailController.text);
//       await FirebaseUtils.addUserToFireStore(myUser);
//       var authProvider = Provider.of<AuthProviders>(context, listen: false);
//       authProvider.updateUser(myUser);
//       DialogUtils.hideLoading(context);
//       DialogUtils.showMessage(context, 'Register Successfully',
//           title: 'Success', posActionName: 'ok', posAction: () {
//             Navigator.of(context).pushReplacementNamed(NavigationPage.routeName);
//           });
//       print('register successfully');
//       print(credential.user?.uid ?? '');
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'weak-password') {
//         DialogUtils.hideLoading(context);
//         DialogUtils.showMessage(context, 'The password provided is too weak.',
//             title: 'Error',
//             posActionName: 'ok');
//         print('The password provided is too weak.');
//       } else if (e.code == 'email-already-in-use') {
//         DialogUtils.hideLoading(context);
//         DialogUtils.showMessage(context, 'The account already exists for that email.',
//             title: 'Error',
//             posActionName: 'ok');
//         print('The account already exists for that email.');
//       }
//     } catch (e) {
//       DialogUtils.hideLoading(context);
//       DialogUtils.showMessage(context, e.toString(),
//           title: 'Error ',
//           posActionName: 'ok');
//       print(e);
//     }
//
//
//   }
// }
}
