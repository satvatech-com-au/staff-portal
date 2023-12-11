
import '../exports/exports.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70.0)
        )
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const ProfilePage()),),
              child: const CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Text("NANA ADDO",style: BoldHeaderstextStyle(color: Colors.white),),
          const SizedBox(height: 10,),
          Text("Softwear Expect",style: RegularHeaderStyle(),),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Staff ID',style: getRegularSmall(color: Colors.white),),
              const SizedBox(width: 5,),
              Text('1223333',style: getRegularSmall(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}

