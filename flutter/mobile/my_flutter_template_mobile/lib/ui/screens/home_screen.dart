import 'package:flutter/material.dart';
import 'package:my_flutter_template_mobile/ui/widgets/custom_button_widget.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  const HomeScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Welcome, $username!"),
            SizedBox(height: 20),
            CustomButtonWidget(
              text: 'Logout',
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
