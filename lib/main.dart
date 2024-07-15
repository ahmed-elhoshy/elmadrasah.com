import 'package:elmadrasah/ContactFile/contact_file2.dart';
import 'package:elmadrasah/ContactFile/contact_file6.dart';
import 'package:elmadrasah/Cubit/my_cubit.dart';
import 'package:elmadrasah/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ContactFile/contact_file1.dart';
import 'ContactFile/contact_file3.dart';
import 'ContactFile/contact_file4.dart';
import 'ContactFile/contact_file5.dart';
import 'ContactFile/contact_file7.dart';
import 'ContactFile/contact_file8.dart';
import 'Registeration/registeration1.dart';
import 'Registeration/registeration2.dart';

void main() {
  initGetIt();
  runApp(BlocProvider(
    create: (context) => MyCubit(getIt(), getIt()),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: RegistrationScreenOne.routeName,
        routes: {
          RegistrationScreenOne.routeName: (context) => RegistrationScreenOne(),
          RegistrationScreenTwo.routeName: (context) => RegistrationScreenTwo(),
          ContactFileOne.routeName: (context) => ContactFileOne(),
          ContactFileTwo.routeName: (context) => ContactFileTwo(),
          ContactFileThree.routeName: (context) => ContactFileThree(),
          ContactFileFour.routeName: (context) => ContactFileFour(),
          ContactFileFive.routeName: (context) => ContactFileFive(),
          ContactFileSix.routeName: (context) => ContactFileSix(),
          ContactFileSeven.routeName: (context) => ContactFileSeven(),
          ContactFileEight.routeName: (context) => ContactFileEight(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Tajawal')
        // darkTheme: MyTheme.darkTheme,
        // themeMode: provider.appTheme,
        // locale: Locale(provider.appLanguage),
        // localizationsDelegates: AppLocalizations.localizationsDelegates,
        // supportedLocales: AppLocalizations.supportedLocales,
        );
  }
}
