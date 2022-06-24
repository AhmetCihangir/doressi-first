
import 'package:flutter/material.dart';



void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: ContainerChart(),
        appBar: AppBar(
          title: const Text('BottomNavigationBar Demo'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.home),
                label: 'home',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.search),
                label: 'search',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.airplane_ticket),
                label: 'ticket',
             ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: Icon(Icons.person),
                label: 'person'
            ),

          ],
        ),
      ),
      ),

  );
}

class ContainerChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.fromLTRB(1, 40, 10, 10),
          child: const Text(
            "Upgrade event",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10.0,
            ),
          ),
        ),
        const UpComingContainer(bgColor: Colors.yellow, circleColor: Colors.red),
        const UpComingContainer(bgColor: Colors.deepOrange, circleColor: Colors.orange),
        const UpComingContainer(bgColor: Colors.orange, circleColor: Colors.deepOrange),
        const UpComingContainer(bgColor: Colors.red, circleColor: Colors.yellow),
        const BigContainer(bgcolor1: Colors.black54),

      ],
    );
  }
}

class UpComingContainer extends StatelessWidget {
  final Color bgColor;
  final Color circleColor;

  const UpComingContainer(
      {Key? key, required this.bgColor, required this.circleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: bgColor,
        ),
        margin: const EdgeInsets.fromLTRB(10, 200, 20, 400),
        padding: const EdgeInsets.all(10.0),
        height: 100.0,
        width: 80.0,
        child: CircleAvatar(
          radius: 10.0,
          backgroundColor: circleColor,
        ),
      ),
    );
  }
}

class BigContainer extends StatelessWidget{
  final Color bgcolor1;

  const BigContainer({Key? key, required this.bgcolor1}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: bgcolor1,
      ),
      margin: const EdgeInsets.fromLTRB(5, 400, 5, 5),
      // height: 400.0,
      // width: 400.0,

    );

  }



}


