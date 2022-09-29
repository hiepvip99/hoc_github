import 'package:flutter/material.dart';

class SliderHeaderProduct extends StatelessWidget {
  const SliderHeaderProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'C L E A R A R C E',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'GIVER A TIMELESS CLASSIC A HOME',
                style: TextStyle(fontSize: 20),
              ),
              Text('It is a long established fact that a render will'),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'VIEW NOW',
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/table.png',
                width: 430,
                height: 380,
              )
            ],
          ),
        ],
      ),
    );
  }
}
