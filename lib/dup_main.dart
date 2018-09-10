import 'package:flutter/material.dart';

void main() => runApp(SwipeList());

class SwipeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SwipeWidget();
  }
}

class SwipeWidget extends State<SwipeList> {
  List items = getDummyList();

  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(items[index]),
            onDismissed: (direction) {
              print(direction);
              setState(() {
                items.removeAt(index);
              });
            },
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(border: Border.all(width: 1.0)),
              padding: EdgeInsets.all(5.0),
              child: Row(
                children: <Widget>[
                  Text(
                    items[index],
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static List getDummyList() {
    List list = List.generate(10, (int i) => "item${i + 1}");
    return list;
  }
}
