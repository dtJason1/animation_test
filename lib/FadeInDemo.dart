import 'package:flutter/material.dart';
import 'Homepage.dart';



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