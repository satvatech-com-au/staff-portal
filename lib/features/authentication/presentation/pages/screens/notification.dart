
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../widgets/exports/exports.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "NOTIFICATIONS",
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: false,
            separatorBuilder: (context, index) => SizedBox(
              height: 3.h,
            ),
            itemCount: 20,
            itemBuilder: (context, index) => Slidable(
              endActionPane: ActionPane(
                                motion: const ScrollMotion(),
                                children: [
                                  const SlidableAction(
                                    onPressed: null,
                                    backgroundColor: Color(0xFFFE4A49),
                                    foregroundColor: Color.fromARGB(255, 22, 13, 13),
                                    icon: Icons.delete,
                                    label: 'Delete',
                                  ),
                                  SlidableAction(
                                    onPressed: null,
                                    backgroundColor: Colors.blue.shade400,
                                    foregroundColor: Colors.white,
                                    icon: Icons.remove_red_eye,
                                    label: 'View',
                                  ),
                                ],
                              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(child: card()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class card extends StatefulWidget {
  const card({
    super.key,
  });

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  Color containerColor = Colors.white;
  bool isTapped = false;

  void _changeColor() {
    setState(() {
      if (isTapped) {
        containerColor = Colors.white;
      } else {
        containerColor = Colors.redAccent;
      }
      isTapped = !isTapped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 35,
      child: GestureDetector(
        onTap: () {
          _changeColor();
          showDialog(
              context: context,
              builder: ((context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  title: Text('Notification'),
                  content: Text(
                      'The content inside the dialog includes a title, some text, and a "Close" button, similar to the previous example.'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              }));
        },
        child: Container(
          height: 70.h,
          width:MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(4, 4)),
              ]),
          child: ListTile(
            leading: CircleAvatar(),
            title: Text("Tech Launch"),
            subtitle: Text("friday Ago"),
            trailing: Column(
              children: [
                Container(
                  height: 20.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(child: Text("2:00")),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 20.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(child: Text("Mon,16,")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
