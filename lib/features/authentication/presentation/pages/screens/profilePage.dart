import '../../widgets/exports/exports.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Proflie',style: MediumHeaderStyle(),),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Stack(
                  children:[ 
                    CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                  Positioned(
                    top: 70,
                    left: 60,
                    child: Icon(Icons.camera_alt,size: 30,))
             ] ),
              ),
              const SizedBox(height: 10,),
              Center(child: Text('Change Profile Picture',style: getRegularSmaller(),)),
             const Divider(),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Profile Information',style: MediumHeaderStyle(),),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Name',style: getRegularSmallStrike(),),
                  const SizedBox(width: 100,),
                  Text('Mr. Kojo Nkansah',style: getRegularSmaller(),),
                  
                ],
               ),
             ),
             const SizedBox(height: 5,),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Username',style: getRegularSmallStrike()),
                  const SizedBox(width: 75,),
                  Text('Addo_Nana',style: getRegularSmaller()), 
                ],
               ),
             ),
             const SizedBox(height: 5,),
             const Divider(),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Presonal Information',style: MediumHeaderStyle(),),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Email',style: getRegularSmallStrike()),
                   const SizedBox(width: 100,),
                  Text('nanaaddoAdmin@gmail.com',style: getRegularSmaller()),
                  
                ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Contact',style: getRegularSmallStrike()),
                  const SizedBox(width: 85,),
                  Text('+233005544322222',style: getRegularSmaller(),),
                ],
               ),
             ),
               Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Address',style: getRegularSmallStrike()),
                  const SizedBox(width: 88,),
                  Text('15th Independence Aevenu',style: getRegularSmaller()),
                ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Role',style: getRegularSmallStrike()),
                  const SizedBox(width: 110,),
                  Text('Director',style: getRegularSmaller()),
                ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Department',style: getRegularSmallStrike()),
                  const SizedBox(width: 65,),
                  Text('Communication',style: getRegularSmaller()),
                ],
               ),
             ),
              Padding(
               padding: const EdgeInsets.all(8.0),
               child: Row(
                children: [
                  Text('Gender',style: getRegularSmallStrike()),
                  const SizedBox(width: 95,),
                  Text('Male',style: getRegularSmaller()),
                ],
               ),
             ),
             const SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Text('Edit Profile'),Icon(Icons.edit)],))
            ],
          ),
        ),
      ),
    );
  }
}
