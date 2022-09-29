import 'package:flutter/material.dart';
import 'package:web_dashboard_learn/screens/home_screen/components/components_body/widgets/button_show_menu.dart';

class Header extends StatefulWidget {
  Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Row(
            children: [
              SizedBox(
                width: size.width * 0.15,
              ),
              Image.asset(
                'assets/images/logo.png',
                width: 120,
                height: 100,
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              Button(
                name: 'HOME',
                item: item,
              ),
              SizedBox(
                width: 10,
              ),
              Button(
                name: 'FEATURE',
                item: item,
              ),
              SizedBox(
                width: 10,
              ),
              Text('BLOGS'),
              SizedBox(
                width: 10,
              ),
              Text('ABOUT US'),
              SizedBox(
                width: size.width * 0.15,
              )
            ],
          ),
          Row(
            children: [
              Text('LOGIN'),
              SizedBox(
                width: 10,
              ),
              Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text('(0)'),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text('CART(0)'),
              SizedBox(
                width: 10,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
          )
        ],
      ),
    );
  }
}

List<String> item = ['1', '2', '3'];
