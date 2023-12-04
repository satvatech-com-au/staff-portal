
import '../../exports/exports.dart';

class Pending extends StatefulWidget {
  const Pending({super.key});

  @override
  State<Pending> createState() => _PendingState();
}

class _PendingState extends State<Pending> {
  String text = "";
   List<String> items = [];

  void _openBottomSheet() async {
    final result = await showModalBottomSheet<String>(
      context: context,
      builder: (BuildContext context) {
        return BottomSheetScreen();
      },
    );

    if (result != null) {
      // Add the result to the list and trigger a rebuild
      setState(() {
        items.add(result);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [ 
          Text('Hello'),
          ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(items[index]),
                ),
              );
            },
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _openBottomSheet,
      //   child: Icon(Icons.add),
      // ),
    );
  }
}

// floatingActionButton: (_currentIndex == 0)
//             ? FloatingActionButton(
//                 child: Image.asset(
//                   'assets/icons/map.png',
//                   height: 33,
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const MapScreen()));
//                 },
//               )
//             : null





































class BottomSheetScreen extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
  List<DropdownMenuItem<String>> dropdownItems = [
    const DropdownMenuItem(value: '-1', child: Text('Date To :')),
    const DropdownMenuItem(value: '1', child: Text('2001')),
    const DropdownMenuItem(value: '2', child: Text('2002')),
    const DropdownMenuItem(value: '3', child: Text('2003')),
    const DropdownMenuItem(value: '4', child: Text('2004')),
    const DropdownMenuItem(value: '5', child: Text('2005')),
    const DropdownMenuItem(value: '6', child: Text('2006')),
  ];
   List<DropdownMenuItem<String>> _dropdownItems = [
    const DropdownMenuItem(value: '-1', child: Text('Date from:')),
    const DropdownMenuItem(value: '1', child: Text('2001')),
    const DropdownMenuItem(value: '2', child: Text('2002')),
    const DropdownMenuItem(value: '3', child: Text('2003')),
    const DropdownMenuItem(value: '4', child: Text('2004')),
    const DropdownMenuItem(value: '5', child: Text('2005')),
    const DropdownMenuItem(value: '6', child: Text('2006')),
  ];
  var _value = '-1';
  List<DropdownMenuItem<String>> leavesItems = [
    const DropdownMenuItem(value: '-1', child: Text('Type of leaves :')),
    const DropdownMenuItem(value: '1', child: Text('Study Laeave')),
    const DropdownMenuItem(value: '2', child: Text('Work Leave')),
    const DropdownMenuItem(value: '3', child: Text('Sick Leave')),
  ];
  var intialvalue = '-1';
    return Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const Text(
                  'Create Application',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 45.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(15.0)),
                        child: DropdownButtonFormField(
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            value: _value,
                            items: dropdownItems,
                            onChanged: (v) {})),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40.h,
                      width: 170.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all()),
                      child: DropdownButtonFormField(
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          value: _value,
                          items: _dropdownItems,
                          onChanged: (v) {}),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50.h,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: DropdownButtonFormField(
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      value: intialvalue,
                      items: leavesItems,
                      onChanged: (v) {}),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onChanged: (value){
                  },
                   controller: _textEditingController,
                  decoration: const InputDecoration(
                      labelText: 'Reasons',
                      border: OutlineInputBorder(borderSide: BorderSide())),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, _textEditingController.text);
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Pending(reason: reasonController.text,)));
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        );
  }

  void dispose() {
    _textEditingController.dispose();
  }
}