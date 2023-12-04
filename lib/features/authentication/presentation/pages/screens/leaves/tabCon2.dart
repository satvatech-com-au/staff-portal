
import '../../../widgets/exports/exports.dart';

class TabCon2 extends StatefulWidget {
  const TabCon2({super.key});

  @override
  State<TabCon2> createState() => _TabCon2State();
}

class _TabCon2State extends State<TabCon2> {

  DateTime _dateTime = DateTime.now();

  void _showDatePicker(){
     showDatePicker(
      context: context,
       initialDate: DateTime.now(),
        firstDate: DateTime(2000),
         lastDate: DateTime(2030)
         ).then((value) {
          setState(() {
            _dateTime =value!;
          });
         });
  }
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
                              child:  Row(
                                children: [
                                 IconButton(
                                  onPressed:(){
                                    _showDatePicker();
                                  }, icon:  const Icon(Icons.calendar_month),),
                                  Text(_dateTime.year.toString())
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
                const  SizedBox(height: 20,),
                  Center(child: ElevatedButton(onPressed: (){}, child: const Text('Download Records')))
                ],
              ),
            )
          );
  }
}