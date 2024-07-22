import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kenshin_clone/MainHompage/TabletContainers/TabletFooter.dart';
import 'package:kenshin_clone/MainHompage/mobileContainers/MobileHeader.dart';
import 'package:kenshin_clone/MainHompage/smallMobileContainers/smallMobileFooter.dart';
import 'package:kenshin_clone/MainHompage/smallMobileContainers/smallMobileHeader.dart';
import 'package:kenshin_clone/MainHompage/smallMobileContainers/smallMobileContainers_3.dart';
import 'package:kenshin_clone/provider.dart';
import 'CarouselGallery.dart';
import 'package:kenshin_clone/FadeInDemo.dart';
import 'package:provider/provider.dart';
import 'MainHompage/WebContainers/Container_1.dart';
import 'MainHompage/WebContainers/Container_2.dart';
import 'MainHompage/WebContainers/Container_3.dart';
import 'MainHompage/WebContainers/Container_4.dart';
import 'MainHompage/WebContainers/Container_5.dart';
import 'MainHompage/WebContainers/Container_6.dart';
import 'MainHompage/WebContainers/Header.dart';
import 'MainHompage/WebContainers/Footer.dart';
import 'MainHompage/TabletContainers/tabletContainers_1.dart';
import 'MainHompage/TabletContainers/TabletContainers_2.dart';
import 'MainHompage/TabletContainers/TabletContainers_3.dart';
import 'MainHompage/TabletContainers/TabletContainers_4.dart';
import 'MainHompage/TabletContainers/TabletContainers_5.dart';
import 'MainHompage/TabletContainers/TabletContainers_6.dart';
import 'MainHompage/mobileContainers/MobileContainers_1.dart';
import 'MainHompage/mobileContainers/MobileContainers_2.dart';
import 'MainHompage/mobileContainers/MobileContainers_3.dart';
import 'MainHompage/mobileContainers/MobileContainers_4.dart';
import 'MainHompage/mobileContainers/MobileContainers_5.dart';
import 'MainHompage/mobileContainers/MobileContainers_6.dart';
import 'MainHompage/mobileContainers/MobileFooter.dart';
import 'MainHompage/smallMobileContainers/smallMobileContainers_1.dart';
import 'MainHompage/smallMobileContainers/smallMobileContainers_2.dart';
import 'MainHompage/smallMobileContainers/smallMobileContainers_4.dart';
import 'MainHompage/smallMobileContainers/smallMobileContainers_5.dart';
import 'MainHompage/smallMobileContainers/smallMobileContainers_6.dart';

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

           Builder(
             builder: (context) {
               if(MediaQuery.of(context).size.width  > 1300){

                 return Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     WebContainer_1(controller: scrollController,),
                     WebContainer_2(controller: scrollController,),
                     WebContainer_3(controller: scrollController,),
                     WebContainer_4(controller: scrollController,),
                     WebContainer_5(),
                     WebContainer_6(controller: scrollController,),
                     Footer(),


                   ],
                 );

               }
               else if(MediaQuery.of(context).size.width < 1300 && MediaQuery.of(context).size.width > 800) {
                 return Column(
                   crossAxisAlignment: CrossAxisAlignment.start,

                   children: [
                     TabletContainer_1(controller: scrollController,),
                     TabletContainer_2(controller: scrollController,),
                     TabletContainer_3(controller: scrollController,),
                     TabletContainer_4(controller: scrollController,),
                     TabletContainer_5(),
                     TabletContainer_6(controller: scrollController,),
                     TabletFooter()

                   ],
                 );

               }
               else if(MediaQuery.of(context).size.width < 800 && MediaQuery.of(context).size.width > 540){
                 return Column(
                   children: [
                     MobileContainer_1(controller: scrollController,),
                     MobileContainer_2(controller: scrollController,),
                     MobileContainer_3(controller: scrollController,),
                     MobileContainer_4(controller: scrollController,),
                     MobileContainer_5(),
                     MobileContainer_6(controller: scrollController,),
                     MobileFooter()


                   ],


                 );
               }
               else{
                 return Column(
                   children: [
                     SmallMobileContainer_1(controller:  scrollController,),
                     SmallMobileContainer_2(controller: scrollController),
                     SmallMobileContainer_3(controller: scrollController),
                     SmallMobileContainer_4(controller: scrollController,),
                     SmallMobileContainer_5(),
                     SmallMobileContainer_6(controller: scrollController,),
                     SmallMobileFooter()





                   ],

                 );

               }
             }
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




