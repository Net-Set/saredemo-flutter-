import 'package:flutter/material.dart';
import 'package:saredemo/login_page.dart';
import 'package:saredemo/logout.dart';
import 'package:saredemo/signup_page.dart';

void main() {
  // Hide the debug banner
  WidgetsFlutterBinding
      .ensureInitialized(); // Add this line to ensure that WidgetsBinding is initialized.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner:
          false, // Set this to false to hide the debug banner
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _handleLoginButtonPress() {
    // Add your login logic here if needed.
    // For now, we'll navigate to the NextPage when the button is pressed.
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => login_page()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // Logo on the left
            Image.asset('assets/images/logo.png', width: 60, height: 60),
            // Login button on the right
            ElevatedButton(
              onPressed: _handleLoginButtonPress,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/bg_img.png',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'This is Home',
                  style: TextStyle(
                    color: Color.fromARGB(255, 249, 250, 250),
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
