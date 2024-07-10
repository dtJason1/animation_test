import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

// 저번에는 폰트 사이즈가 통일 되지 않아서
int ROOT_FONT_SIZE = 16;

double rem(double value){
  return ROOT_FONT_SIZE * value;

}



class MainHomepage extends StatefulWidget{
  @override
  State<MainHomepage> createState() => _MainHomepageState();
}

class _MainHomepageState extends State<MainHomepage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _lineController;

  @override
  void initState(){
    _lineController = AnimationController(vsync: this, duration: Duration(seconds: 1));

    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _lineController.forward().then((value) => _controller.forward());


  }

  @override
  Widget build(BuildContext context){
   return Container(

     width: MediaQuery.of(context).size.width,
     child: Padding(
       padding: const EdgeInsets.fromLTRB(32,0,32,0),
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.fromLTRB(0,16,0,16),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                  HeaderLogo(),
                  HeaderTextButtons(),
                  ElevatedButton(

                    style:ElevatedButton.styleFrom(
                      minimumSize: Size(149,39),
                      backgroundColor: Colors.white,
                        surfaceTintColor: Colors.white,
                      foregroundColor: Colors.white,
                  )  ,
                    onPressed: (){print("get in touch");}, child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children: [Text("Get in Touch" ,style:  TextStyle(color: Colors.black, fontSize: 16),),
                        SizedBox(width: 16,),
                        Container(
                          decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                          child: Icon(Icons.arrow_forward_sharp , color: Colors.black,))
                      ],),)
               ],
             ),
           ),
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.fromLTRB(0,16,0,16),
                 child: FadeInDemo(Image.asset('assets/images/logo/big_logo.png'), _controller),
               ),
               Container(height: rem(1.5), color: Colors.white,),
               Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),
               Container(height: rem(8), color: Colors.white,),
                CarouselGallery([Container(color: Colors.black, width: 450,height: 300,), Container(color: Colors.red, width: 450, height: 300,),Container(color: Colors.blue, width: 450, height: 300,)], _controller)]
           )
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



class FadeInDemo extends StatefulWidget {
  final Widget child;
  final AnimationController controller;
  FadeInDemo(this.child, this.controller);
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> with TickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _curve;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _curve = CurvedAnimation(parent: widget.controller, curve: Curves.easeIn);
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




class CarouselGallery extends StatefulWidget {
  final List<Container> child;
  final AnimationController controller;
  CarouselGallery(this.child, this.controller);
  _CarouselGalleryState createState() => _CarouselGalleryState();
}

class _CarouselGalleryState extends State<CarouselGallery> with TickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _curve;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 10));
    _curve = CurvedAnimation(parent: widget.controller, curve: Curves.easeIn);
    _controller.forward();
    if(_controller.isAnimating){

    }
  }

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(1.0, 0),
    end: Offset(-1.5,0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  ));

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _offsetAnimation,
        child: Builder(
          builder: (context) {

            return Container(child: Row(children: widget.child,),);
          }
        )
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
