import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../CarouselGallery.dart';
import '../../Settings.dart';
import './TabletHeader.dart';
class TabletContainer_1 extends StatefulWidget{
  final ScrollController controller;
  TabletContainer_1({required this.controller});

  @override
  State<TabletContainer_1> createState() => _TabletContainer_1State();
}

class _TabletContainer_1State extends State<TabletContainer_1> with TickerProviderStateMixin {
  late AnimationController AnimationController_0;

  late AnimationController AnimationController_1;
  late AnimationController AnimationController_2;


  @override
  void initState(){
    AnimationController_0 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_1 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_2 = AnimationController(vsync: this, duration: Duration(seconds: 1));



    super.initState();


  }
  @override
  void didChangeDependencies(){

    if(widget.controller.offset== 0){
      AnimationController_1.forward().whenComplete(() => AnimationController_0.forward().then((value) =>
          Future.delayed(Duration(seconds: 1)).then((value) => AnimationController_2.forward() )));
    }

    widget.controller.addListener(() {
      if(isForwardAnimatingTrue(widget.controller, 0) || isReverseAnimatingTrue(widget.controller, 0) ){
        AnimationController_1.forward().whenComplete(() => AnimationController_0.forward().then((value) =>
            Future.delayed(Duration(seconds: 1)).then((value) => AnimationController_2.forward() )));
      }
    });



  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          tabletHeader(AnimationController_2),
          Padding(
            padding: EdgeInsets.fromLTRB(rem(2), rem(2),rem(2),rem(3)),
            child: Column(
              children: [
                Container(

                    child: Column(
                      children: [
                        LineAnimation(AnimationController_0),
                        Container(height: rem(1.5),),
                        FadeInDemo(
                          controller: AnimationController_2,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(((MediaQuery.of(context).size.width -2*rem(2))/8*4),rem(8),0,0),
                            child: Container(

                              constraints: BoxConstraints(maxWidth: (MediaQuery.of(context).size.width - 2*rem(2))/8*4),
                              child: Text("Kenshin is a design studio based in Tokyo - works globally to create iconic brands experiences, with a particular emphasis on what is essential", style: TextStyle(fontSize: rem(1.4)),),),
                          ),
                        ),

                      ],
                    )),

                Container(height: rem(8),),

              ],
            ),
          ),
          FadeInDemo(
              controller: AnimationController_2,
              child: CarouselGallery())

        ],
      ),
    );

  }
}

class LineAnimation extends StatefulWidget {
  final AnimationController controller;
  LineAnimation( this.controller);
  _LineAnimationoState createState() => _LineAnimationoState();
}

class _LineAnimationoState extends State<LineAnimation> with TickerProviderStateMixin {

  @override
  void initState() {

  }



  late final Animation<Offset> _imageAnimation = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0,0),).animate(CurvedAnimation(parent: widget.controller, curve: Curves.easeIn,));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SlideTransition(
          position: _imageAnimation,
          child: Image.asset('assets/images/logo/big_logo.png', width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.width/2699*305,),),

        Positioned(
            bottom: MediaQuery.of(context).size.width/2699*305,
            child: Container(color: Colors.white, width: MediaQuery.of(context).size.width,height: MediaQuery.of(context).size.width/2699*305,))
      ],
    );
  }


}

