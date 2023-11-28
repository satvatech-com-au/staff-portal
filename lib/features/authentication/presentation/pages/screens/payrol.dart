
import 'package:flutter/material.dart';
import 'package:hr_application/features/authentication/presentation/widgets/components/fonts_styles.dart';
import 'package:hr_application/features/authentication/presentation/widgets/exports/exports.dart';

class Payroll extends StatelessWidget {
  const Payroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Payroll",style: MediumHeaderStyle(),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context ,index)=>const Padding(
                  padding:  EdgeInsets.all(8.0),
                  child: payrolCard(),
                ),),
            )
            
          ],
        ),
      ),
    );
  }
}




















class payrolCard extends StatelessWidget {
  const payrolCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 70.h,
    width:MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        ),
    child:  ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("images/profile.jpg"),
      ),
      title: Padding(
        padding:const EdgeInsets.only(top: 10,bottom: 5),
        child: Text("Aaron Amoahkoh",style: SmallSizeHeaderStyle(),),
      ),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text("Setp 5,2021 - Oct 5,2021"),
           SizedBox(
            height: 5,
          ),
           Text("Business Trip",style: TextStyle(color: Colors.blue),),
        ],
      ),
      trailing:const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Setp 5,2021"),
          SizedBox(
            height: 21,
          ),
          Text("\$150.000",style: TextStyle(color: Colors.red),),
          
         
        ],
      ),
    ),
          );
  }
}