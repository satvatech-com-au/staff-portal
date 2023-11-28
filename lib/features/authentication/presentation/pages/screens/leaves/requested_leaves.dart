import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/leaves/approvalPage.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/leaves/rejectPage.dart';
import 'package:hr_application/features/authentication/presentation/pages/screens/leaves/requestPage.dart';

class RequestedLeave extends StatefulWidget {
  const RequestedLeave({super.key});

  @override
  State<RequestedLeave> createState() => _RequestedLeaveState();
}

class _RequestedLeaveState extends State<RequestedLeave> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Leaves'),
          elevation: 0,
          bottom: TabBar(
              labelColor: Colors.white,
              tabs: [
              Tab(text: "Request",),
              Tab(text: 'Approval',),
              Tab(text: 'Rejects',),
              
            ]),
        ),
        body: TabBarView(children: [
          RequestPage(),
          ApprovalPage(),
          RejectsPage()
        ]),
      ),
    );
  }
}