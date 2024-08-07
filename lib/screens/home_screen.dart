import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List foods = ['Burger','Pizza','Sides','Drinks'];
  List food2 = ['Chicken Burger','Margherita'];

  List<Color> bgcolors = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color.fromARGB(255, 221, 243, 206),
  ];
  

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text('city', style: TextStyle(fontSize: 15,color: Colors.black54),
                   ),
                   SizedBox(height: 5,),
                   Row(children: [
                    Icon(
                            Icons.location_on,
                            color:Color.fromARGB(255, 99, 52, 107),
                          ),
                          Text(
                            'Jeddah',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color:Color.fromARGB(255, 99, 52, 107),
                          )
                   ],
                   ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      height: 60,
                      width: 70,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/girlicon.png'), fit: BoxFit.cover
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(241, 243, 242, 242),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'search for dishes and restaurants',
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 99, 52, 107),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.search,color: Colors.white,size: 25,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/offer.jpg'),
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Food Types',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 99, 52, 107)),
                ),
                TextButton(onPressed: (){}, 
                child: Text(
                  'See All',
                  style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 195, 144, 204),),
                  ),
                ),
              ],
            ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods.length ,
                itemBuilder: (context,index) {
                  return Container(
                    width: 110,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                    decoration: BoxDecoration(
                      color: bgcolors[index],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/${foods[index]}.png',width: 80,height: 80,),
                        Text(foods[index],style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  );
                },
                ),
              ),
               Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 99, 52, 107)),
                ),
                TextButton(onPressed: (){}, 
                child: Text(
                  'See All',
                  style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 195, 144, 204),),
                  ),
                ),
  
              ],
            ),
            ),
              SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods.length ,
                itemBuilder: (context,index) {
                  return InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      margin: EdgeInsets.only(
                        left: 15, top: 5,bottom: 5,right: 5,
                        ),
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)
                            ),
                            child: Image.asset('assets/${food2[index]}.jpg',height:120 ,width: MediaQuery.of(context).size.width / 1.4,
                            fit: BoxFit.cover,
                            ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment
                              .start,
                              children: [
                                Text(food2[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 6,
                                ),
                                Text('Fast Food',style: TextStyle(color: Colors.black54),),
                                 SizedBox(height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.star,color:  Color.fromARGB(255, 99, 52, 107),
                                    ),
                                    Text('4.7',style: TextStyle(color: Color.fromRGBO(150, 104, 158, 1),fontSize: 15,fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 6,),
                                    Text('1350 reviews',style: TextStyle(fontSize: 11,color: Colors.black54),)
                                  ],
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Padding(padding: EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on,color: Color.fromARGB(255, 99, 52, 107),
                                    ),
                                    SizedBox(width: 3,),
                                    Text('9 Km'),
                                  ],
                                ),
                                ),
                                SizedBox(height: 10,),
                                Container(padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(color: Color.fromARGB(255, 195, 144, 204),
                                borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text('29.0 SAR',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14),),

                                )
                              ],
                            )
                          ],
                        ),
                        )
                      ],
                    ),

                    ),
                  );
                }
                  
              )
                )
          
          ],
        ),
      ),

    );
  }
}