import 'package:flutter/material.dart';
import 'package:flutter_web/pages/Homepage/itemsection.dart';
import 'package:flutter_web/pages/navbar.dart';

import 'herobox.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            HeroBox(),
            ItemSection(),
          ],
        ),
      ),
    );
  }
}
