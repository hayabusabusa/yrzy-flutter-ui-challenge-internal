import 'package:flutter/material.dart';

class InternalLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // NOTE: Logo
              Container(
                height: 56,
                color: Colors.grey.shade200,
              ),
              const SizedBox(height: 80,),
              // NOTE: User name text field
              TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  hintText: 'ユーザー名',
                ),
              ),
              const SizedBox(height: 16,),
              // NOTE: Password text field
              TextField(
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                  hintText: 'パスワード',
                ),
              ),
              const SizedBox(height: 24),
              // NOTE: Login button
              ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: const StadiumBorder(),
                ),
                child: const Text('ログイン',)
              ),
              const SizedBox(height: 8),
              // NOTE: Forget password button
              TextButton(
                onPressed: () {}, 
                child: Text('パスワードを忘れた方はこちら'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}