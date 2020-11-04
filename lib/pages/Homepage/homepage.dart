import 'package:flutter/material.dart';
import 'package:flutter_web/pages/navbar.dart';

import 'herobox.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(),
          HeroBox(),
        ],
      ),
    );
  }
}
