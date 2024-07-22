import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';

class TabletContainer_4 extends StatefulWidget{
  TabletContainer_4({required this.controller});
  final ScrollController controller;

  @override
  State<TabletContainer_4> createState() => _TabletContainer_4State();
}

class _TabletContainer_4State extends State<TabletContainer_4> with TickerProviderStateMixin {
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
      if(isForwardAnimatingTrue(widget.controller, 2900) || isReverseAnimatingTrue(widget.controller, 4800) ){
        AnimationController_0.forward();
      }

      if(isForwardAnimatingTrue(widget.controller, 3100) || isReverseAnimatingTrue(widget.controller, 5000) ){
        AnimationController_1.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 3300) || isReverseAnimatingTrue(widget.controller, 5500) ){
        AnimationController_2.forward();
      }


    });

  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(1), rem(4), rem(1), rem(4)),
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
                          onPressed: (){print("get in touch");}, child: Text("Work" ,style:  TextStyle(color: Colors.black, fontSize: rem(1)),),),
                        Container(width: MediaQuery.of(context).size.width/12*3,),
                        Container(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/12*6,),
                          child: Text("Our work lie in effectively implementing strategic plans to generate tangible business value",style: TextStyle(fontWeight: FontWeight.w500, fontSize: rem(2.2), ),)
                          ,
                        )
                      ],
                    ),
                    Container(height: rem(1), color: Colors.white,),
                    Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),
                  ],
                ),
              ),
              FadeInDemo(
                controller: AnimationController_1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslateOnHover(child:
                          Image.asset("assets/images/macbook.png", width:(MediaQuery.of(context).size.width-2*rem(2)-10)/2 , height:(MediaQuery.of(context).size.width-2*rem(2)-10)/2/16*9,)
                          ),
                          Text("Duke",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.2)),),
                          Text("Brand Identity",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1), color: Color.fromRGBO(0, 0, 0, 0.5)),)

                        ],
                      ),
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslateOnHover(child:
                          Image.asset("assets/images/macbook.png", width:(MediaQuery.of(context).size.width-2*rem(2)-10)/2 , height:(MediaQuery.of(context).size.width-2*rem(2)-10)/2/16*9,)
                          ),
                          Text("Saason",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.2)),),
                          Text("Web Designer",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.0), color: Color.fromRGBO(0, 0, 0, 0.5)),)

                        ],
                      ),
                    ),


                  ],),
              ),
              FadeInDemo(
                controller: AnimationController_2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslateOnHover(child:
                          Image.asset("assets/images/macbook.png", width:(MediaQuery.of(context).size.width-2*rem(2)-10)/2 , height:(MediaQuery.of(context).size.width-2*rem(2)-10)/2/16*9,)
                          ),
                          Text("Levi Colwill",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.2)),),
                          Text("Web Designer",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.0), color: Color.fromRGBO(0, 0, 0, 0.5)),)

                        ],
                      ),
                    ),
                    Container(

                      width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TranslateOnHover(child:
                          Image.asset("assets/images/macbook.png", width:(MediaQuery.of(context).size.width-2*rem(2)-10)/2 , height:(MediaQuery.of(context).size.width-2*rem(2)-10)/2/16*9,)
                          ),
                          Text("Will",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.2)),),
                          Text("Branding",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.0), color: Color.fromRGBO(0, 0, 0, 0.5)),),
                          Container(height: rem(5),),
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


                  ],),
              )


            ],
          ),
        ),
      ),
    );
  }
}


class ThisContainer extends StatelessWidget {
  ThisContainer({this.child});
  final child;
  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }
}

class TranslateOnHover extends StatefulWidget {
  final Widget child;
  TranslateOnHover({required this.child});

  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  double scale = 1.0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 300),
        tween: Tween<double>(begin: 1.0, end: scale),
        builder: (BuildContext context, double value, _) {
          return Transform.scale(scale: value, child: widget.child);
        },
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      if (hover)
        scale = 1.05;
      else
        scale = 1.0;
    });
  }
}