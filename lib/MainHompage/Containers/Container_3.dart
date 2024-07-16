import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';


class Container_3 extends StatefulWidget{
  @override
  State<Container_3> createState() => _Container_3State();
}

class _Container_3State extends State<Container_3> with TickerProviderStateMixin {
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
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FadeInDemo(controller:AnimationController_0, child: Container(color: Colors.cyan, width: MediaQuery.of(context).size.width/10 , height: MediaQuery.of(context).size.width/10,)),
          Column(children: [
            FadeInDemo(child: Text("Brand Design",style: TextStyle(fontWeight: FontWeight.bold , fontSize: rem(3.5))), controller: AnimationController_0,),
            FadeInDemo(child: Text("Web Design",style: TextStyle(fontWeight: FontWeight.bold , fontSize: rem(3.5))), controller: AnimationController_1,),
            FadeInDemo(child: Text("Motion Design",style: TextStyle(fontWeight: FontWeight.bold , fontSize: rem(3.5))), controller: AnimationController_2,),
            FadeInDemo(child: Text("3D Design",style: TextStyle(fontWeight: FontWeight.bold , fontSize: rem(3.5))), controller: AnimationController_3,),
            FadeInDemo(child: Text("Development",style: TextStyle(fontWeight: FontWeight.bold , fontSize: rem(3.5))), controller: AnimationController_4,),
            SizedBox(height: 10,)


          ],)

        ],
      ),
    );
  }
}
