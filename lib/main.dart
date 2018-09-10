import 'package:flutter/material.dart';

void main() => runApp(ListSwipe());

class ListSwipe extends StatelessWidget {
  final List items = getDummyList();
  final List array = ['a1', 'a2', 'a3', 'a4', 'a5'];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'List with Swiping future',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Swipeable List'),
        ),
        body: Column(
          // children: array,
          children: <Widget>[
            Center(
              child: Container(
                child: Text(
                  items[0],
                  style: TextStyle(
                    fontSize: 30.0,
                  ),
                ),
                decoration: BoxDecoration(border: Border.all(width: 10.0)),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Second element of the list'),
                subtitle: Text('Just some text'),
              ),
            ), 
            Text(items[2]),
            Text(items[3]),
            Text(items[4]),
            Text(items[5])
          ],
        ),
      ),
    );
  }

  static List getDummyList() {
    List list = List.generate(10, (int i) => "item${i + 1}");
    return list;
  }
}

/////////////////
///
///
///import 'package:flutter/material.dart';

// void main() {
//   runApp(new MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: "Myapp",
//       home: new HomePage(),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => new Scaffold(
//     appBar: new AppBar(
//       backgroundColor: new Color(0xFF26C6DA),
//     ),
//     body: new Column(
//       children: <Widget>[
//         new Card(
//           child: new Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const ListTile(
//                 leading: const Icon(Icons.album),
//                 title: const Text('The Enchanted Nightingale'),
//                 subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
//               ),
//             ],
//           ),
//         ),
//       ],
//     )
//   );
// }
