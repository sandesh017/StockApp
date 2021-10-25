import 'package:flutter/material.dart';
import 'package:stockapp/utilities/const.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("DashBoard"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            //   UserAccountsDrawerHeader(
            //       accountName: Text("SampleName"),
            //       accountEmail: Text("SampleEmail@gmail.com"))
            // ],
            SizedBox(
                height: 30,
                child: Container(
                  color: Colors.black,
                )),
            const InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.tealAccent,
                  child: Icon(Icons.person_outline_rounded),
                ),
                title: Text(
                  "Sign In / Sign Up",
                  style: kHomeTextStyle,
                ),
              ),
            ),
            CustomSizedBox("LIVE MARKETS"),
            ListBuilder(const Icon(Icons.home_filled, color: Colors.tealAccent),
                "Dashboard"),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListBuilder(
                const Icon(Icons.insert_chart_outlined_outlined,
                    color: Colors.tealAccent),
                "Market"),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListBuilder(
                const Icon(Icons.account_balance_outlined,
                    color: Colors.tealAccent),
                "Portfolio"),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListBuilder(
                const Icon(Icons.table_chart_outlined,
                    color: Colors.tealAccent),
                "FloorSheet"),
            CustomSizedBox("CONTENT"),
            ListBuilder(
                const Icon(Icons.perm_device_information,
                    color: Colors.tealAccent),
                "News"),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),

            ListBuilder(
                const Icon(Icons.surround_sound_outlined,
                    color: Colors.tealAccent),
                "Announcement"),
            CustomSizedBox("TOOLS"),
            ListBuilder(
                const Icon(Icons.calculate_outlined, color: Colors.tealAccent),
                "Calculator"),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListBuilder(
                const Icon(Icons.bar_chart_outlined, color: Colors.tealAccent),
                "Chart"),

            CustomSizedBox("MORE"),
            ListBuilder(
                const Icon(Icons.redeem_sharp, color: Colors.tealAccent),
                "Ipo result"),
            const Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            ListBuilder(
                const Icon(Icons.settings_applications_outlined,
                    color: Colors.tealAccent),
                "Settings"),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text(
              "Hamro Stock App",
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListBuilder extends StatelessWidget {
  ListBuilder(this.listIcon, this.listName, {Key? key}) : super(key: key);
  Icon listIcon;
  String listName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        leading: listIcon,
        title: Text(
          listName,
          style: kHomeTextStyle,
        ),
      ),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  CustomSizedBox(this.mainHeading, {Key? key}) : super(key: key);
  String mainHeading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 30,
        child: Container(
          alignment: Alignment.topLeft,
          color: Colors.black,
          child: Text(
            mainHeading,
            style: kHeadingTextStyle,
          ),
        ));
  }
}
