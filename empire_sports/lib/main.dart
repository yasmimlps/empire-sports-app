import 'package:empire_sports/modules/home/home_page.dart';
import 'package:empire_sports/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Empire());
}

class Empire extends StatelessWidget {
  const Empire({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.getTheme(),
      home: const HomePage(),
    );
  }
}
