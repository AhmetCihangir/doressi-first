import 'package:deneme/components/page1/popularToday.dart';
import 'package:deneme/components/page1/upComingPart.dart';
import 'package:deneme/utils/spacing.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 20.0,),
      child: Column(
        children:  [
          const UpComingPart(),
          VerSpace(20),
          const PopularToday()
        ],
      ),
    );
  }
}
