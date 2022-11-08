import 'package:flutter/material.dart';
import 'package:login_application/constants/constants.dart';
import 'package:login_application/screens/home_screen.dart';
import 'package:login_application/screens/login_screen.dart';
import 'package:login_application/screens/splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback((_) async {
  });
    prefs = await SharedPreferences.getInstance();
  // await prefs!.clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      onGenerateRoute: (RouteSettings settings) {
        debugPrint('build route for ${settings.name}');
        var routes = <String, WidgetBuilder>{
          '/splash': (BuildContext context) => const SplashScreen(),
          '/login': (BuildContext context) => const LoginPage(),
          '/home': (BuildContext context) => const HomePage(),
        };
        WidgetBuilder builder = routes[settings.name]!;
        return MaterialPageRoute(
          builder: (ctx) => builder(ctx),
        );
      },
    );
  }
}
