import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../CarouselGallery.dart';
import '../../Settings.dart';
class WebContainer_1 extends StatefulWidget{
  @override
  State<WebContainer_1> createState() => _WebContainer_1State();
}

class _WebContainer_1State extends State<WebContainer_1> with TickerProviderStateMixin {
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
    if(result.scrollPosition >= 0){
      AnimationController_0.forward();
    }

  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(rem(2), rem(2),rem(2),rem(3)),
            child: Column(
              children: [
                Container(

                    child: Column(
                      children: [
                        LineAnimation(AnimationController_0),
                        Container(height: rem(1.5),),
                        Container(color: Colors.black, width: MediaQuery.of(context).size.width, height: 1,),
                        Padding(
                          padding: EdgeInsets.fromLTRB(((MediaQuery.of(context).size.width -34)/12*6),rem(8),0,0),
                          child: Container(

                            constraints: BoxConstraints(maxWidth: (MediaQuery.of(context).size.width - 34)/12*2),
                            child: Text("Kenshin is a design studio based in Tokyo - works globally to create iconic brands experiences, with a particular emphasis on what is essential", style: TextStyle(fontSize: rem(1.4)),),),
                        ),

                      ],
                    )),

                Container(height: rem(8),),

                CarouselGallery()
              ],
            ),
          ),
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

  late final Animation _offsetAnimation = Tween(begin: 0, end: MediaQuery.of(context).size.width,).animate(CurvedAnimation(parent: widget.controller, curve: Curves.easeInOut,));


  late final Animation<Offset> _imageAnimation = Tween<Offset>(begin: Offset(0.0, 1.0), end: Offset(0.0,0),).animate(CurvedAnimation(parent: _imageController, curve: Curves.easeIn,));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SlideTransition(
          position: _imageAnimation,
          child: Image.asset('assets/images/logo/big_logo.png', width: MediaQuery.of(context).size.width,),),

      ],
    );
  }

  @override
  dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
