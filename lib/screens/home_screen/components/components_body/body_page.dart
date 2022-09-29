import 'package:flutter/material.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/widgets/product_show_all.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/widgets/send_to_mail.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/widgets/slider_header_product.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderHeaderProduct(),
        ProductShowAll(),
        SendToMeEmail(),
      ],
    );
  }
}
