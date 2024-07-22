import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../CarouselGallery.dart';
import '../../Settings.dart';
import './smallMobileHeader.dart';
class SmallMobileContainer_1 extends StatefulWidget{
  final ScrollController controller;
  SmallMobileContainer_1({required this.controller});
  @override
  State<SmallMobileContainer_1> createState() => _SmallMobileContainer_1State();
}

class _SmallMobileContainer_1State extends State<SmallMobileContainer_1> with TickerProviderStateMixin {
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

    var result = Provider.of<MyScrollPosition>(context);

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
          SmallMobileHeader(controller: AnimationController_2),

          Padding(
            padding: EdgeInsets.fromLTRB(rem(0.75), rem(2),rem(0.75),rem(3)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LineAnimation(AnimationController_0),
                        Container(height: rem(1.5),),
                        Container(height: MediaQuery.of(context).size.height/100*20,),

                        FadeInDemo(
                          controller: AnimationController_2,
                          child: Container(

                            child: Text("Kenshin is a design studio based in Tokyo - works globally to create iconic brands experiences, with a particular emphasis on what is essential", style: TextStyle(fontWeight: FontWeight.w400,fontSize: rem(1.4), height: 1.3),),),
                        ),

                      ],
                    )),


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
  late AnimationController _controller;
  late AnimationController _imageController;
  late CurvedAnimation _curve;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _imageController = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _curve = CurvedAnimation(parent: widget.controller, curve: Curves.easeIn);
    widget.controller.addListener(() {
      if(widget.controller.isCompleted){
        _imageController.forward();
      }

    });
  }



  late final Animation<Offset> _imageAnimation = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0,0),).animate(CurvedAnimation(parent: _imageController, curve: Curves.easeIn,));

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

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
}