// 저번에는 폰트 사이즈가 통일 되지 않아서
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

int ROOT_FONT_SIZE = 16;

double rem(double value){
  return ROOT_FONT_SIZE * value;

}

double vw(double value, BuildContext context){
  return MediaQuery.of(context).size.width/100*value;
}

bool isForwardAnimatingTrue(ScrollController controller, double value){
  return ((controller.offset> value && controller.offset < value+400) && !(controller.offset == ScrollDirection.forward));

}


bool isReverseAnimatingTrue(ScrollController controller, double value){
  return (controller.position.userScrollDirection == ScrollDirection.forward) && (controller.offset  < value  && controller.offset > value - 400 );

}


List<String> serviceList = ["Brand Design","Web Design","Motion Design","3D Design", "Developement"];
