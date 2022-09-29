import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

class Button extends StatelessWidget {
  Button({Key? key, required this.name, required this.item}) : super(key: key);
  String name;
  List<String> item;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 80,
      height: 40,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        // boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
      ),
      child: GestureDetector(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 5,
              ),
              Text(name),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
        onTap: () {
          showPopover(
            context: context,
            transitionDuration: const Duration(milliseconds: 350),
            bodyBuilder: (context) => ListItems(
              item: item,
            ),
            onPop: () => print('Popover was popped!'),
            direction: PopoverDirection.bottom,
            width: 200,
            height: 400,
            arrowHeight: 15,
            arrowWidth: 30,
          );
        },
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  ListItems({Key? key, required this.item}) : super(key: key);
  List<String> item;
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: item
              .map(
                (e) => Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context)
                          ..pop()
                          ..push(
                            MaterialPageRoute<SecondRoute>(
                              builder: (context) => SecondRoute(),
                            ),
                          );
                      },
                      child: Container(
                        height: 50,
                        color: Colors.amber,
                        child: Center(child: Text(e)),
                      ),
                    ),
                    if (e == item.last) Container() else const Divider(),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
