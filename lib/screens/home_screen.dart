import 'package:flutter/material.dart';
import 'package:login_application/constants/constants.dart';
import 'package:login_application/screens/login_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: (isloading == true)
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Hello'),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isloading = true;
                      });
                      prefs!.clear();
                      Future.delayed(const Duration(seconds: 2), () {
                        setState(() {
                          isloading = false;
                        });
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const LoginPage()));
                      });
                    },
                    child: const Text('Logout'),
                  ),
                ],
              ),
      ),
    );
  }
}
