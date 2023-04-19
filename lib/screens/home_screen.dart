import 'package:cuet_book/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  "CUETIZEN",
                  style: theme.textTheme.displayMedium!.copyWith(
                    color: theme.colorScheme.secondary,
                    letterSpacing: 5,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.feed_rounded),
              title: const Text("Feeds"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.menu_book_sharp),
              title: const Text("Chotha"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.directions_transit_rounded),
              title: const Text("Bus Schedule"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_rounded),
              title: const Text("Class Routine"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.people_alt_rounded),
              title: const Text("Student List"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.apartment_rounded),
              title: const Text("Hall management"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications_on_rounded),
              title: const Text("Notice board"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.mosque_rounded),
              title: const Text("Salat Schedule"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("Teacher List"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.account_tree_sharp),
              title: const Text("Alumni Networking"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.map_rounded),
              title: const Text("Campus map"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text("Log out"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 3 * kSpacing),
        child: Center(
          child: Text("Home Screen"),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.directions_transit_rounded),
      //       label: "Bus Time",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.mosque_rounded),
      //       label: "Salat Time",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_rounded),
      //       label: "Account",
      //     ),
      //   ],
      // ),
    );
  }
}
