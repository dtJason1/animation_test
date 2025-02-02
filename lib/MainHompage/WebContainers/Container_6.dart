import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:kenshin_clone/MainHompage/WebContainers/WebWidgets.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';



class WebContainer_6 extends StatefulWidget{

  final ScrollController controller;
  WebContainer_6({required this.controller});
  @override
  State<WebContainer_6> createState() => _WebContainer_6State();
}

class _WebContainer_6State extends State<WebContainer_6> with TickerProviderStateMixin {
  late AnimationController AnimationController_0;

  late AnimationController AnimationController_1;
  late AnimationController AnimationController_2;
  late AnimationController AnimationController_3;
  late AnimationController AnimationController_4;

  @override
  void dispose(){
    super.dispose();

  }
  @override
  void initState(){
    AnimationController_0 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    AnimationController_1 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_2 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_3 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_4 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    if(mounted){
      widget.controller.addListener(() {
        if(isForwardAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 500) || isReverseAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 1000) ){
          AnimationController_0.forward();
        }

        if(isForwardAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 1000) || isReverseAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 1500) ){
          AnimationController_1.forward();
        }
        if(isForwardAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 1200) || isReverseAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 2000) ){
          AnimationController_2.forward();
        }
        if(isForwardAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 1400) || isReverseAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 2200) ){
          AnimationController_3.forward();
        }
        if(isForwardAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 1500) || isReverseAnimatingTrue(widget.controller, 4000 + MediaQuery.of(context).size.width/16*11 + 2300) ){
          AnimationController_4.forward();
        }

      });


    }

    super.initState();


  }
  @override
  void didChangeDependencies(){




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
              FadeInDemo2(
                scrollController: widget.controller,
                child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        containerHeaderButton("TESTIMONIAL"),
                        Container(width: MediaQuery.of(context).size.width/12*3,),
                        Container(constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/12*6,),
                          child: Text("We help you avoid looking like the rest of them",style: TextStyle(fontWeight: FontWeight.w500, fontSize: rem(3.5), ),)
                          ,
                        )
                      ],
                    ),
                    Container(height: rem(1), color: Colors.white,),
                    Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),
                    Container(height: rem(3), color: Colors.white,),
                  ],
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [

                  FadeInDemo2(
                    scrollController: widget.controller,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/Human_face.png", width: 72, height: 72,),
                        Container(width: rem(1.5),),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/12*3),
                              child: Text("Working with Kenshin Studio was an absolute delight! They listened to our requirements and turned our vision into a stunning reality. The attention to detail and creativity in their designs truly set them apart. We couldn't be happier with the outcome", softWrap:true, style:  TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),),
                            Container(height: rem(1.5),),
                            Container(child: Text("Chandler Riggs",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),),
                            Container(child: Text("CEO of Relix",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4), color: Color.fromRGBO(0, 0, 0, 0.5)),),)

                          ],
                        )


                      ],

                    ),
                  ),
                  Column(
                    children: [
                      FadeInDemo2(
                        scrollController: widget.controller,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: [
                              Container(height: MediaQuery.of(context).size.width/100*12, width: MediaQuery.of(context).size.width/12*2, color: Color.fromRGBO(245, 245, 245, 1),
                              child:  Image.asset("assets/images/logo.png"),),
                              Container(width: rem(1),),
                              Container(height: MediaQuery.of(context).size.width/100*12, width: MediaQuery.of(context).size.width/12*2, color: Color.fromRGBO(245, 245, 245, 1),
                                child:  Image.asset("assets/images/logo.png"),),
                              Container(width: rem(1),),

                              Container(height: MediaQuery.of(context).size.width/100*12, width: MediaQuery.of(context).size.width/12*2, color: Color.fromRGBO(245, 245, 245, 1),
                                child:  Image.asset("assets/images/logo.png"),),


                            ],),
                            Container(height: rem(1),),
                          ],
                        ),
                      ),
                      FadeInDemo2(
                        scrollController: widget.controller,
                        child: Row(children: [
                          Container(height: MediaQuery.of(context).size.width/100*12, width: MediaQuery.of(context).size.width/12*2, color: Color.fromRGBO(245, 245, 245, 1),
                            child:  Image.asset("assets/images/logo.png"),),
                          Container(width: rem(1),),
                          Container(height: MediaQuery.of(context).size.width/100*12, width: MediaQuery.of(context).size.width/12*2, color: Color.fromRGBO(245, 245, 245, 1),
                            child:  Image.asset("assets/images/logo.png"),),
                          Container(width: rem(1),),

                          Container(height: MediaQuery.of(context).size.width/100*12, width: MediaQuery.of(context).size.width/12*2, color: Color.fromRGBO(245, 245, 245, 1),
                            child:  Image.asset("assets/images/logo.png"),),
                        ],),
                      ),
                    ],
                  )



              ],)
            ],
          ),
        ),
      ),
    );
  }
}
