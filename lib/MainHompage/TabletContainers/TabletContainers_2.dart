import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/MainHompage/TabletContainers/TabletWidgets.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
class TabletContainer_2 extends StatefulWidget{
  final ScrollController controller;
  TabletContainer_2({required this.controller});
  @override
  State<TabletContainer_2> createState() => _TabletContainer_2State();
}

class _TabletContainer_2State extends State<TabletContainer_2> with TickerProviderStateMixin {
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

    var result = Provider.of<MyScrollPosition>(context);
    widget.controller.addListener(() {
      if(isForwardAnimatingTrue(widget.controller, 600) || isReverseAnimatingTrue(widget.controller, 600) ){
        AnimationController_0.forward();
      }

      if(isForwardAnimatingTrue(widget.controller, 800) || isReverseAnimatingTrue(widget.controller, 1000) ){
        AnimationController_1.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 1000) || isReverseAnimatingTrue(widget.controller, 1200) ){
        AnimationController_2.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 1200) || isReverseAnimatingTrue(widget.controller, 1400) ){
        AnimationController_3.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 1400) || isReverseAnimatingTrue(widget.controller, 1400) ){
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
                        containerHeaderButton("ABOUT"),
                        Container(height: rem(1), color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width, height: 1, color: Color.fromRGBO(0, 0, 0, 0.2),),
                      ],
                    ),
                  ),


                  FadeInDemo(
                    controller: AnimationController_1,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0,rem(3),0,rem(8)),
                      child: Text("We are a team of passionate and crazy individuals dedicated to bringing your ideas to life. With a keen eye for aesthetics, attention to detail, and a deep understanding of design principles, we strive to deliver exceptional results that exceed your expectations", style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(2.2)),),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: rem(3)),
                    child:

                    FadeInDemo(
                      controller: AnimationController_2,
                      child: Row(
                        children: [
                          Container(
                            width:  (MediaQuery.of(context).size.width-64)/8*2,
                            child: Row(
                              children: [
                                Container(width: 1, height: 130,  color: Color.fromRGBO(0, 0, 0, 0.2),),
                                Padding(
                                  padding: EdgeInsets.only(left: rem(1.5)),
                                  child: Container(
                                    width:  (MediaQuery.of(context).size.width-64)/8*2-rem(1.5)-1 ,
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


                          Padding(
                            padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width-64)/8),
                            child: Row(
                              children: [
                                Container(width: 1, height: 130,  color: Color.fromRGBO(0, 0, 0, 0.2),),
                                Padding(
                                  padding: EdgeInsets.only(left: rem(1.5)),
                                  child: Container(
                                    width:  (MediaQuery.of(context).size.width-64)/8*2-rem(1.5)-1 ,

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
                                        Text("Work across around the world", style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  FadeInDemo(
                    controller: AnimationController_3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width:  (MediaQuery.of(context).size.width-64)/8*2,
                              child: Row(
                                children: [
                                  Container(width: 1, height: 130,  color: Color.fromRGBO(0, 0, 0, 0.2),),
                                  Padding(
                                    padding: EdgeInsets.only(left: rem(1.5)),
                                    child: Container(
                                      width:  (MediaQuery.of(context).size.width-64)/8*2-rem(1.5)-1 ,
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
                                          Text("With satisfaction from customer", softWrap: true,  style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width-64)/8),
                              child: Row(
                                children: [
                                  Container(width: 1, height: 130,  color: Color.fromRGBO(0, 0, 0, 0.2),),
                                  Padding(
                                    padding: EdgeInsets.only(left: rem(1.5)),
                                    child: Container(
                                      width:  (MediaQuery.of(context).size.width-64)/8*2-rem(1.5)-1 ,

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
                                          Text("Talent on the team", style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],
                        ),
                                           ],
                    ),
                  ),
                  Container(height: rem(3),),
                  FadeInDemo(
                    controller: AnimationController_3,
                    child: Container(
                      height: 39,
                      width: 170,

                      child: ElevatedButton(

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
                          Text("More About us" ,style:  TextStyle(color: Color.fromRGBO(0, 0, 0, 0.85),fontWeight: FontWeight.w400 ,fontSize: rem(1)),),
                          SizedBox(width: rem(0.5),),
                          Container(
                              decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1)),),
                              child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
                          )
                        ],),),
                    )    ,
                  )
                ],
              )

            ],
          ),
      ),
    );
  }
}
