import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
class MobileContainer_2 extends StatefulWidget{
  final ScrollController controller;
  MobileContainer_2({required this.controller});
  @override
  State<MobileContainer_2> createState() => _MobileContainer_2State();
}

class _MobileContainer_2State extends State<MobileContainer_2> with TickerProviderStateMixin {
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
      if(isForwardAnimatingTrue(widget.controller, 300) || isReverseAnimatingTrue(widget.controller, 600) ){
        AnimationController_0.forward();
      }

      if(isForwardAnimatingTrue(widget.controller, 400) || isReverseAnimatingTrue(widget.controller, 700) ){
        AnimationController_1.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 500) || isReverseAnimatingTrue(widget.controller, 800) ){
        AnimationController_2.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 600) || isReverseAnimatingTrue(widget.controller, 1000) ){
        AnimationController_3.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 700) || isReverseAnimatingTrue(widget.controller, 1200) ){
        AnimationController_4.forward();
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(1),rem(4),rem(1),rem(4)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                FadeInDemo(
                  controller: AnimationController_0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(

                        style:ElevatedButton.styleFrom(

                          backgroundColor: Colors.white,
                          surfaceTintColor: Colors.white,
                          foregroundColor: Colors.white,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.fromLTRB(rem(0.75), rem(0.25), rem(0.75), rem(0.25)),
                          shape: RoundedRectangleBorder(side: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid
                          ), borderRadius: BorderRadius.circular(24)),

                        )  ,
                        onPressed: (){print("get in touch");}, child: Text("About" ,style:  TextStyle(color: Colors.black, fontSize: rem(1)),),),
                      Container(height: rem(1), color: Colors.white,),
                      Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),
                    ],
                  ),
                ),
                FadeInDemo(
                  controller: AnimationController_1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0,rem(3),0,rem(8)),
                    child: Text("We are a team of passionate and crazy individuals dedicated to bringing your ideas to life. With a keen eye for aesthetics, attention to detail, and a deep understanding of design principles, we strive to deliver exceptional results that exceed your expectations", style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(2.2),height: 1.2),),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: rem(3)),
                      child:

                      FadeInDemo(
                        controller: AnimationController_2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                width:  (MediaQuery.of(context).size.width-32)/12*4,
                                child: Row(
                                  children: [
                                    Container(width: 1, height: 130,  color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(left: rem(1.5)),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [Text("10", style: TextStyle(fontSize: rem(5)),),  Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("(Year)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                              )],),
                                            Text("In the digital design industry", softWrap: true,  style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Expanded(
                              child: Container(
                                width:  (MediaQuery.of(context).size.width-32)/12*4,

                                child: Row(
                                  children: [
                                    Container(width: 1, height: 130,  color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(left: rem(1.5)),
                                      child: Container(

                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [Text("12", style: TextStyle(fontSize: rem(5)),),  Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("(Country)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                              )],),
                                            Container(
                                                width:  (MediaQuery.of(context).size.width-32)/12*4,

                                                child: Text("Work across around the world", softWrap: true, style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: rem(3)),
                      child:

                      FadeInDemo(
                        controller: AnimationController_3,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Container(
                                width:  (MediaQuery.of(context).size.width-32)/12*4,
                                child: Row(
                                  children: [
                                    Container(width: 1, height: 130,  color: Colors.grey,),
                                    Padding(
                                      padding: EdgeInsets.only(left: rem(1.5)),
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [Text("61", style: TextStyle(fontSize: rem(5)),),  Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text("(Project)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                              )],),
                                            Container(
                                                width:  (MediaQuery.of(context).size.width-32)/12*4,
                              
                                                child: Text("With satisfaction from customer", softWrap: true,  style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            Expanded(
                              child: Container(
                                width:  (MediaQuery.of(context).size.width-32)/12*4,
                              
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Container(width: 1, height: 130,  color: Colors.grey,),
                                        Padding(
                                          padding: EdgeInsets.only(left: rem(1.5)),
                                          child: Container(
                              
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [Text("30", style: TextStyle(fontSize: rem(5)),),  Padding(
                                                    padding: EdgeInsets.all(8.0),
                                                    child: Text("(People)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                                  )],),
                                                Container(
                                                    width:  (MediaQuery.of(context).size.width-32)/12*4,
                              
                                                    child: Text("Talent on the team", softWrap: true, style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(height: rem(3),),
                                    Container(
                                      width: 164.66,
                                      height: 38.67,
                                      child: ElevatedButton(
                              
                                        style:ElevatedButton.styleFrom(
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
                                          Text("More About us" ,style:  TextStyle(color: Colors.black, fontSize: rem(1)),),
                                          SizedBox(width: rem(0.5),),
                                          Container(
                                              decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                                              child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
                                          )
                                        ],),),
                                    )
                              
                                  ],
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),


                  ],
                )
              ],

            )

          ],
        ),
      ),
    );
  }
}
