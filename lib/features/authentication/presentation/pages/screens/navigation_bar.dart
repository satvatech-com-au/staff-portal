
import 'package:hr_application/features/authentication/presentation/pages/screens/dashboard.dart';

import '../../widgets/exports/exports.dart';


class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0; 

  final items = [
    const Icon(Icons.home, size: 30,color: Colors.white,),
   const Icon(Icons.calendar_month_outlined, size: 30,color: Colors.white,),
   const Icon(Icons.payments, size: 30,color: Colors.white,),
   const Icon(Icons.more_horiz, size: 30,color: Colors.white,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: index,
          items: items,
          color: Colors.indigo,
          backgroundColor: Colors.white,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (selectedIndex){
             setState(() {
               index = selectedIndex;
             });
          },
          height: 70,
          ),
        body: Container(
          color: Colors.blueAccent,
          child:getSelectedWidget(index :index),
        ));
  }

}

Widget getSelectedWidget({required int index}) {
  Widget widget;
   switch (index) {
     case 0:
       widget = Dashboard();
       break;
     case 1:
       widget = Calendar();
       break;
     case 2:
       widget = const Payroll();
       break;
       default:
       widget = const Leaves();
       break;
   }
   return widget;
}