import 'package:flutter/material.dart';

class InternalBasicBlockScreen extends StatelessWidget {
  const InternalBasicBlockScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Block(color: Colors.red),
              _Block(color: Colors.blue),
            ],
          ),
          // Bottom row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Block(color: Colors.orange),
              _Block(color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}

class _Block extends StatelessWidget {
  final Color color;

  const _Block({ 
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 56,
      color: color,
    );
  }
}