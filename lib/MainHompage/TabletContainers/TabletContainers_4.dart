import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:kenshin_clone/MainHompage/TabletContainers/TabletWidgets.dart';
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
                    containerHeaderButton("Work"),
                    Container(height: rem(1), color: Colors.white,),
                    Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),
                  ],
                ),
              ),
              FadeInDemo2(
                scrollController: widget.controller,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Works(name: "Saason", explanation: "Web Designer", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2),
                    Works(name: "Saason", explanation: "Web Designer", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2)



                  ],),
              ),
              FadeInDemo2(
                scrollController: widget.controller,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Works(name: "Saason", explanation: "Web Designer", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2),
                    Works(name: "Saason", explanation: "Web Designer", scrollController: widget.controller, width: (MediaQuery.of(context).size.width-2*rem(2)-10)/2)

                  ],),
              ),
              Container(height: rem(3),),
              Container(
                  width: 170,
                  child: containerFooterButton("View All Project"))


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