import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tizi_app/features/pages/login_page.dart';
import 'package:tizi_app/features/pages/splash_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAszjfLFgPLn836xC4e_Q7JXGFn9X04zyI",
          appId: "1:351435673921:web:39f6c75eab6bdd63dcd1c0",
          messagingSenderId: "351435673921",
          projectId: "tiziapp-d0ff9",
          authDomain: "tiziapp-d0ff9.firebaseapp.com",
          storageBucket: "tiziapp-d0ff9.appspot.com"),
    );
  }

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tizi",
      home: SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
