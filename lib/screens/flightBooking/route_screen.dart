import 'package:flight_app_ui/widgets/text.dart';
import 'package:flutter/material.dart';

import '../../widgets/feild.dart';
class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  TextEditingController _fromController=TextEditingController();
  TextEditingController _toController=TextEditingController();
  TextEditingController _dateController=TextEditingController();
  TextEditingController _travelerController=TextEditingController();
  TextEditingController _classController=TextEditingController();
  List<String>trips= ["One Way","RoundTrip","Multiple"];
  int selectTrip=0;


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _fromController.dispose();
    _toController.dispose();
    _dateController.dispose();
    _travelerController.dispose();
    _classController.dispose();


  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              height: 40,
              //decoration: BoxDecoration( border:Border(bottom: BorderSide(color: Theme.of(context).canvasColor))),
             /* child: Row(
                children: [
                  for(int i=0;i<trips.length;i++)...[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            selectTrip=i;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border:Border(right: BorderSide(color: i==2?Colors.transparent: Theme.of(context).canvasColor))
                          ),
                          alignment: Alignment.center,
                          child:TextUtil(text: trips[i],weight: true,size: 14,color: selectTrip==i?Theme.of(context).indicatorColor:Theme.of(context).canvasColor,),
                        ),
                      ),
                    )
                  ]
                ],
              ),*/
            ),
            // const  SizedBox(height: 30,),
              Center(
                    child: Hero(
                      tag: "logo",
                      child: SizedBox(
                      height: 125,
                      width: 125,
                      child: Image.asset("assets/route_2.png",)),
                    ),
                  ),
            Field(controller: _fromController, hinttext: "DESDE", icon: Icons.flight_takeoff,),
            const  SizedBox(height: 30,),
            Field(controller: _toController, hinttext: "HACIA", icon: Icons.flight_land,),
            const  SizedBox(height: 30,),
            Field(controller: _dateController, hinttext: "FECHA", icon: Icons.calendar_month,),
            const  SizedBox(height: 30,),
              Field(controller: _dateController, hinttext: "HORARIO", icon: Icons.calendar_month,),
            const  SizedBox(height: 80,),
            Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).indicatorColor,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      alignment: Alignment.center,
                      child: TextUtil(text: "Siguiente",weight: true,color: Theme.of(context).primaryColor,size: 16,),
                    )
            //Field(controller: _travelerController, hinttext: "TRAVELER", icon: Icons.group,),
            //const  SizedBox(height: 30,),
            // Field(controller: _classController, hinttext: "CLASS", icon: Icons.airline_seat_recline_extra,),
            // const  SizedBox(height: 30,),
          ],

        ),
      ),
    );
  }
}
