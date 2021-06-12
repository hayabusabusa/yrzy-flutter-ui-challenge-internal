import 'package:flutter/material.dart';

class InternalAdvancedBlockScreen extends StatelessWidget {
  const InternalAdvancedBlockScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Box(color: Colors.red,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Box(color: Colors.blue),
              SizedBox(width: 56,),
              _Box(color: Colors.blue),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Box(color: Colors.yellow),
              Expanded(
                child: Container(
                  height: 56,
                  color: Colors.orange,
                ),
              ),
              _Box(color: Colors.yellow)
            ],
          ),
        ],
      ),
    );
  }
}

class _Box extends StatelessWidget {
  final Color color;

  const _Box({ 
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