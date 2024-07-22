import 'package:flutter/material.dart';
import '../../Settings.dart';

ElevatedButton containerHeaderButton(String text){
  return ElevatedButton(

    style:ElevatedButton.styleFrom(

      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      foregroundColor: Colors.white,
      shadowColor: Colors.transparent,
      padding: EdgeInsets.fromLTRB(rem(0.75), rem(0.25), rem(0.75), rem(0.25)),
      shape: RoundedRectangleBorder(side: BorderSide(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          width: 1,
          style: BorderStyle.solid
      ), borderRadius: BorderRadius.circular(24)),

    )  ,
    onPressed: (){print("get in touch");}, child: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(width: 4,height: 4, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50) ,color: Colors.black),),
      Container(width: rem(0.5),),
      Text(text ,style:  TextStyle(color: Colors.black, fontSize: rem(1),  ),),
    ],
  ),);




}

ElevatedButton containerFooterButton(String text){
  return ElevatedButton(

    style:ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      foregroundColor: Colors.white,
      shadowColor: Colors.transparent,
      padding: EdgeInsets.fromLTRB(rem(1), rem(0.25), rem(0.25), rem(0.25)),
      shape: RoundedRectangleBorder(side: BorderSide(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          width: 1,
          style: BorderStyle.solid
      ), borderRadius: BorderRadius.circular(24)),

    )  ,
    onPressed: (){print("get in touch");}, child: Row(
    mainAxisAlignment:MainAxisAlignment.spaceBetween,
    children: [
      Text(text ,style:  TextStyle(color: Color.fromRGBO(0, 0, 0, 0.85),fontWeight: FontWeight.w400 ,fontSize: rem(1)),),
      SizedBox(width: rem(0.5),),
      Container(
          decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1)),),
          child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
      )
    ],),);


}