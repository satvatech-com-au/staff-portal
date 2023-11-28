import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/leaves/tabCon2.dart';

import 'tabCont1.dart';

class Leaves extends StatefulWidget {
  const Leaves({super.key});

  @override
  State<Leaves> createState() => _LeavesState();
}

class _LeavesState extends State<Leaves> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Leaves'),
          elevation: 0,
          bottom: TabBar(
              labelColor: Colors.white,
              tabs: [
              Tab(text: "Apply",),
              Tab(text: 'Status',),
              
            ]),
        ),
        body: TabBarView(children: [
          TabCon(),
         TabCon2()
        ]),
      ),
    );
  }
}