import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dMMMykkmm {
    return DateFormat("d MMM y kk:mm").format(this);
  }

  String get dMMMykkmmss {
    return DateFormat("d MMM y kk:mm:ss").format(this);
  }

  String get dMMMy {
    return DateFormat("d MMM y").format(this);
  }

  String get yMd {
    return DateFormat("y-MM-dd").format(this);
  }

  String get d {
    return DateFormat("d").format(this);
  }

  String get MMM {
    return DateFormat("MMM").format(this);
  }

  String get dMMM {
    return DateFormat("d MMM").format(this);
  }

  String get Y {
    return DateFormat("y").format(this);
  }

  String get kk {
    return DateFormat("kk").format(this);
  }

  String get mm {
    return DateFormat("mm").format(this);
  }

  String get ss {
    return DateFormat("ss").format(this);
  }

  String get kkmm {
    return DateFormat("kk:mm").format(this);
  }

  String get kkmmss {
    return DateFormat("kk:mm:ss").format(this);
  }

  bool isToday() {
    final now = DateTime.now();
    return this.year == now.year &&
        this.month == now.month &&
        this.day == now.day;
  }

  bool isThisMonth() {
    final now = DateTime.now();
    return this.year == now.year && this.month == now.month;
  }

  bool isThisYear() {
    final now = DateTime.now();
    return this.year == now.year;
  }

  bool isThisWeek() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final firstDayOfWeek = today.subtract(Duration(days: today.weekday - 1));
    final lastDayOfWeek = today.add(Duration(days: 7 - today.weekday));
    return this.isAfter(firstDayOfWeek.subtract(Duration(days: 1))) &&
        this.isBefore(lastDayOfWeek.add(Duration(days: 1)));
  }
}

extension TimeOfDayExtension on TimeOfDay {
  String get kkmm {
    String hour = this.hour.toString().padLeft(2, "0");
    String time = minute.toString().padLeft(2, "0");
    return "$hour:$time";
  }
}
