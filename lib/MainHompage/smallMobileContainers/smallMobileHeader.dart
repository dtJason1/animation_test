import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../CarouselGallery.dart';
import '../../Settings.dart';
class SmallMobileHeader extends StatefulWidget{
  final AnimationController controller;
  SmallMobileHeader({required this.controller });
  @override
  State<SmallMobileHeader> createState() => _SmallMobileHeaderState();
}

class _SmallMobileHeaderState extends State<SmallMobileHeader> with TickerProviderStateMixin {
  late AnimationController AnimationController_0;



  @override
  void initState(){
    AnimationController_0 = AnimationController(vsync: this, duration: Duration(seconds: 1));



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
    return FadeInDemo(
      controller: widget.controller,
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(rem(1), rem(1),rem(1),rem(1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderLogo(),
              TextButton(

                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    surfaceTintColor: Colors.white,
                    foregroundColor: Colors.white,
                    shadowColor: Colors.transparent,
                    padding: EdgeInsets.fromLTRB(rem(1), rem(0.25), rem(0.25), rem(0.25)),

                  )  ,
                  onPressed: (){print("get in touch");}, child:
              Text("Menu", style: TextStyle(color: Colors.black, fontSize: rem(1), fontWeight: FontWeight.w400),)      )
            ],
          ),
        ),
      ),
    );

  }
}

