import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CarouselGallery extends StatefulWidget {
  _CarouselGalleryState createState() => _CarouselGalleryState();
}

class _CarouselGalleryState extends State<CarouselGallery> with TickerProviderStateMixin {
  List<Widget> child = [];
  bool add = true;
  late AnimationController _animationController;
  late Animation _translateAnimation;
  @override
  void initState() {
    super.initState();
    _animationController =  AnimationController(duration: const Duration(seconds:7), vsync: this,);
    _translateAnimation = Tween<Offset>(begin: Offset(0, 0), end: Offset(0,0)).animate(_animationController);

    Future.delayed(Duration.zero, () {
      _translateAnimation =
          Tween<Offset>(begin: Offset(-MediaQuery.of(context).size.width/1920*480*3, 0), end: Offset(-MediaQuery.of(context).size.width/1920*480*6-8*3, 0)).animate(_animationController);
    });

    _animationController.repeat();


    _translateAnimation.addListener(() {
      _translateAnimation =
          Tween<Offset>(begin: Offset(-MediaQuery.of(context).size.width/1920*480*3, 0), end: Offset(-MediaQuery.of(context).size.width/1920*480*6-8*3, 0)).animate(_animationController);
    });
  }




  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: AnimatedBuilder(animation: _animationController,
            child: Stack(
              children: [
                Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/macbook.png"),))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/surfacepro.png"),))

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bezos.jpg"),))

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/macbook.png"),))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/surfacepro.png"),))

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bezos.jpg"),))

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/macbook.png"),))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/surfacepro.png"),))

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bezos.jpg"),))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/macbook.png"),))

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/surfacepro.png"),))

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(width: MediaQuery.of(context).size.width/1920*480,height: 300,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bezos.jpg"),))

                    ),
                  ),


                ]),
                Container(width: MediaQuery.of(context).size.width,)
              ],
            ),
            builder: (BuildContext context, Widget? child){
          return Transform.translate(
            offset: _translateAnimation.value,
            child: child,
          );
        }),
      ),
    );
      
      
    //   LoopAnimationBuilder<double>(
    //   tween: Tween(begin: -MediaQuery.of(context).size.width, end: MediaQuery.of(context).size.width),
    //   duration: const Duration(seconds: 15),
    //   curve: Curves.easeOut,
    //   builder: (context, value, child) {
    //     return Transform.translate(
    //       offset: Offset(value,0) ,
    //       child: child,
    //     );
    //   },
    //   child: Row(children: child),
    // );
  }


}
