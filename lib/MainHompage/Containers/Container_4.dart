import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';


class Container_4 extends StatefulWidget{
  @override
  State<Container_4> createState() => _Container_4State();
}

class _Container_4State extends State<Container_4> with TickerProviderStateMixin {
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
    if(result.scrollPosition > 500){
      AnimationController_0.forward();
    }
    if(result.scrollPosition > 530){
      AnimationController_1.forward();
    }
    if(result.scrollPosition > 560){
      AnimationController_2.forward();
    }
    if(result.scrollPosition > 590){
      AnimationController_3.forward();
    }
    if(result.scrollPosition > 620){
      AnimationController_4.forward();
    }
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
              Row(
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
                      Text("Duke",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),
                      Text("Brand Identity",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4), color: Color.fromRGBO(0, 0, 0, 0.5)),)

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
                        Text("Saason",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),
                        Text("Web Designer",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4), color: Color.fromRGBO(0, 0, 0, 0.5)),)

                      ],
                    ),
                  ),


              ],),
              Row(
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
                        Text("Levi Colwill",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),
                        Text("Web Designer",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4), color: Color.fromRGBO(0, 0, 0, 0.5)),)

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
                        Text("Will",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),),
                        Text("Branding",style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4), color: Color.fromRGBO(0, 0, 0, 0.5)),)

                      ],
                    ),
                  ),


                ],)


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