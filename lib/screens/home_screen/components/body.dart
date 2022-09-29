import 'package:flutter/material.dart';
import 'package:popover/popover.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/body_page.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/footer.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/header.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Header(),
          BodyPage(),
          Footer(),
        ],
      ),
    );
  }
}
