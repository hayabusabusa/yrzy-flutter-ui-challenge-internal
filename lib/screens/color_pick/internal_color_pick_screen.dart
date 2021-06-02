import 'package:flutter/material.dart';

import 'package:ui_challenge_internal/stub.dart';

class InternalColorPickScreen extends StatefulWidget {
  @override
  _InternalColorPickScreenState createState() => _InternalColorPickScreenState();
}

class _InternalColorPickScreenState extends State<InternalColorPickScreen> {
  Color? pickedColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // NOTE: Texts column
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '選択した色',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8,),
              Container(
                height: 88,
                width: 88,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                  color: pickedColor ?? Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                '#${pickedColor?.value.toRadixString(16).substring(2) ?? '未選択'}',
                style: TextStyle(
                  color: pickedColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40,),
          // NOTE: Color buttons row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: Stub.colors.map((color) {
              return OutlinedButton(
                onPressed: () {
                  // NOTE: `setState()` 内で値を更新.
                  setState(() {
                    pickedColor = color;
                  });
                }, 
                style: OutlinedButton.styleFrom(
                  backgroundColor: color,
                  shape: const CircleBorder(),
                ),
                child: const Text(''),
              );
            })
            .toList(),
          ),
        ],
      ),
    );
  }
}