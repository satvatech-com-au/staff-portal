import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List imgData = [
     'images/work.png',
     'images/man.png',
     'images/greet.png',
     'images/aboutUs.png',
     'images/pay.png',
     'images/reflex.png',

  ];

  List title = [
    'Dashboard',
    'Dashboard',
    'Dashboard',
    'Dashboard',
    'Payments',
    'Dashboard',
  ];

  var height, width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          color: Colors.indigo,
          child: Column(
            children: [
              Container(
                height: height * 0.18,
                width: width,
                decoration: const BoxDecoration(),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding:
                          EdgeInsets.only(top: 35, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.sort,
                            color: Colors.white,
                            size: 30,
                          ),
                          Row(
                            children: [
                              CircleAvatar(),
                              Icon(Icons.notifications,
                                  size: 30, color: Colors.white)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Dashboard',style: getMedium(color: Colors.white),),
                            const SizedBox(height: 4,),
                            Text('Last Update : 7 May 2023',style: getRegularSmaller(color: Colors.grey),)
                          ],
                        ),
                        )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  width: width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ,
                        childAspectRatio: 1.1,
                        mainAxisSpacing: 20,
                        ),
                      shrinkWrap: true,
                      itemCount: imgData.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){},
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 6,
                                  spreadRadius: 1,
              
                          )]),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(imgData[index],
                                width: 100,height: 100,),
                              ),
                              Text(title[index])
                            ],
                          ),
                          ),
                        );
                      },
                      ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
