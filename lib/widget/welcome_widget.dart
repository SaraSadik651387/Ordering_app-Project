import 'package:flutter/material.dart';
import 'package:ordering_app_project/screens/home_screen.dart';

class WelcomeWedget extends StatelessWidget {
  const WelcomeWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Center(
            child: Image.asset('assets/driver.png'),
            
            ),
          ),
          SizedBox(height: 20,),
          Text('ORDER NOW !!!!',
          textDirection: TextDirection.ltr,
          style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 99, 52, 107),
          fontStyle: FontStyle.italic),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical:5,horizontal: 20),
          child: Text('Feeling hungry? we bring the best flavors to your home.Easy ordering,and speedy delivery',
          style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 179, 137, 187)),
          textAlign: TextAlign.center,
          ),
          ),
          SizedBox(height: 50),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(color: Color.fromARGB(255, 99, 52, 107),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 10,
                  offset: Offset(6,6),
                ),
              ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Click here ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_sharp,color: Colors.white,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}