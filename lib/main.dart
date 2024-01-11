import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screems/login_screen.dart';
import 'package:news_app/screems/signup_screen.dart';
import 'package:news_app/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // initialise app based on platform- web or mobile
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyCfZ2ALbHn6R5b1bQT_RIYNEj9fY6-naxI",
        appId: "1:978222366000:web:05a08289976b1ac4e99cf5",
        messagingSenderId: "978222366000",
        projectId: "news-app-205de",
        storageBucket: 'news-app-205de.appspot.com'
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Today News',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),

      // home: const ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
      
    home: SignupScreen(),
    );
  }
}
