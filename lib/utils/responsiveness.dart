import 'package:deneme/enums/enums.dart';
import 'package:flutter/material.dart';

Responsive width({required BuildContext context}){
  var  query = MediaQuery.of(context).size.width;
  if(query >= 900){
    return Responsive.large;
  }
  else if((450 <= query) && (query < 900)){
    return Responsive.medium;
  }
  else{
    return Responsive.small;
  }
}