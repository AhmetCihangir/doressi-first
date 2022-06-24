// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:deneme/colors/colors.dart';
import 'package:deneme/utils/spacing.dart';
import 'package:flutter/material.dart';

List<Map<String, dynamic>> events = [
  {
    "name": "Apple",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Apple-logo.png/640px-Apple-logo.png"
  },
  {
    "name": "Weekend",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcjExGknzyYgy6Lz8SRtFnQzuW1VP4TeUNAw&usqp=CAU"
  },
  {
    "name": "MasterCard",
    "image":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Mastercard_2019_logo.svg/800px-Mastercard_2019_logo.svg.png"
  },
  {
    "name": "Disney",
    "image":
        "https://lumiere-a.akamaihd.net/v1/images/image_0dbec56c_d153e3ae.jpeg?region=0%2C0%2C200%2C200"
  },
];

class UpComingPart extends StatelessWidget {
  const UpComingPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16,
            )
          ],
        ),
        VerSpace(20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...events.map((e) => Row(
                    children: [
                      UCCard(image: e["image"], name: e["name"]),
                      HorSpace(15),
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}

class UCCard extends StatelessWidget {
  final String image;
  final String name;

  const UCCard({Key? key, required this.image, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
        color: kCardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                // child: Image(
                //   image: NetworkImage(image),
                // ),
                backgroundImage: NetworkImage(image, ),
                radius: 16,
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 8,
              ),
            )
          ],
        ),
      ),
    );
  }
}
