import '../exports/exports.dart';
import 'fonts_styles.dart';

class MyDrawerList extends StatelessWidget {
  const MyDrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.home,
            color: Colors.blue,
          ),
          title: Text(
            "Home",
            style: getMedium(),
          ),
          onTap: () {
            Navigator.pop(context);
          },
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.calendar_month,
            color: Colors.blue,
          ),
          title: Text("My Calender", style: getMedium()),
          onTap: () {
            Navigator.pop(context);
          },
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.announcement,
            color: Colors.blue,
          ),
          title: Text("Notifications", style: getMedium()),
          onTap: () {
            Navigator.pop(context);
          },
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.question_answer,
            color: Colors.blue,
          ),
          title: Text("About", style: getMedium()),
          onTap: () {
            Navigator.pop(context);
          },
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        const Divider(),
        ListTile(
          leading: const Icon(
            Icons.paypal,
            color: Colors.blue,
          ),
          title: Text("Payroll", style: getMedium()),
          onTap: () {},
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.blue,
          ),
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.blue,
          ),
          title: Text("Logout", style: getMedium()),
          onTap: () {},
        ),
      ],
    );
  }
}
