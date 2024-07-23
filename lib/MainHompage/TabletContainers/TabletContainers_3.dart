import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
import './TabletWidgets.dart';


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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FadeInDemo2(
                scrollController: widget.controller,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    containerHeaderButton("Services"),
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
                  FadeInDemo2(scrollController:widget.controller, child: Container(
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

                    children: List<Widget>.generate(serviceList.length, (index) => Services(text: serviceList[index], columnList: "(0${index+1})", scrollController: widget.controller, fontValue: 10, )) +

                        [ SizedBox(height: rem(4),),
                      Container(
                        width: 170,
                        child: FadeInDemo2(
                            scrollController: widget.controller,
                            child: containerFooterButton("Get In Touch")),
                      )]


                  ),

              ]

              ),
            ],
          ),
        ),
      ),
    );
  }
}
