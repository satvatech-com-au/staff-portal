
import '../../widgets/exports/exports.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        title: Text(
          'Create Application',
          style: BoldHeaderstextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: const Padding(
              padding: EdgeInsets.only(left: 150),
            ),
          ),
          Positioned(
            top: 20.h,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 110,
                  left: 9.0,
                  right: 9.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All feilds are required",
                      style: getRegularSmall(color: Colors.blue),
                    ),
                    const Expanded(
                      child: TabControlWidget( )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(4, 4)),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.black)),
                              child: Center(
                                  child: Text(
                                "22",
                                style: MediumHeaderStyle(),
                              )),
                            ),
                            const Text("Ending"),
                            const Text("Leavers")
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(4, 4)),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.yellow)),
                              child: Center(
                                  child: Text(
                                "22",
                                style: MediumHeaderStyle(),
                              )),
                            ),
                            const Text("New"),
                            const Text("Leavers")
                          ],
                        )),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 10,
                              spreadRadius: 1,
                              offset: const Offset(4, 4)),
                        ]),
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Colors.blue)),
                              child: Center(
                                  child: Text(
                                "22",
                                style: MediumHeaderStyle(),
                              )),
                            ),
                            const Text("Active"),
                            const Text("Leavers")
                          ],
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.blue,
          label: Text("Create"),
         icon : const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            _showBottomSheet(context);
          }),
    );
  }
}




























































 void _showBottomSheet(BuildContext context) {
final TextEditingController _textEditingController = TextEditingController();
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
  

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
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
                    Navigator.pop(context,_textEditingController.text);
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>Pending(reason: reasonController.text,)));
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
