import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';



class TabletFooter extends StatefulWidget{
  @override
  State<TabletFooter> createState() => _TabletFooterState();
}

class _TabletFooterState extends State<TabletFooter> with TickerProviderStateMixin {
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
      color: Color.fromRGBO(0, 0, 0, 0.85),
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(1), rem(3), rem(1), rem(1)),
        child: Container(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Container(
                      constraints: BoxConstraints(maxWidth: (MediaQuery.of(context).size.width - rem(1)*2)/8*3),
                      child: Text("Together, we can create an experience as remarkable as your business", style: TextStyle(fontWeight: FontWeight.w400, fontSize: rem(1.2), color: Colors.white),)),
                  Container(height: rem(2),),
                  ElevatedButton(

                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white,
                  foregroundColor: Colors.white,
                  shadowColor: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(rem(1), rem(0.25), rem(0.25), rem(0.25)),
                  shape: RoundedRectangleBorder(side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid
                  ), borderRadius: BorderRadius.circular(24)),

                )  ,
                onPressed: (){print("get in touch");}, child: Container(
                    width: 151,
                  height: 38,
                  child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Contact now",style:  TextStyle(color: Colors.black, fontSize: rem(1)),),
                    SizedBox(width: rem(0.5),),
                    Container(
                        decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all()),
                        child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
                    )
                  ],),
                ),),
              Container(height: rem(3),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/8*3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Follow us", style: TextStyle(color: Colors.white, fontSize: rem(1)), ),
                        Container(height: rem(1),),
                        ElevatedButton(

                        style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          surfaceTintColor: Colors.transparent,
                          foregroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          minimumSize: Size.zero, // Set this
                          padding: EdgeInsets.zero, // and this


                        )  ,
                        onPressed: (){print("get in touch");}, child: Container(

                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.link , color: Color.fromRGBO(255, 255, 255 ,0.5),),
                            SizedBox(width: rem(0.5),),
                            Text("Instagram",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                          ],),
                      ),),
                        Container(height: rem(0.5),),
                        ElevatedButton(

                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            surfaceTintColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: Size.zero, // Set this
                            padding: EdgeInsets.zero, // and this


                          )  ,
                          onPressed: (){print("get in touch");}, child: Container(

                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.link , color: Color.fromRGBO(255, 255, 255 ,0.5),),
                              SizedBox(width: rem(0.5),),
                              Text("Behance",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                            ],),
                        ),),
                        Container(height: rem(0.5),),
                        ElevatedButton(

                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            surfaceTintColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: Size.zero, // Set this
                            padding: EdgeInsets.zero, // and this


                          )  ,
                          onPressed: (){print("get in touch");}, child: Container(

                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.link , color: Color.fromRGBO(255, 255, 255 ,0.5),),
                              SizedBox(width: rem(0.5),),
                              Text("Facebook",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                            ],),
                        ),),

                      ],),
                  ),
                  Padding(
                    padding:EdgeInsets.only(left: (MediaQuery.of(context).size.width-rem(2)*2)/8*1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Address", style: TextStyle(color: Colors.white, fontSize: rem(1)), ),
                        Container(height: rem(1),),
                        Text("81 Shibuya Street Tokyo  3AY", style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontSize: rem(1)), ),
                        Container(height: rem(0.5),),
                        ElevatedButton(

                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            surfaceTintColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: Size.zero, // Set this
                            padding: EdgeInsets.zero, // and this


                          )  ,
                          onPressed: (){print("get in touch");}, child: Container(

                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.link , color: Color.fromRGBO(255, 255, 255 ,0.5),),
                              SizedBox(width: rem(0.5),),
                              Text("Hello@Kenshinstu.com",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                            ],),
                        ),),
                        Container(height: rem(0.5),),
                        ElevatedButton(

                          style:ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            surfaceTintColor: Colors.transparent,
                            foregroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            minimumSize: Size.zero, // Set this
                            padding: EdgeInsets.zero, // and this


                          )  ,
                          onPressed: (){print("get in touch");}, child: Container(

                          child: Row(
                            mainAxisAlignment:MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.link , color: Color.fromRGBO(255, 255, 255 ,0.5),),
                              SizedBox(width: rem(0.5),),
                              Text("+ (015) 466 376",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                            ],),
                        ),),

                      ],),
                  ),

                ],
              ),
              Container(height: rem(3),),
              Image.asset("assets/images/logo/big_logo.png" , width: MediaQuery.of(context).size.width, color: Colors.white,),
              Container(height: rem(2),),
              Container(width: MediaQuery.of(context).size.width - rem(1)*2, color:Color.fromRGBO(255, 255, 255 ,0.5) ,),
              Container(height: rem(1),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("@2024",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                  Row(
                    children: [
                      Text("Licenses",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                      Container(width: rem(1.5),),
                      Text("Changelog",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                      Container(width: rem(1.5),),

                      Text("Style guide",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                      Container(width: rem(1.5),),

                      Text("Webflow",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),
                    ],
                  ),
                  Text("Back to top",style:  TextStyle(color: Color.fromRGBO(255, 255, 255 ,0.5), fontSize: rem(1)),),

                ],
              )


            ],
          ),
        ),
      ),
    );
  }
}
