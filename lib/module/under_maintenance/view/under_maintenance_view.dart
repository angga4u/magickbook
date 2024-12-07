import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/under_maintenance_controller.dart';

class UnderMaintenanceView extends StatefulWidget {
  const UnderMaintenanceView({Key? key}) : super(key: key);

  Widget build(context, UnderMaintenanceController controller) {
    controller.view = this;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40.0,
          ),
          Icon(
            Icons.warning_amber,
            size: 32.0,
            color: dangerColor,
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            "Under maintenance",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: dangerColor,
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<UnderMaintenanceView> createState() => UnderMaintenanceController();
}
