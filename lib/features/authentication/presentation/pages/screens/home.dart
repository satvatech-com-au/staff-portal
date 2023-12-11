
import 'package:intl/intl.dart';
import '../../widgets/exports/exports.dart';
import 'attendance.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Color> borderColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.purple,
  ];

  List<Map<String, dynamic>> itemsList = [
    {
      'icon': Icons.history,
      'text': 'Attendance',
      'title': 'History',
      'screen': const Attendance()
    },
    {
      'icon': Icons.leak_remove,
      'text': 'Leaves',
      'title': '',
      'screen':  const Leaves()
    },
    {
      'icon': Icons.hourglass_bottom_outlined,
      'text': 'Total',
      'title': '',
      'screen': const Attendance()
    },
    {
      'icon': Icons.payments,
      'text': 'YTD',
      'title': 'Payroll',
      'screen': const Payroll()
    },
  ];
  bool isIconVisible = true;
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('EEE, MMM d, y').format(DateTime.now());
  late DateTime currentDateTime;
  late Timer timer;
  @override
  void initState() {
    super.initState();

    // Initialize the current date and time.
    currentDateTime = DateTime.now();

    // Create a timer to update the date and time every second.
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) {
      setState(() {
        currentDateTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed to prevent memory leaks.
    timer.cancel();
    super.dispose();
  }

  Color iconColor = Colors.green; // Initial color
  bool isTapped = true;

  void _handleTap() {
    setState(() {
      // Toggle the tapped state and change the icon color
      isTapped = !isTapped;
      iconColor = isTapped ? Colors.green : Colors.red  ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child:  Column(
              children: const [DrawerHead(), MyDrawerList()],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
              child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("images/profile.jpg"),
                      ),
            ),
          Stack(children:[ 
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Alert()));
              },
              child: const Icon(Icons.notifications,size: 40,)),
            const Positioned(
              left: 20,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 8,))
            ]),
         
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 60.h,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(140),
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hey Sefar",
                                style: getRegularStyle(color: Colors.white),
                              ),
                              Text("Good Day !",
                                  style: getMedium(color: Colors.white))
                            ]),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      '${currentDateTime.hour}:${currentDateTime.minute}:${currentDateTime.second}',
                      style: BoldHeaderstextStyle(),
                    ),
                    Text(formattedDate)
                  ],
                ),
                const VerticalDivider(
                  thickness: 2,
                  color: Colors.grey,
                  width: 30,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () =>
                          setState(() => isIconVisible = !isIconVisible),
                      child: Icon(
                        isIconVisible
                            ? Icons.toggle_off
                            : Icons.toggle_on_outlined,
                        size: 45,
                        color: Colors.blue,
                      ),
                    ),
                    const Text("Remote Work")
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          GestureDetector(
            onTap: _handleTap,
            child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: iconColor,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 1,
                          offset: const Offset(4, 4)),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.access_alarm,
                      size: 80,
                      color: Colors.white,
                    ),
                    Text(
                      isTapped ? 'Check In' : 'Check Out',
                      style: getRegularSmaller(color: Colors.white),
                    )
                  ],
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(
                      width: 10.w,
                    ),
                itemBuilder: (context, index) {
                  final borderColor = borderColors[index];
                  final item = itemsList[index];
                  final iconData = item['icon'] as IconData;
                  final text = item['text'] as String;
                  final title = item['title'] as String;
                  return Container(
                    height: 80.h,
                    width: 100.w,
                    // ignore: sort_child_properties_last
                    child:  Column(
                      children: [
                      GestureDetector(
                          onTap: () {
                            final screenToNavigate = item['screen'] as Widget;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => screenToNavigate),
                            );
                          },
                          child:Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: borderColor, width: 2.0),
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Center(child: Icon(iconData)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(text),
                        ),
                        Text(title)
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5,
                              spreadRadius: 1,
                              offset: Offset(4, 4)),
                        ]),
                  );
                }),
          ),
           SizedBox(
            height: 20.h,
          ),
          
        ],
      ),
    );
  }
}

