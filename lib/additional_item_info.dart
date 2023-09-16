import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;
  const HourlyForecastItem({
    super.key, required this.time, required this.icon, required this.temp
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                    child:  Card(
                      elevation: 10,
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(time,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1.8,
                            )),
                            SizedBox(height: 8,),
                            Icon(icon,size: 30),
                            SizedBox(height: 8,),
                            Text(temp,style: TextStyle(fontSize: 14),)
                          ],
                        ),
                      )
                    ),
                  );
  }
}
class AddtionalCard extends StatelessWidget {//same UI but different Elements 
  final IconData icon;
  final String label;
  final String value;
  const AddtionalCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
                    child:  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Icon(icon,size: 32,),
                          SizedBox(height: 8),
                          Text(label,style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6),
                          Text(value,style: TextStyle(fontSize: 14),),
                        ],
                      ),
                    ),
                  );
  }
}