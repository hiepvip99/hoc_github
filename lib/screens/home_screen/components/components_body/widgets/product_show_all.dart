import 'package:flutter/material.dart';
import 'package:web_dashboard_learn/components/product.dart';

class ProductShowAll extends StatelessWidget {
  const ProductShowAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 90,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'FURNITURE',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'LIGHTING',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'SOFAS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'LOUNGE CHAIRS',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'ALL',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                  )
                ],
              ),
              Row(
                children: [
                  Text('BACK'),
                  Text(' | '),
                  Text('NEXT'),
                  Text('    Page 0 of 0'),
                ],
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                  vertical: 20),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.65,
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemBuilder: (context,
                        index) => /* Container(
                  height: 340,
                  color: Colors.yellow,
                ),*/
                    Container(
                  child: Product(),
                  color: Colors.grey[300],
                ),
              ),
            ),
          ),
          Center(
            child: Text('VIEW MORE'),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15),
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.all(10),
                    width: 150,
                    color: Colors.yellow,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
