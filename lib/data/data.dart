import 'package:event_app/models/date_model.dart';
import 'package:event_app/models/event_module.dart';
import 'package:event_app/models/popularEvent.dart';

List<DateModel> getDates(){
  List<DateModel> dates = new List<DateModel>();

  DateModel datemodel = new DateModel();
  datemodel.date = '10';
  datemodel.weekday = 'Sun';
  dates.add(datemodel);

  datemodel = new DateModel();
  datemodel.date = '11';
  datemodel.weekday = 'Mon';
  dates.add(datemodel);

  datemodel = new DateModel();
  datemodel.date = '12';
  datemodel.weekday = 'Tue';
  dates.add(datemodel);

  datemodel = new DateModel();
  datemodel.date = '13';
  datemodel.weekday = 'Wed';
  dates.add(datemodel);

  datemodel = new DateModel();
  datemodel.date = '14';
  datemodel.weekday = 'Thu';
  dates.add(datemodel);

  datemodel = new DateModel();
  datemodel.date = '15';
  datemodel.weekday = 'Fri';
  dates.add(datemodel);

  datemodel = new DateModel();
  datemodel.date = '16';
  datemodel.weekday = 'Sat';
  dates.add(datemodel);

  return dates;
}

List<EventName> getEvents(){

  List<EventName> events = new List<EventName>();

  EventName event = new EventName();
  event.imgAsset = 'assets/concert.png';
  event.event = 'Concert';
  events.add(event);

  event = new EventName();
  event.imgAsset = 'assets/sports.png';
  event.event = 'Sports';
  events.add(event);

  event = new EventName();
  event.imgAsset = 'assets/education.png';
  event.event = 'Education';
  events.add(event);

  return events;

}

List<Popular> getPEvents(){

  List<Popular> PEvents = new List<Popular>();

  Popular event = new Popular();
  event.desc = 'Sports Meet in Galexy Filed';
  event.date = 'May 12, 2020';
  event.address = 'Greenfields, Sector 42, Faridabad';
  event.imgAsset = 'assets/tileimg.png';
  PEvents.add(event);

  event = new Popular();
  event.desc = 'Art & meet in Street Plaza';
  event.date = 'May 12, 2020';
  event.address = 'Greenfields, Sector 42, Faridabad';
  event.imgAsset = 'assets/second.png';
  PEvents.add(event);

  event = new Popular();
  event.desc = 'Youth Music in Galleria';
  event.date = 'May 12, 2020';
  event.address = 'Greenfields, Sector 42, Faridabad';
  event.imgAsset = 'assets/music_event.png';
  PEvents.add(event);

  return PEvents;

}