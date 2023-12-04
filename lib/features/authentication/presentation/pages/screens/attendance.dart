
import '../../widgets/exports/exports.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  
  TextEditingController searchController = TextEditingController();

  List<WorkItem> workItems = [
    WorkItem(
        text: 'Check In',
        text2: 'Check out',
        text3: '7 Hours',
        text4: 'Working',
        date: DateTime(2023, 17, 11),
        time: const TimeOfDay(hour: 7, minute: 0),
        icon: Icons.alarm,
        color: Colors.red,
        color2: Colors.yellow,
        color3: Colors.green
        ),
    WorkItem(
        text: 'Check In',
        text2: 'Check In',
        text3: '4 Hours',
        date: DateTime(2023, 08, 5),
         text4: 'Working',
        time: const TimeOfDay(hour: 10, minute: 30),
        icon: Icons.alarm_off,
        color: Colors.red,
        color2: Colors.yellow,
        color3: Colors.green
        ),
    WorkItem(
        text: 'Check In',
        text2: 'Check Out',
        text3: '8 Hours',
        text4: 'Working',
        date: DateTime(2023, 05, 7),
        time: const TimeOfDay(hour: 14, minute: 15),
        icon: Icons.alarm_on,
        color:Colors.red,
        color2: Colors.yellow,
        color3: Colors.green
        ),
    // ... add more work items as needed
  ];
   


  List<WorkItem> filteredItems = [];

  @override
    void initState() {
    super.initState();
    // Initialize the filtered list with all items initially
    filteredItems = List.from(workItems);
  }

  void _filterItems(String query) {
    // Clear the previous filtered items
    filteredItems.clear();

    // Filter the items based on the date and time
    for (var item in workItems) {
      final dateTimeString = '${item.date.year}-${item.date.month}-${item.date.day} ${item.time.hour}:${item.time.minute}';
      if (dateTimeString.contains(query)) {
        filteredItems.add(item);
      }
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Text(
          "Attendance",
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Attendance',style: SmallSizeHeaderStyle(),),
                  ),
                  SizedBox(height: 5,),
                 const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(children: [
                      Text('20',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('Present',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],),
                    // Column(children: [
                    //   Text('4',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20)),
                    //   Text('Late',style: TextStyle(fontWeight: FontWeight.bold))
                    // ],),
                    Column(children: [
                      Text('2',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20)),
                      Text('Absents',style: TextStyle(fontWeight: FontWeight.bold))
                    ],),
                    Column(children: [
                      Text('22',style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Total',style: TextStyle(fontWeight: FontWeight.bold))
                    ],)
                  ],)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: searchController,
                onChanged: (query) {
                  _filterItems(query);
                },
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.search),
                  labelText: 'Search by Date and Time',
                  border: OutlineInputBorder(
                    borderSide: BorderSide()
                  )
                ),
              ),
            ),
            Text('Attendance Summary',style: MediumHeaderStyle(),),
            Expanded(
              child: ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  final item = filteredItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Card(
                      child: IntrinsicHeight(
                        child: Row(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  item.icon,
                                  color: item.color,
                                ),
                                Text(item.text),
                                Text('${item.time.format(context)}'),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                            width: 30,
                            indent: 15,
                            endIndent: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  item.icon,
                                  color: item.color2,
                                ),
                                Text(item.text2),
                                Text('${item.time.format(context)}'),
                              ],
                            ),
                          ),
                          const VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                            width: 30,
                            indent: 15,
                            endIndent: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  item.icon,
                                  color: item.color3,
                                ),
                                Text(item.text3),
                                Text(item.text4),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Column(
                                children: [
                                  Container(height: 50,),
                                  Text('${item.date.year}-${item.date.month}-${item.date.day} '),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
  }

class WorkItem {
  String text;
  String text2;
  String text3;
  TimeOfDay time;
  IconData icon;
  Color color;
  Color color2;
  Color color3;
  String text4;
  DateTime date;

  WorkItem(
      {required this.text,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.date,
      required this.time,
      required this.icon,
      required this.color,
      required this.color2,
      required this.color3
      });
}
