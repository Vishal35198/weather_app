
import 'dart:ui';

import 'package:flutter/material.dart';
import 'additional_item_info.dart';
class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        centerTitle: true,
        actions:  
        [
          IconButton(
            onPressed: (){}, 
          icon: const Icon(Icons.refresh_rounded),)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //main card 
             SizedBox(
              width: double.infinity,
               child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaY: 10,sigmaX: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          //temperature 
                          //cloud 
                          //rain 
                          Text('300 °K',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Icon(Icons.cloud, size: 64,),
                          SizedBox(height: 20,),
                          Text('Rain',style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),)
                          
                        ],
                      ),
                    ),
                  ),
                )
              ),
             ),
             const SizedBox(
              height: 20,
            ),
            //weather INFO 
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Weather Forecast ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ) ,
              ),
            ),
            const SizedBox(height: 8,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:   Row(
                children: [
                  HourlyForecastItem(time: '9:00', icon: Icons.cloud, temp: '312.67',),
                  HourlyForecastItem(time: '12:00', icon: Icons.wb_sunny_rounded, temp: '312.67',),
                  HourlyForecastItem(time: '3:00', icon: Icons.thunderstorm, temp: '312.67',),
                  HourlyForecastItem(time: '6:00', icon: Icons.wb_cloudy, temp: '312.67',),
                  HourlyForecastItem(time: '9:00', icon: Icons.thunderstorm, temp: '312.67',),
      
                ],
              ),
            ),
            const  SizedBox(
              height: 20,
            ),
            //Last UI 
            const Text("Additional Information ",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ) ,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,//important Properties 
                children: [
                  AddtionalCard(
                    icon: Icons.water_drop,
                    label: 'Humidity',
                    value: '91'
                  ),
                  // SizedBox(width: 50,),
                  AddtionalCard(
                    icon: Icons.air_outlined,
                    label:'Wind Speed',
                    // ignore: prefer_adjacent_string_concatenation
                    value: '7.5'
                  ),
                  // SizedBox(width: 50,),
                  AddtionalCard(
                    icon: Icons.beach_access_outlined,
                    label: 'Pressure ',
                    value: '1000',
                  ),
                  
                ],
              ),
            
          ],
        ),
      ),
    );
  }
}
