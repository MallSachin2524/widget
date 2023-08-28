import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget/contact.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const Text('Favourites'),
    const Text('Recents'),
    const Text('Contacts'),
    const Text('Keypad'),
    const Text('Voicemail'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var contactlist = [
    {'name': 'Wrenley Guerra', 'mobile': '+91-8007766414'},
    {'name': 'Leland Meza', 'mobile': '+91-9623678461'},
    {'name': 'Rosa Welch', 'mobile': '+91-9623678461'},
    {'name': 'Hendrix Walter', 'mobile': '+91-9623678461'},
    {'name': 'Penny Stephenson', 'mobile': '+91-9623678461'},
    {'name': 'Joe Nunez', 'mobile': '+91-9623678461'},
    {'name': 'Mya Delgado', 'mobile': '+91-9623678461'},
    {'name': 'Colt Giles', 'mobile': '+91-9623678461'},
    {'name': 'Bailee Cuevas', 'mobile': '+91-9623678461'},
    {'name': 'Brecken Bush', 'mobile': '+91-9623678461'},
    {'name': 'Everlee Greene', 'mobile': '+91-9623678461'},
    {'name': 'Griffin McClure', 'mobile': '+91-9623678461'},
    {'name': 'Estella Waller', 'mobile': '+91-9623678461'},
    {'name': 'Marley Ellis', 'mobile': '+91-9623678461'},
    {'name': 'Ayla Bender', 'mobile': '+91-9623678461'},
    {'name': 'Zavier Rios', 'mobile': '+91-9623678461'},
    {'name': 'Brooke Horton', 'mobile': '+91-9623678461'},
    {'name': 'Garrett Montgomery', 'mobile': '+91-9623678461'},
    {'name': 'Evangeline Wyatt', 'mobile': '+91-9623678461'},
    {'name': 'Sam Yang', 'mobile': '+91-9623678461'},
    {'name': 'Angelina Nicholson', 'mobile': '+91-9623678461'},
    {'name': 'Rodrigo Marshall', 'mobile': '+91-9623678461'},
    {'name': 'Adalyn Powers', 'mobile': '+91-9623678461'},
    {'name': 'Sean Fitzpatrick', 'mobile': '+91-9623678461'},
    {'name': 'Annabella Barrera', 'mobile': '+91-9623678461'},
    {'name': 'Makai Stanton', 'mobile': '+91-9623678461'},
    {'name': 'Jaycee Reese', 'mobile': '+91-9623678461'},
    {'name': 'Alijah Peralta', 'mobile': '+91-9623678461'},
    {'name': 'Malayah Dixon ', 'mobile': '+91-9623678461'},
    {'name': 'Camden Harper', 'mobile': '+91-9623678461'},
    {'name': 'Ana Hobbs', 'mobile': '+91-9623678461'},
    {'name': 'Brendan Mayo', 'mobile': '+91-9623678461'},
    {'name': 'Aarya Blake', 'mobile': '+91-9623678461'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
        ),
        title: const Text(
          "List",
          style: TextStyle(fontSize: 18, color: Colors.blue),
        ),
        actions: const [
          Icon(
            Icons.add,
            color: Colors.blue,
          ),
          SizedBox(width: 20),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contacts",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextField(
              // style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 233, 229, 229),
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none),
                constraints: const BoxConstraints(maxHeight: 40),
                hintText: "Search",
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 10.0,
              thickness: 2.0,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 450,
                  height: 80,
                  color: Colors.white,
                  child: ListView(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                                "https://img.freepik.com/premium-photo/3d-cartoon-little-boy-red-hair-freckled-face-glasses-white-background_812426-4699.jpg"),
                          ),
                        ),
                        title: const Text(
                          "Sachin Mall",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: const Text("My Card"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 1,
                  height: 0.0,
                );
              },
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: contactlist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Get.to(
                      () => Contact(
                        name: contactlist[index]['name'].toString(),
                        mobile: contactlist[index]['mobile'].toString(),
                      ),
                    );
                  },
                  title: Text(
                    contactlist[index]['name'].toString(),
                    textDirection: TextDirection.ltr,
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(color: Colors.amber),
        unselectedLabelStyle: const TextStyle(color: Colors.red),
        selectedIconTheme: const IconThemeData(color: Colors.red),
        unselectedIconTheme: const IconThemeData(color: Colors.green),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_outlined, color: Colors.black),
            label: "Favourites",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_rounded), label: "Recents"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.apps_rounded), label: "Keypad"),
          BottomNavigationBarItem(
              icon: Icon(Icons.voicemail), label: "Voicemail"),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
