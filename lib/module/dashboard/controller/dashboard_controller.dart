import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
  static late DashboardController instance;
  late DashboardView view;

  @override
  void initState() {
    instance = this;
    super.initState();
    scrollController.addListener(() {
      DBService.set("scroll_offset", scrollController.offset.toString());
    });

    Future.delayed(Duration(milliseconds: 200), () {
      double offset =
          double.tryParse(DBService.get("scroll_offset") ?? "0") ?? 0;
      scrollController.jumpTo(offset);
    });

    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      pointValue.value = point;
    });
  }

  ValueNotifier<int> pointValue = ValueNotifier(0);

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  ScrollController scrollController = ScrollController();
  int point = 0;

  Timer? timer;

  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
