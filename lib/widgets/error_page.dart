import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('访问的页面不存在'),
      ),
      body: const Center(
        child: Text(
          '访问的页面不存在',
          style: TextStyle(fontSize: 30, color: Colors.red),
        ),
      ),
    );
  }
}
