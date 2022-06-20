import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

    const BMIResultScreen({
    required this.isMale,
    required this.result,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111328),
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: (25),
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF111328),
        centerTitle: true,
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 30,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
                child: (const Text(
              'Your result',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ))),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10.0),
          width: double.infinity,
          height: 450,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              ' ' 'NORMAL ',
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
            const SizedBox(
              height: 100,
            ),
            Text(
              '$result.5 ',
              style: const TextStyle(fontSize: 100, color: Colors.white),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              '  your body weight is absolutely normalGood job 💪 ',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ]),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(0xFF1D1E33),
          ),
        ),
        Container(
            width: double.infinity,
            color: const Color(0xFFE83D66),
            child: MaterialButton(
              onPressed: () {},
              height: 60,
              child: const Text(
                'RE-CALCULATE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: (20),
                ),
              ),
            )),
      ]),
    );
  }
}
