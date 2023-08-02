import 'package:flutter/material.dart';
import 'package:saredemo/login_page.dart';
import 'package:saredemo/main.dart';

class logout extends StatelessWidget {
  const logout({Key? key}) : super(key: key);

  void _handleLogoutButtonPress(BuildContext context) {
    // Add your logout logic here if needed.
    // For now, we'll navigate back to the LoginPage when the button is pressed.
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyApp()),
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
            // Logout button on the right
            ElevatedButton(
              onPressed: () => _handleLogoutButtonPress(context),
              child: const Text('Logout'),
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
                  'Logout',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
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
