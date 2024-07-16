import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
class Container_2 extends StatefulWidget{
  @override
  State<Container_2> createState() => _Container_2State();
}

class _Container_2State extends State<Container_2> with TickerProviderStateMixin {
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
    if(result.scrollPosition > 50){
      AnimationController_0.forward();
    }
    if(result.scrollPosition > 100){
      AnimationController_1.forward();
    }
    if(result.scrollPosition > 150){
      AnimationController_2.forward();
    }
    if(result.scrollPosition > 200){
      AnimationController_3.forward();
    }
    if(result.scrollPosition > 250){
      AnimationController_4.forward();
    }
  }
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              FadeInDemo(
                controller: AnimationController_0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton( style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 20),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),onPressed: (){}, child: Text("About"),),
                    Container(height: rem(1), color: Colors.white,),
                    Container(height: rem(1.5), color: Colors.white),
                    Container(width: MediaQuery.of(context).size.width, height: 1, color: Colors.black,),
                  ],
                ),
              ),
              FadeInDemo(
                controller: AnimationController_1,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0,rem(3),0,rem(8)),
                  child: Text("We are a team of passionate and crazy individuals dedicated to bringing your ideas to life. With a keen eye for aesthetics, attention to detail, and a deep understanding of design principles, we strive to deliver exceptional results that exceed your expectations", style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(3.5)),),
                ),
              )
            ],
          ),
          Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: rem(3)),
                    child:

                    FadeInDemo(
                      controller: AnimationController_2,
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Container(width: 1, height: 130,  color: Colors.grey,),
                              Padding(
                                padding: EdgeInsets.only(left: rem(1.5)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Text("10", style: TextStyle(fontSize: rem(5)),),  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("(Year)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                      )],),
                                    Text("In the digital design industry", style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                  ],
                                ),
                              ),
                            ],
                          ),



                          Padding(
                            padding: EdgeInsets.only(left: ((MediaQuery.of(context).size.width -34)/12*2)),
                            child: Row(
                              children: [
                                Container(width: 1, height: 130,  color: Colors.grey,),
                                Padding(
                                  padding: EdgeInsets.only(left: rem(1.5)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [Text("12", style: TextStyle(fontSize: rem(5)),),  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("(Country)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                      )],),
                                      Text("Work across around the world", style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  FadeInDemo(
                    controller: AnimationController_2,
                    child: Row(
                      children: [
                        Container(
                          constraints: BoxConstraints(minWidth: (MediaQuery.of(context).size.width -34)/12*2),
                          child: Row(
                            children: [
                              Container(width: 1, height: 130,  color: Colors.grey,),
                              Padding(
                                padding: EdgeInsets.only(left: rem(1.5)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Text("61", style: TextStyle(fontSize: rem(5)),),  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("(Project)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                      )],),
                                    Text("With satisfaction from customer", softWrap: true, style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),



                        Padding(
                          padding: EdgeInsets.only(left: ((MediaQuery.of(context).size.width -34)/12*3)),
                          child: Row(
                            children: [
                              Container(width: 1, height: 130,  color: Colors.grey,),
                              Padding(
                                padding: EdgeInsets.only(left: rem(1.5)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Text("30", style: TextStyle(fontSize: rem(5)),),  Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text("(Country)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                                      )],),
                                    Text("Talent on the team", style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),


                      ],
                    ),
                  ),


                ],
              )
            ],

          )

        ],
      ),
    );
  }
}
