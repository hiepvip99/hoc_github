import 'package:flutter/material.dart';

class SendToMeEmail extends StatelessWidget {
  const SendToMeEmail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 310,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 100),
        child: Column(
          children: [
            Text(
              'KEEP UPDATED',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text('Receive information about our new products'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your email',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('SUBSCIBE'),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
