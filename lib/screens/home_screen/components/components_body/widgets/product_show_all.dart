import 'package:flutter/material.dart';

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
                  Text('FURNITURE'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('LIGHTING'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('SOFAS'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('LOUNGE CHAIRS'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('ALL'),
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
                    childAspectRatio: 0.7,
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) => Container(
                  height: 340,
                  color: Colors.yellow,
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
