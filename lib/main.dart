import 'package:elvan/constants/app_theme.dart';
import 'package:elvan/route.dart';
import 'package:elvan/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final option = const FirebaseOptions(
      apiKey: 'AIzaSyCuvLKGqhP-9w4pGQTyAn7jNtbq-b96ZiE',
      appId: '1:186654884711:android:7015ff1b70e58043d265c2',
      messagingSenderId: '186654884711',
      projectId: 'elvan-870ae');
  await Firebase.initializeApp(
      name: 'elvan', options: DefaultFirebaseOptions.currentPlatform);
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Elvan',
      theme: appThme(),
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
