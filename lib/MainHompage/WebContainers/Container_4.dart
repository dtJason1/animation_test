import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
import './WebWidgets.dart';

class WebContainer_4 extends StatefulWidget{
  final ScrollController controller;
  WebContainer_4({required this.controller});
  @override
  State<WebContainer_4> createState() => _WebContainer_4State();
}

class _WebContainer_4State extends State<WebContainer_4> with TickerProviderStateMixin {
  late AnimationController AnimationController_0;

  late AnimationController AnimationController_1;
  late AnimationController AnimationController_2;
  late AnimationController AnimationController_3;
  late AnimationController AnimationController_4;


  @override
  void initState(){
    AnimationController_0 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    AnimationController_1 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_2 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_3 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_4 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    super.initState();


  }
  @override
  void didChangeDependencies(){

    widget.controller.addListener(() {
      if(isForwardAnimatingTrue(widget.controller, 3200) || isReverseAnimatingTrue(widget.controller, 4000) ){
        AnimationController_0.forward();
      }

      if(isForwardAnimatingTrue(widget.controller, 3400) || isReverseAnimatingTrue(widget.controller, 4400) ){
        AnimationController_1.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 4000) || isReverseAnimatingTrue(widget.controller, 4700) ){
        AnimationController_2.forward();
      }



    });


  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(2), rem(10), rem(2), rem(10)),
        child: Container(

          width: MediaQuery.of(context).size.width,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              FadeInDemo(
                controller: AnimationController_0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [


                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        containerHeaderButton("WORK"),
                        Container(width: MediaQuery.of(context).size.width/12*3,),
                        Container(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/12*6,),
                            child: Text("Our work lie in effectively implementing strategic plans to generate tangible business value",style: TextStyle(fontWeight: FontWeight.w500, fontSize: rem(3.5), ),)
                          ,
                        )

                      ],
                    ),
                    Container(height: rem(1), color: Colors.white,),
                    Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),

                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Works(name: "Duke", explanation: "Brand Identity", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2),
                  Works(name: "Sasson", explanation: "Web Designer", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2),


              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Works(name: "Levi Colwill", explanation: "Web Designer", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2),
                  Works(name: "Will", explanation: "Branding", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2),
                ],)


            ],
          ),
        ),
      ),
    );
  }
}



//
// Container(
// width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// TranslateOnHover(child:
// Image.asset("assets/images/macbook.png", width:(MediaQuery.of(context).size.width-2*rem(2)-10)/2 , height:(MediaQuery.of(context).size.width-2*rem(2)-10)/2/16*9,)
// ),
// Text("Saason",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),
// Text("Web Designer",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4), color: Color.fromRGBO(0, 0, 0, 0.5)),)
//
// ],
// ),
// ),
