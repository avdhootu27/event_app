import 'dart:core';

import 'package:event_app/data/data.dart';
import 'package:event_app/models/date_model.dart';
import 'package:event_app/models/event_module.dart';
import 'package:event_app/models/popularEvent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<DateModel> dates = new List<DateModel>();
  List<EventName> events = new List<EventName>();
  List<Popular> PEvents = new List<Popular>();
  String todayDateIs = '12';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dates = getDates();
    events = getEvents();
    PEvents = getPEvents();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff102733),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 60, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/logo.png',height: 28,),
                        SizedBox(width: 4,),
                        Text('UVE', style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w800
                        ),),
                        Text('NTO', style: TextStyle(
                            color: Color(0xffFFA700),
                            fontSize: 22,
                            fontWeight: FontWeight.w800
                        ),),
                        Spacer(),
                        Image.asset('assets/notify.png',height: 25,),
                        SizedBox(width: 16,),
                        Image.asset('assets/menu.png',height: 25,),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hello Avdhoot!', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 21,
                            ),),
                            SizedBox(height: 3,),
                            Text("Let's explore what's happening nearby",style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ))
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                'assets/profilepic.jpg',height: 45,
                              ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(right: 10),
                      child: ListView.builder(
                          itemCount: dates.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return DateTile(
                              weekDay: dates[index].weekday,
                              date: dates[index].date,
                              isSelected: todayDateIs == dates[index].date,
                            );
                          }
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text('All Events', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                    SizedBox(height: 12,),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        itemCount: events.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index){
                          return EventTile(imgAsset: events[index].imgAsset,event: events[index].event);
                        }
                      ),
                    ),
                    SizedBox(height: 16,),
                    Text('Popular Events', style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                    Container(
                      child: ListView.builder(
                        itemCount: PEvents.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                        itemBuilder: (context, index){
                          return PopularTile(
                            imgAsset: PEvents[index].imgAsset,
                            desc: PEvents[index].desc,
                            date: PEvents[index].date,
                            address: PEvents[index].address,
                          );
                        }
                      ),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


class DateTile extends StatelessWidget {

  String weekDay;
  String date;
  bool isSelected;

  DateTile({@required this.weekDay, @required this.date, @required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date,style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
          ),),
          SizedBox(height: 13,),
          Text(weekDay,style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
          ),),
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {

  String imgAsset;
  String event;
  EventTile({this.imgAsset, this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 29),
      margin: EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
        color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imgAsset,height: 40,),
          SizedBox(height: 8,),
          Text(event,style: TextStyle(
            color: Colors.white,
          ),),
        ],
      ),
    );
  }
}

class PopularTile extends StatelessWidget {

  String desc;
  String date;
  String address;
  String imgAsset;

  PopularTile({this.desc, this.date, this.address, this.imgAsset});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      padding: EdgeInsets.symmetric(horizontal: 4,vertical: 6),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Color(0xff29404E),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(desc,style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,),
                  ),
                  SizedBox(height: 9,),
                  Row(
                    children: [
                      Image.asset('assets/calender.png',height: 12,),
                      SizedBox(width: 8,),
                      Text(date,style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),
                    ],
                  ),
                  SizedBox(height: 2,),
                  Row(
                    children: [
                      Image.asset('assets/location.png',height: 12,),
                      SizedBox(width: 8,),
                      Text(address,style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                imgAsset, height: 80, width: 100, fit: BoxFit.cover,

              )),
        ],
      ),
    );
  }
}






















