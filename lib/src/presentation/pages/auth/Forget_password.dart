
import 'package:flutter/material.dart';

class Forget_Password extends StatelessWidget {
  const Forget_Password({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 140.0),
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
                fontSize: 17, color: Color(0xff375172)),
          ),
          onPressed: () {
            print("test");
          },
          child: const Text('Forget Password?',
              style: TextStyle(color: Color(0xff375172))),
        ),
      ),
    );
  }
}
