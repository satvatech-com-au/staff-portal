
import '../../widgets/exports/exports.dart';

class CreateApplicaton extends StatefulWidget {
  const CreateApplicaton({super.key});

  @override
  State<CreateApplicaton> createState() => _CreateApplicatonState();
}

class _CreateApplicatonState extends State<CreateApplicaton> {
  List<DropdownMenuItem<String>> _dropdownItems = [
    DropdownMenuItem(value: '-1', child: Text('Date To :')),
    DropdownMenuItem(value: '1', child: Text('2001')),
    DropdownMenuItem(value: '2', child: Text('2002')),
    DropdownMenuItem(value: '3', child: Text('2003')),
    DropdownMenuItem(value: '4', child: Text('2004')),
    DropdownMenuItem(value: '5', child: Text('2005')),
    DropdownMenuItem(value: '6', child: Text('2006')),
  ];

  List<DropdownMenuItem<String>> _dateToItems = [
    DropdownMenuItem(value: '-1', child: Text('Date From :')),
    DropdownMenuItem(value: '1', child: Text('2001')),
    DropdownMenuItem(value: '2', child: Text('2002')),
    DropdownMenuItem(value: '3', child: Text('2003')),
    DropdownMenuItem(value: '4', child: Text('2004')),
    DropdownMenuItem(value: '5', child: Text('2005')),
    DropdownMenuItem(value: '6', child: Text('2006')),
  ];
  var _value = '-1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
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
            top: 20,
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
                  top: 70,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60.h,
                        width: 400.w,
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
                          padding:const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                        height: 45.h,
                                        width: 170.w,
                                        decoration: BoxDecoration(
                                            border: Border.all(),
                                            borderRadius:
                                                BorderRadius.circular(15.0)),
                                        child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none),
                                            value: _value,
                                            items: _dateToItems,
                                            onChanged: (v) {})),
                                            SizedBox(width: 10,),
                                    Container(
                                      height: 40.h,
                                      width: 170.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          border: Border.all()),
                                      child: DropdownButtonFormField(
                                          decoration: InputDecoration(
                                              border: InputBorder.none),
                                          value: _value,
                                          items: _dropdownItems,
                                          onChanged: (v) {}),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Select you leave type',
                      style: MediumHeaderStyle(),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30.h,
                          width: 100.w,
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
                          child: Center(
                              child: Text(
                            "Full day",
                            style: getRegularSmall(),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30.h,
                          width: 100.w,
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
                          child: Center(
                              child: Text(
                            "Half day",
                            style: getRegularSmall(),
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30.h,
                          width: 100.w,
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
                          child: Center(
                              child: Text(
                            "Second day",
                            style: getRegularSmall(),
                          )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Stack(
                      children: [
                        Center(
                          child: Container(
                              height: 210.h,
                              width: 400.w,
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
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                  expands: true,
                                  maxLines: null,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    filled: true,
                                  ),
                                ),
                              )),
                        ),
                        Positioned(
                            top: 151.h,
                            left: 240.h,
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.note),
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text('Upload Attachment'))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    tap(
                      onPress: () {},
                      text: "Submit Application",
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 50.w,
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 140.w,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            '22',
                            style: getRegularStyle(color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Total',
                              style: getRegularStyle(),
                            ),
                            Text(
                              'Day Clinc',
                              style: getRegularStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50.h,
                  width: 140.w,
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text(
                            '10',
                            style: getRegularStyle(color: Colors.white),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              'Total',
                              style: getRegularStyle(),
                            ),
                            Text(
                              'Day Clinc',
                              style: getRegularStyle(),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
