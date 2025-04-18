import 'package:flutter/material.dart';
import 'package:resposive_learn/views/widgets/first%20section/tablet_layout.dart';
import 'package:resposive_learn/views/widgets/first%20section/custom_drawer.dart';
import 'package:resposive_learn/views/widgets/first%20section/desktop_end_listview.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(child: DesktopEndListview()),
      ],
    );
  }
}
