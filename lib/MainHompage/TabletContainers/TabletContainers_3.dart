import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';


class TabletContainer_3 extends StatefulWidget{
  final ScrollController controller;
  TabletContainer_3({required this.controller});
  @override
  State<TabletContainer_3> createState() => _TabletContainer_3State();
}

class _TabletContainer_3State extends State<TabletContainer_3> with TickerProviderStateMixin {
  late AnimationController AnimationController_0;

  late AnimationController AnimationController_1;
  late AnimationController AnimationController_2;
  late AnimationController AnimationController_3;
  late AnimationController AnimationController_4;
  late AnimationController AnimationController_5;


  @override
  void initState(){
    AnimationController_0 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    AnimationController_1 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_2 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_3 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_4 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_5 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    super.initState();


  }
  @override
  void didChangeDependencies(){

    var result = Provider.of<MyScrollPosition>(context);

    widget.controller.addListener(() {
      if(isForwardAnimatingTrue(widget.controller, 1600) || isReverseAnimatingTrue(widget.controller, 2000) ){
        AnimationController_0.forward();
      }

      if(isForwardAnimatingTrue(widget.controller, 1800) || isReverseAnimatingTrue(widget.controller, 2200) ){
        AnimationController_1.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 2000) || isReverseAnimatingTrue(widget.controller, 2400) ){
        AnimationController_2.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 2200) || isReverseAnimatingTrue(widget.controller, 2600) ){
        AnimationController_3.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 2400) || isReverseAnimatingTrue(widget.controller, 2800) ){
        AnimationController_4.forward();
      }
      if(isForwardAnimatingTrue(widget.controller, 2600) || isReverseAnimatingTrue(widget.controller, 3000) ){
        AnimationController_5.forward();
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
            crossAxisAlignment: CrossAxisAlignment.start  ,

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
                      onPressed: (){print("get in touch");}, child: Text("Services" ,style:  TextStyle(color: Colors.black, fontSize: rem(1)),),),
                    SizedBox(height: rem(1),),
                    Container(width: MediaQuery.of(context).size.width, height: 1,color: Colors.black,),
                    SizedBox(height: rem(3),),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDemo(controller:AnimationController_0, child: Container(
                    width: ((MediaQuery.of(context).size.width)-(2*rem(2)))/8*4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(width: ((MediaQuery.of(context).size.width)-(2*rem(2)))/8*4 , height: ((MediaQuery.of(context).size.width)-(2*rem(2)))/8*4/16*9,
                            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bezos.jpg"), fit: BoxFit.fitWidth))


                        ),
                        Container(height: rem(1),),
                        Text("We create business value from strategy to perfect execution", softWrap: true, style: TextStyle(fontSize: rem(1.2), fontWeight: FontWeight.w400),)

                      ],
                    ),
                  )

                  ),
                  SizedBox(height: rem(3),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      FadeInDemo(child:
                      Row(

                        children: [
                          Text("Brand Design",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: MediaQuery.of(context).size.width/100*10)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,0,50),
                            child: Text("(01)",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(1))),
                          )
                        ],
                      ), controller: AnimationController_0,),
                      FadeInDemo(child:  Row(

                        children: [
                          Text("Web Design",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: MediaQuery.of(context).size.width/100*10)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,0,50),
                            child: Text("(02)",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(1))),
                          )
                        ],
                      ), controller: AnimationController_1,),
                      FadeInDemo(child: Row(

                        children: [
                          Text("Motion Design",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: MediaQuery.of(context).size.width/100*10)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,0,50),
                            child: Text("(03)",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(1))),
                          )
                        ],
                      ),controller: AnimationController_2,),
                      FadeInDemo(child: Row(

                        children: [
                          Text("3D Design",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: MediaQuery.of(context).size.width/100*10)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,0,50),
                            child: Text("(04)",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(1))),
                          )
                        ],
                      ), controller: AnimationController_3,),
                      FadeInDemo(child: Row(

                        children: [
                          Text("Development",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: MediaQuery.of(context).size.width/100*10)),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,0,50),
                            child: Text("(05)",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(1))),
                          )
                        ],
                      ), controller: AnimationController_4,),
                      SizedBox(height: rem(4),),
                      FadeInDemo(
                        controller: AnimationController_5,
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
                          onPressed: (){print("get in touch");}, child: Container(
                          width: 137.5,
                            height: 38.67,
                            child: Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Text("View Detail" ,style:  TextStyle(color: Colors.black, fontSize: rem(1)),),
                              SizedBox(width: rem(0.5),),
                              Container(
                                  decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                                  child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
                              )
                            ],),
                          ),),
                      )


                    ],)

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
