import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';



class WebContainer_5 extends StatefulWidget{

  @override
  State<WebContainer_5> createState() => _WebContainer_5State();
}

class _WebContainer_5State extends State<WebContainer_5> with TickerProviderStateMixin {
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
        padding: EdgeInsets.fromLTRB(0, rem(10), 0, 0),
        child: Container(

          width: MediaQuery.of(context).size.width,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width/16*11,
                    child: Image.asset("assets/images/big_image.png", fit: BoxFit.cover,),

                  )

                ],)


            ],
          ),
        ),
      ),
    );
  }
}
