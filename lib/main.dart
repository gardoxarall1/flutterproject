import 'package:flutter/material.dart';
import 'package:new1/presentation/views/login_screen.dart';
import 'package:new1/providers/posts_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PostsProivider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              // ThemeMode.system hedhi
              appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
              backgroundColor: Colors.white),
          home: const LoginScreen(),
          // ThemeMode.dark hédhi nekna personalisation
          darkTheme: ThemeData(
              appBarTheme: const AppBarTheme(backgroundColor: Colors.green),
              backgroundColor: Colors.blue),
          themeMode: ThemeMode.system,
        ));
  }
}
