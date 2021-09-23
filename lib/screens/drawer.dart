import 'package:flutter/material.dart';
import 'package:news/screens/categorynews.dart';
import 'package:news/screens/homepage.dart';
import 'package:news/screens/internationalnews.dart';
class SideDrawer extends StatefulWidget {
  const SideDrawer({ Key? key }) : super(key: key);

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  late String categoryName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.9 ,
      child: Drawer(
        child: Container(
          color: Colors.black,
          child: SafeArea(
            child: Column(
              children: [
                Divider(color: Colors.white70,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: 400,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[300],
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/trend.png",
                                color: Colors.white,
                                width: 50.0,
                                ),
                                const SizedBox(width: 15.0,),
                                const Text(
                                  "TOP 10",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0,),
                      Expanded(
                        child: Container(
                          width: 400,
                          height: 80,
                           decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/trending.png",
                                color: Colors.white,
                                width: 40.0,
                                ),
                                const Text(
                                  "TRENDING",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w700
                                  ),
                                ),
                            ],
                          ),
                        )
                        )
                    ],
                  ),
                ),
                const Divider(color: Colors.white70,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.centerLeft,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize:18.0,
                      fontWeight:FontWeight.w500,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.count(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>InternationalNews()));
                          },
                          child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/earth.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("International",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          },
                          child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/flag.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("National",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                          ),
                          ),
                        ),
                        Container(
                          child: Card(
                            margin: EdgeInsets.all(7.0),
                          elevation: 10.0,
                          color: Colors.white30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Image.asset("assets/images/speaker.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                              ),
                              const SizedBox(height: 13.0,),
                              const Text("Politics",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                        ),
                        Container(
                          child: Card(
                            margin: EdgeInsets.all(7.0),
                          elevation: 10.0,
                          color: Colors.white30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Image.asset("assets/images/city-hall.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                              ),
                              const SizedBox(height: 13.0,),
                              const Text("State",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                        ),
                         GestureDetector(
                           onTap: (){
                             setState(() {
                               categoryName = "business";
                             });
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(categoryName: categoryName)));
                           },
                           child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/Business.png",width: 70.0,height: 70.0,color:Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("Business",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                          ),
                          ),
                         ),
                         GestureDetector(
                           onTap:(){
                             setState(() {
                               categoryName = "sports";
                             });
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(categoryName: categoryName)));

                           },
                           child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/running.png",width: 70.0,height: 70.0,color:Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("Sports",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                              ),
                            ),
                         ),
                         GestureDetector(
                           onTap: (){
                             setState(() {
                               categoryName = "entertainment";
                             });
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(categoryName: categoryName)));
                           },
                           child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/cinema-clapboard.png",width: 70.0,height: 70.0,color:Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("Entertainment",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                                                 ),
                                                 ),
                         ),
                        Container(
                          child: Card(
                            margin: EdgeInsets.all(7.0),
                          elevation: 10.0,
                          color: Colors.white30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Image.asset("assets/images/megaphone.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                              ),
                              const SizedBox(height: 13.0,),
                              const Text("Buzz",style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                        ),
                        GestureDetector(
                           onTap:(){
                             setState(() {
                               categoryName = "science";
                             });
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(categoryName: categoryName)));

                           },
                          
                          child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/chemistry.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("Science",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                          ),
                          ),
                        ),
                        GestureDetector(
                          onTap:(){
                             setState(() {
                               categoryName = "technology";
                             });
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoryNews(categoryName: categoryName)));

                           },
                          child: Container(
                            child: Card(
                              margin: EdgeInsets.all(7.0),
                            elevation: 10.0,
                            color: Colors.white30,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                                  child: Image.asset("assets/images/robot.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                                ),
                                const SizedBox(height: 13.0,),
                                const Text("Technology",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500
                                ),),
                              ],
                            ),
                          ),
                          ),
                        ),
                        Container(
                          child: Card(
                            margin: EdgeInsets.all(7.0),
                          elevation: 10.0,
                          color: Colors.white30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Image.asset("assets/images/sedan-car-model.png",width: 70.0,height: 70.0,color:Colors.lightBlue[300],),
                              ),
                              const SizedBox(height: 13.0,),
                              const Text("Automobile",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                        ),
                        Container(
                          child: Card(
                            margin: EdgeInsets.all(7.0),
                          elevation: 10.0,
                          color: Colors.white30,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Image.asset("assets/images/school-bag.png",width: 70.0,height: 70.0,color: Colors.lightBlue[300],),
                              ),
                              const SizedBox(height: 13.0,),
                              const Text("Education",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                        ),
                        ),
                        
                        
                      ]
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10.0),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Row(
                      children: const [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10.0,),
                      Text(
                        "Settings",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25.0
                        ),
                      ),
                    ],
                    ),
                    Row(
                      children: const [
                     
                      Text(
                        "Saved",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25.0
                        ),
                      ),
                      SizedBox(width: 10.0,),

                       Icon(
                        Icons.save,
                        color: Colors.white,
                      ),
                    ],)
                    
                  ],
                  ),
                ),
              ],
            ),
          ),
        
        ),
    
         ),
    );
  }
}