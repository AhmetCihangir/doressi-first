// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:deneme/utils/responsiveness.dart';
import 'package:flutter/material.dart';

import '../../enums/enums.dart';

List<Map<String, dynamic>> events = [
  {
    "image":
        "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZXZlbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "name": "No Anunciar",
    "date": "23 - 27 Jun,2022"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1656326793161-c3a84c26c76d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "name": "No Anunciarlar",
    "date": "23 - 27 Jun,2022"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1501281668745-f7f57925c3b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZXZlbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "name": "No Anunciar",
    "date": "23 - 27 Jun,2022"
  },
  {
    "image":
        "https://images.unsplash.com/photo-1656326793161-c3a84c26c76d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
    "name": "No Anunciarlar",
    "date": "23 - 27 Jun,2022"
  },
];

class PopularToday extends StatelessWidget {
  const PopularToday({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          // # Popular Today Title
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Popular Today',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )
            ],
          ),

          // # Events

          Expanded(
            child: GridView.count(
              crossAxisCount: width(context: context) == Responsive.large
                  ? 4
                  : width(context: context) == Responsive.medium
                      ? 2
                      : 1,
              shrinkWrap: true,
              children: [
                ...events.map((e) =>
                    Event(date: e["date"], image: e["image"], name: e["name"]))
              ],
            ),
          ),

          // Expanded(
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: events.length,
          //     itemBuilder: (context, i) => Event(
          //       date: events[i]["date"],
          //       image: events[i]["image"],
          //       name: events[i]["name"],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class Event extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  const Event(
      {Key? key, required this.date, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: width(context: context) == Responsive.large
          ? deviceWidth / 4
          : width(context: context) == Responsive.medium
              ? deviceWidth / 2
              : deviceWidth,
      child: Stack(
        children: [
          // # Image

          Stack(
            alignment: Alignment.center,
            children: [
              Image(image: NetworkImage(image), fit: BoxFit.cover),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0.1),
                      Colors.white.withOpacity(0.2),
                      Colors.white.withOpacity(0.3),
                    ],
                    stops: [0.8, 0.9, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ],
          ),

          // # Name and Date

          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              children: [
                Text(
                  date,
                  textAlign: TextAlign.left,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
