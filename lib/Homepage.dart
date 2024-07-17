import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/provider.dart';
import 'CarouselGallery.dart';
import 'package:kenshin_clone/FadeInDemo.dart';
import 'package:provider/provider.dart';
import 'MainHompage/Containers/Container_1.dart';
import 'MainHompage/Containers/Container_2.dart';
import 'MainHompage/Containers/Container_3.dart';
import 'MainHompage/Containers/Container_4.dart';
import 'MainHompage/Containers/Container_5.dart';

import 'MainHompage/Containers/Header.dart';



class MainHomepage extends StatefulWidget{
  @override
  State<MainHomepage> createState() => _MainHomepageState();
}



class _MainHomepageState extends State<MainHomepage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _lineController;
  late AnimationController _firsWidgetController;

  late AnimationController AnimationController_1;
  late AnimationController AnimationController_2;
  late AnimationController AnimationController_3;
  late AnimationController AnimationController_4;

  final ScrollController scrollController = ScrollController();
  @override
  void initState(){

    super.initState();
    _lineController = AnimationController(vsync: this, duration: Duration(seconds: 1));

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));

    _firsWidgetController = AnimationController(vsync: this, duration: Duration(seconds: 1));

    AnimationController_1 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_2 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_3 = AnimationController(vsync: this, duration: Duration(seconds: 1));
    AnimationController_4 = AnimationController(vsync: this, duration: Duration(seconds: 1));

    _lineController.forward().then((value) => _controller.forward());






  }

  @override
  void didChangeDependencies(){
    // var result = Provider.of<MyScrollPosition>(context);
    //
    // result.scrollPositionUpdate(scrollController.offset);

    scrollController.addListener(() {
      var result = Provider.of<MyScrollPosition>(context, listen: false);

      result.scrollPositionUpdate(scrollController.offset);
      // if(scrollController.offset > 0){
      //   _lineController.forward().then((value) => _controller.forward());
      // }
      // print(scrollController.offset);
      // if(scrollController.offset > 66){
      //   AnimationController_1.forward();
      // }
      // if(scrollController.offset > 300){
      //   AnimationController_2.forward();
      // }
      // if(scrollController.offset > 500){
      //   AnimationController_3.forward();
      // }
      // if(scrollController.offset > 700){
      //   AnimationController_4.forward();
      // }
    });

  }
  @override
  Widget build(BuildContext context){
   return Scaffold(
     body: SingleChildScrollView(
       controller: scrollController,
       child: Stack(
         children: [

           Column(
             crossAxisAlignment: CrossAxisAlignment.start,

             children: [
                  myHeader(),

                  Container_1(),

                  Container_2(),
                  Container_3(),
                  Container_4(),
                  Container_5()
             ],
           ),
         ],
       ),
     ),
   );
  }
}

class HeaderLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  GestureDetector(
      onTap: (){print("logo tapped");},
      child: Container(
        width: 141.58,
        height: 16,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/logo/big_logo.png')
          ),
        ),
      ),
    );
  }
}


class HeaderTextButtons extends StatelessWidget{
 @override
 Widget build(BuildContext context){
   return Row(
     children: [
       TextButton(onPressed: (){print("work");}, child: Text("Work", style: TextStyle(color: Colors.black, fontSize: 16),)),
       TextButton(onPressed: (){print("Service");}, child: Text("Service" , style: TextStyle(color: Colors.black, fontSize: 16),)),
       TextButton(onPressed: (){print("About");}, child: Text("About" , style:  TextStyle(color: Colors.black, fontSize: 16),)),
     ],
   );
 }
}





class EaseIn extends StatefulWidget {
  final Widget child;
  final AnimationController controller;
  EaseIn(this.child, this.controller);
  _EaseInState createState() => _EaseInState();
}

class _EaseInState extends State<EaseIn> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0.0, 0.5),
    end: Offset(0.0,0.0),
  ).animate(CurvedAnimation(
    parent: widget.controller,
    curve: Curves.easeIn,
  ));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
        child:  widget.child

      // child: FadeTransition(
      //     opacity: _curve,
      //     child: widget.child
      // ),
    );
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class myCon extends StatefulWidget{
  @override
  State<myCon> createState() => _myConState();
}

class _myConState extends State<myCon> with TickerProviderStateMixin {
  late AnimationController AnimationController_1;


  @override
  void initState(){
    AnimationController_1 = AnimationController(vsync: this, duration: Duration(seconds: 1));



    super.initState();


  }
  @override
  void didChangeDependencies(){

    var result = Provider.of<MyScrollPosition>(context);
    if(result.scrollPosition > 500){
      AnimationController_1.forward();
    }
  }
  @override
  Widget build(BuildContext context){
    return FadeInDemo(child: Container(width:  300, height: 300, color: Colors.red,), controller: AnimationController_1,);
  }
}




