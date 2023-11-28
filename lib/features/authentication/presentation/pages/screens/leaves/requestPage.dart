import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("20 mintues ago",style: getRegularSmaller(),),
                 const ListTile(
                  leading: CircleAvatar(),
                  title: Text('Olivis JACK'),
                 ),
                 const SizedBox(height: 10,),
                 const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                      Text('Applied on    : ',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text('25 July 2023',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                   ),
                 ),
                  const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                      Text('Leave  type   : ',style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Text('Sick Leave',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                   ),
                 ),
                  const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                      Text('From Date     : ',style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Text('25 July 2023',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                   ),
                 ),
                  const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                      Text('To  Date         : ',style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Text('25 July 2023',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                   ),
                 ),
                  const Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Row(
                    children: [
                      Text('Reason           : ',style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 10,),
                      Text('UnDefined ',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                   ),
                 ),
                 SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.only(left: 10,bottom: 10),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey[200  ],
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(child: Text('Rejected')),
                      ),
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Center(child: Text('Approval')),
                      ),
                    ],
                   ),
                 )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}