import 'package:flutter/material.dart';
import 'Homepage.dart';
import './Settings.dart';


class FadeInDemo extends StatefulWidget {

  FadeInDemo({required this.child, required this.controller});
  final Widget child;
  final AnimationController controller;
  _FadeInDemoState createState() => _FadeInDemoState();
}

class _FadeInDemoState extends State<FadeInDemo> with TickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _curve;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(microseconds: 500));
    _curve = CurvedAnimation(parent: widget.controller, curve: Curves.easeIn);
  }

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0.0, 0.2),
    end: Offset(0.0,0.0),
  ).animate(CurvedAnimation(
    parent: widget.controller,
    curve: Curves.easeInOut,
  ));



  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: FadeTransition(
          opacity: _curve,
          child: widget.child
      ),
    );
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
}





class FadeInDemo2 extends StatefulWidget {

  FadeInDemo2({required this.child, required this.scrollController});
  final ScrollController scrollController;
  final Widget child;
  _FadeInDemo2State createState() => _FadeInDemo2State();
}

class _FadeInDemo2State extends State<FadeInDemo2> with TickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _curve;
  GlobalKey globalKey = GlobalKey();

  _getPosition(GlobalKey key) {
    if (key.currentContext != null) {
      final RenderBox renderBox =
      key.currentContext!.findRenderObject() as RenderBox;
      final position = renderBox.localToGlobal(Offset.zero);
      return position.dy;
    }
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    widget.scrollController.addListener(() {


      if((-600 < _getPosition(globalKey) && _getPosition(globalKey) < -300) || (800 > _getPosition(globalKey) && 400 < _getPosition(globalKey)) ){
        print("widgetcon offset : ${widget.scrollController.offset}, getposition : ${_getPosition(globalKey)}");
        _controller.forward();
      }


    });
  }

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset(0.0, 0.2),
    end: Offset(0.0,0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  ));



  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      key: globalKey,
      position: _offsetAnimation,
      child: FadeTransition(
          opacity: _curve,
          child: widget.child
      ),
    );
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
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


  late final Animation<Offset> _imageAnimation = Tween<Offset>(begin: Offset(0.0, 0.0), end: Offset(0.0,-1),).animate(CurvedAnimation(parent: _imageController, curve: Curves.easeIn,));

  @override
  Widget build(BuildContext context) {
      return Stack(
        children: [
          SlideTransition(
              position: _imageAnimation,
              child: Image.asset('assets/images/logo/big_logo.png',width: MediaQuery.of(context).size.width,),),

          AnimatedBuilder(animation: _offsetAnimation, builder: (context, child){
            return CustomPaint(
              painter: AnimatedHeightPainter(
                color: Colors.black,
                size: Size(MediaQuery.of(context).size.width, 300),
                value: _offsetAnimation.value
              ),
            );

          }),
        ],
      );
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }
}



class AnimatedHeightPainter extends CustomPainter
{

  // Progress of the animation, i.e. between 0.0 and 1.0
  final Color color;
  final Size size;
  final double value;
  AnimatedHeightPainter({required this.color, required this.size, required this.value});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()..color = Colors.yellow
    ..strokeWidth = 10;

    var p = Path()..moveTo(size.height/2, size.width/2)
            ..lineTo(size.width/2 + value, size.height / 2)
      ..lineTo(size.width/2 - value, size.height / 2)
    ..close();
    canvas.drawPath(p, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;

}



class Services extends StatelessWidget{
  Services({required this.text, required this.columnList, required this.scrollController, required this.fontValue });
  final String text;
  final String columnList;
  final ScrollController scrollController;
  final double fontValue;

  @override
  Widget build(BuildContext context){
    return FadeInDemo2(

      child:  Row(

        children: [
          Text("$text",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: vw(fontValue, context))),
          Padding(
            padding: EdgeInsets.fromLTRB(0,0,0,50),
            child: Text("$columnList",style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(1))),
          )
        ],
      ),
      scrollController: scrollController,
    );
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


class Works extends StatelessWidget{
  Works({required this.name, required this.explanation, required this.scrollController, required this.width });
  final String name;
  final String explanation;
  final ScrollController scrollController;
  final double width;

  @override
  Widget build(BuildContext context){
    return FadeInDemo2(
      child:
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TranslateOnHover(
                child: Image.asset(
                  "assets/images/macbook.png",
                  width: (MediaQuery.of(context).size.width - 2 * rem(2) - 10) / 2,
                  height: (MediaQuery.of(context).size.width - 2 * rem(2) - 10) /
                      2 /
                      16 *
                      9,
                )),
            Text(
              "Saason",
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.4)),
            ),
            Text(
              "Web Designer",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: rem(1.4),
                  color: Color.fromRGBO(0, 0, 0, 0.5)),
            )
          ],
        ),
      ),
      scrollController: scrollController,
    );
  }



}