import 'package:flight_app_ui/screens/detail_screen.dart';
import 'package:flight_app_ui/widgets/animated_route.dart';
import 'package:flight_app_ui/widgets/show_up_animation.dart';
import 'package:flight_app_ui/widgets/text.dart';
import 'package:flutter/material.dart';
import '../data/flight_data.dart';
import '../widgets/flight_card.dart';
import 'flightBooking/add_flight.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextUtil(text: "Bienvenido!",color: Theme.of(context).primaryColor,size: 16,weight: true,),
            TextUtil(text: "José I. Gutiérrez B.",color: Theme.of(context).primaryColor,),
          ],
        ),

        elevation: 0,
        leading: Icon(Icons.airplane_ticket,color: Theme.of(context).primaryColor,),
        actions: [

          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("assets/profile.png"),
              )
            ),

          ),
          const SizedBox(width: 20,),
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            height: 60,
            alignment: Alignment.centerLeft,
            child: TextUtil(text: "Mis vuelos reservados",color: Theme.of(context).primaryColor,weight: true,size: 26,),
          ),
          Expanded(child: Container(
            padding:const  EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:const  BorderRadius.vertical(top: Radius.circular(30))
            ),
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ListView.builder(
                  itemCount: flightList.length,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return ShowUpAnimation(
                  delay: 150*index,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(data: flightList[index],index: index,)));
                      },
                        child: FlightCard(data:flightList[index],index: index,)));
              }),

            ),

          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).indicatorColor,
        onPressed: () {
          Navigator.of(context).push(MyCustomAnimatedRoute( enterWidget: AddFlightScreen(),));
         // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddFlightScreen()));
        },
        child: Icon(Icons.add,size: 28,color: Theme.of(context).primaryColor,),
      ),

    );
  }
}
