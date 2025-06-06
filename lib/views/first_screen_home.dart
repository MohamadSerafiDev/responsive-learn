import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/dashboard_drawer.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/desktop_dashboard_layout.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/mobile_dashboard_layout.dart';
import 'package:resposive_learn/views/widgets/dashboard%20section/tablet_dashboard_layout.dart';
import 'package:resposive_learn/views/layouts/adaptive_layout.dart';

class FirstScreenHome extends StatefulWidget {
  const FirstScreenHome({super.key});

  @override
  State<FirstScreenHome> createState() => _FirstScreenHomeState();
}

class _FirstScreenHomeState extends State<FirstScreenHome> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.of(context).size.width < 800
              ? SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: const DashboardDrawer(),
              )
              : null,
      appBar:
          MediaQuery.of(context).size.width < 800
              ? AppBar(
                backgroundColor: const Color(0xffFAFAFA),
                leading: IconButton(
                  icon: const Icon(Icons.menu_rounded),
                  color: const Color(0xff4eb7f2),
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                ),
              )
              : null,
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileDashboardLayout(),
        tabletLayout: (context) => const TabletDashboardLayout(),
        desktopLayout: (context) => const DesktopDashboardLayout(),
      ),
    );
  }
}
