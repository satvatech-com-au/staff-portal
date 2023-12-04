
import '../exports/exports.dart';

class DrawerHead extends StatelessWidget {
  const DrawerHead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70.0)
        )
      ),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("images/profile.jpg"),
            ),
          ),
          const SizedBox(height: 10,),
          Text("NANA ADDO",style: BoldHeaderstextStyle(color: Colors.white),),
          const SizedBox(height: 10,),
          Text("Softwear Expect",style: RegularHeaderStyle(),)
        ],
      ),
    );
  }
}

