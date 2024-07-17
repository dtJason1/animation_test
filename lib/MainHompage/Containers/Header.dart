import 'package:flutter/material.dart';
import '../../Settings.dart';

Container myHeader (){
  return Container(
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.fromLTRB(rem(2), rem(2),rem(2),rem(3)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(),
          HeaderTextButtons(),
          ElevatedButton(

            style:ElevatedButton.styleFrom(
              minimumSize: Size(149,39),
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              foregroundColor: Colors.white,
              shadowColor: Colors.transparent,
              padding: EdgeInsets.fromLTRB(rem(1), rem(0.25), rem(0.25), rem(0.25)),
              shape: RoundedRectangleBorder(side: BorderSide(
                  color: Colors.black,
                  width: 1,
                  style: BorderStyle.solid
              ), borderRadius: BorderRadius.circular(24)),

            )  ,
            onPressed: (){print("get in touch");}, child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text("Get in touch",style:  TextStyle(color: Colors.black, fontSize: rem(1)),),
              SizedBox(width: rem(0.5),),
              Container(
                  decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                  child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
              )
            ],),)
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