import 'package:flutter/material.dart';
import 'package:my_flutter_template_mobile/services/api_service.dart';
import 'package:my_flutter_template_mobile/ui/widgets/custom_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _loading = false;

  void _login() async {
    setState(() => _loading = true);
    final api = ApiService();
    final data = await api.login(
      _usernameController.text,
      _passwordController.text,
    );
    setState(() => _loading = false);
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: data['username'],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(24),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(labelText: 'Username'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                _loading
                    ? CircularProgressIndicator()
                    : CustomButtonWidget(text: 'Login', onPressed: _login),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
