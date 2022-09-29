import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ABOUT'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('News & Stories'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('History'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Our Studio'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Showrooms'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Stockists'),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('CUSTOMER SERVICES'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Contact Us'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Trade Services'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Login/Register'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Delivery & Returns'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('FAQs'),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('FURNITURE'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Tables'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Chairs'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Storage'),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.18,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ACCESSORIES'),
                      SizedBox(
                        height: 30,
                      ),
                      Text('Candless & Fragrance'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Stationery'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Kitchen & Dining'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Textiles'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Gifl Sets'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Text('Contact to me'),
              Text('Contact to me'),
            ],
          ),
        )
      ],
    );
  }
}
