import 'package:flutter/material.dart';

class EmpireWidget extends StatelessWidget {
  const EmpireWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Align(
        alignment: Alignment.topCenter,
        child: Image(
          height: 25,
          width: 99.31,
          image: AssetImage('assets/images/empire.png'),
        ),
      ),
    );
  }
}
