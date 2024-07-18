import 'package:flutter/material.dart';
import '../../Settings.dart';

Container mobileHeader (){
  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.fromLTRB(rem(1), rem(1),rem(1),rem(1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          TextButton(

            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              foregroundColor: Colors.white,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.fromLTRB(rem(1), rem(0.25), rem(0.25), rem(0.25)),

            )  ,
            onPressed: (){print("get in touch");}, child:
            Text("Menu", style: TextStyle(color: Colors.black, fontSize: rem(1), fontWeight: FontWeight.w400),)      )
        ],
      ),
    ),
  );


}


class HeaderLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  GestureDetector(
      onTap: (){print("logo tapped");},
      child: Container(
        width: 141.58,
        height: 16,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo/big_logo.png')
          ),
        ),
      ),
    );
  }
}


class HeaderTextButtons extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        TextButton(onPressed: (){print("work");}, child: Text("Work", style: TextStyle(color: Colors.black, fontSize: 16),)),
        TextButton(onPressed: (){print("Service");}, child: Text("Service" , style: TextStyle(color: Colors.black, fontSize: 16),)),
        TextButton(onPressed: (){print("About");}, child: Text("About" , style:  TextStyle(color: Colors.black, fontSize: 16),)),
      ],
    );
  }
}