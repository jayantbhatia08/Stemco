
import 'package:flutter/material.dart';

class Appbar_Icons extends StatelessWidget {
  const Appbar_Icons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {print("test");},
          icon: const Icon(Icons.close, color: Colors.blue,),
        ),
        SizedBox(width: 290),
        IconButton(
          onPressed: () {print("test");},
          icon: const Icon(Icons.help, color: Colors.blue,),
        ),
      ],
    );
  }
}
