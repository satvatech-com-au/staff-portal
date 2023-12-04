
import '../../../widgets/components/flutter_toast.dart';
import '../../../widgets/exports/exports.dart';
import 'requested_leaves.dart';

class TabCon extends StatefulWidget {
  const TabCon({super.key});

  @override
  State<TabCon> createState() => _TabConState();
}

class _TabConState extends State<TabCon> {
  List<DropdownMenuItem<String>> leavesItems = [
    const DropdownMenuItem(value: '-1', child: Text('Type of leaves :')),
    const DropdownMenuItem(value: '1', child: Text('Study Laeave')),
    const DropdownMenuItem(value: '2', child: Text('Work Leave')),
    const DropdownMenuItem(value: '3', child: Text('Sick Leave')),
  ];

  var intialvalue = '-1';

  bool selectedValue = false;
  bool selectedValue1 = false;
  bool selectedValue2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Leave Type",
              style: MediumHeaderStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(color: Colors.grey)),
              child: DropdownButtonFormField(
                  decoration: const InputDecoration(border: InputBorder.none),
                  value: intialvalue,
                  items: leavesItems,
                  onChanged: (v) {}),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value!;
                          });
                        }),
                    const Text('Full Time')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: selectedValue1,
                        onChanged: (value) {
                          setState(() {
                            selectedValue1 = value!;
                          });
                        }),
                    const Text('1st Half')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                        value: selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            selectedValue2 = value!;
                          });
                        }),
                    const Text('2nd Half')
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Date',
              style: MediumHeaderStyle(),
            ),
             SizedBox(
              height: 20.h,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
               decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_month),
                 labelText: ' From : ',
                 hintText: '05 Aug 2022',
                 border: OutlineInputBorder(
                   borderSide: BorderSide()
                 )
               ),
                ),
            ),
            SizedBox(
              height: 15.h,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
               decoration: InputDecoration(
                prefixIcon: Icon(Icons.calendar_month),
                 labelText: ' To : ',
                 hintText: '05 Aug 2022',
                 border: OutlineInputBorder(
                   borderSide: BorderSide()
                 )
               ),
                ),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
                maxLines: 5, 
               decoration: InputDecoration(
                 labelText: ' Reason : ',
                 hintText: 'Write the reason for leave',
                 border: OutlineInputBorder(
                   borderSide: BorderSide()
                 )
               ),
                ),
            ),
            const SizedBox(height: 20,),
            Center(child: ElevatedButton(onPressed: (){
              toastInfo(msg: 'request sucessfull');
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const RequestedLeave()));
            }, child: const Text('Request')))
          ],
        ),
      )),
    );
  }
}
