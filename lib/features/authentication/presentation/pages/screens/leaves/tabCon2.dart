import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';

class TabCon2 extends StatelessWidget {
  const TabCon2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Leave Status',style: MediumHeaderStyle(),),
                      Container(
                        height: 40,
                        width: 200, 
                        child: Row(
                          children: [
                            const Text('Month :  '),
                            const SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 120,
                              decoration: BoxDecoration(
                                border: Border.all()
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.calendar_month),
                                  Text('Jun 2021')
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Dates",style: MediumHeaderStyle(),),
                      Text("Reason",style: MediumHeaderStyle(),),
                      Text("Submit",style: MediumHeaderStyle(), ),
                    ],
                  ),
                  const SizedBox(height: 10,),

                  SizedBox(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: 3,
                      separatorBuilder: (context, index) => const SizedBox(height: 5,),
                      itemBuilder: (context, index) => 
                       const Card(
                        child: ListTile(
                          leading: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("03 May ,2020"),
                                SizedBox(height: 5,),
                                Text("03 May ,2020")
                              ],
                            ),
                          ),
                          title: Text('Sick Leave'),
                          trailing: Text('Sucess',style: TextStyle(color: Colors.green),),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(child: ElevatedButton(onPressed: (){}, child: const Text('Download Records')))
                ],
              ),
            )
          );
  }
}