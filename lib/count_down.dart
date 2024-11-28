import 'dart:async';
import 'package:flutter/material.dart';

class CountDown extends StatefulWidget {
  const CountDown({super.key});

  @override
  State<CountDown> createState() => _CountDownState();
}

class _CountDownState extends State<CountDown> {
  late Timer _timer;
  int _counter = 10;

  @override
  void initState() {
    super.initState();
   // _countDown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count Down'),
      ),
      body: Center(
        child: Text(
          '$_counter',
        ),
      ),
    );
  }
}