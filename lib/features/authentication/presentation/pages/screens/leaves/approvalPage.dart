import 'package:flutter/material.dart';

import '../../../widgets/components/fonts_styles.dart';

class ApprovalPage extends StatelessWidget {
  const ApprovalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Leave',style: SmallSizeHeaderStyle(),),
                    ),
                    ListTile(
                    leading: const CircleAvatar(),
                    title: const Text('Olivis JACK'),
                    trailing: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("20 mintues ago",style: getRegularSmaller(),),
                          const Text('Approved',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent),),
                        ],
                      ),
                    )  
                   ),
                   const SizedBox(height: 10,),
                   const Padding(
                     padding: EdgeInsets.only(left: 40,bottom: 10),
                     child: Text('Un Paid'),
                   ),
                     const Padding(
                     padding: EdgeInsets.only(left: 40,bottom: 10,),
                     child: Text('31 Aug 2030'),
                   ),
                    const Padding(
                     padding: EdgeInsets.only(left: 40,bottom: 10),
                     child: Text('12 Jun 2012'),
                   ),
                    
                  ],
                ),
              ),
          ),
        ],
      ),
    );
  }
}