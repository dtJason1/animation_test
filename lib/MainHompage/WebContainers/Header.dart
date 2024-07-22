import 'package:flutter/material.dart';
import 'package:kenshin_clone/MainHompage/WebContainers/WebWidgets.dart';
import '../../Settings.dart';
import '../../FadeInDemo.dart';

FadeInDemo myHeader (AnimationController controller){
  return FadeInDemo(
    controller: controller,
    child: Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(2), rem(2),rem(2),rem(3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeaderLogo(),
            HeaderTextButtons(),
            containerFooterButton("Get in Touch")
          ],
        ),
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