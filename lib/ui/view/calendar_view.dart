import 'package:flutter/material.dart';
import 'package:koyo/main.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: colorBox),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TableCalendar(
                firstDay: DateTime.utc(1970, 1, 1),
                lastDay: DateTime.utc(2090, 1, 1),
                focusedDay: DateTime.now(),
                headerStyle: const HeaderStyle(
                  leftChevronVisible: false,
                  rightChevronVisible: false,
                  formatButtonVisible: false,
                  headerPadding: EdgeInsets.all(20),
                  titleTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                calendarStyle: const CalendarStyle(
                  defaultTextStyle: TextStyle(color: Colors.white),
                  weekendTextStyle: TextStyle(color: Colors.white),
                  outsideTextStyle: TextStyle(color: Colors.grey),
                  todayTextStyle: TextStyle(color: backGroundColor),
                ),
                daysOfWeekStyle: const DaysOfWeekStyle(
                    weekdayStyle: TextStyle(color: Colors.white),
                    weekendStyle: TextStyle(color: Colors.white)),
                locale: 'fr_FR',
                startingDayOfWeek: StartingDayOfWeek.monday,
              ),
            )));
  }
}
