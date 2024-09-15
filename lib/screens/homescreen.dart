import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            253, 253, 253, 250), // Set AppBar background color to white
        titleTextStyle: const TextStyle(
            color: Colors.black), // Set the title text color to black
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.person_sharp),
              onPressed: () {
                // Handle user icon press
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45.0),
              child: Text(
                'iSHOP',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.build_outlined),
              onPressed: () {
                // Handle menu icon press
              },
            ),
          ],
        ),
      ),
      endDrawer: const Drawer(),
      body: Stack(
        children: <Widget>[
          // Body content
          Container(
            color: const Color.fromARGB(116, 234, 233, 233),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView(
              children: <Widget>[
                Container(),
                GridView.count(
                  childAspectRatio: 0.9,
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Card(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Stack(
                          children: <Widget>[
                            // Text positioned at the top-left
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            // Icon centered
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      height: 50.0), // Adjust spacing as needed
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/images/nike1.png',
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Card(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Stack(
                          children: <Widget>[
                            // Text positioned at the top-left
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            // Icon centered
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      height: 50.0), // Adjust spacing as needed
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/images/nike1.png',
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Card(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Stack(
                          children: <Widget>[
                            // Text positioned at the top-left
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            // Icon centered
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      height: 50.0), // Adjust spacing as needed
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/images/nike1.png',
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Card(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Stack(
                          children: <Widget>[
                            // Text positioned at the top-left
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            // Icon centered
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      height: 50.0), // Adjust spacing as needed
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/images/nike1.png',
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Card(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Stack(
                          children: <Widget>[
                            // Text positioned at the top-left
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            // Icon centered
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      height: 50.0), // Adjust spacing as needed
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/images/nike1.png',
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Card 1
                    Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Card(
                        color: const Color.fromRGBO(255, 255, 255, 1),
                        child: Stack(
                          children: <Widget>[
                            // Text positioned at the top-left
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'NIKE',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            // Icon centered
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const SizedBox(
                                      height: 50.0), // Adjust spacing as needed
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    child: Image.asset(
                                      'assets/images/nike1.png',
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding:
                  EdgeInsets.only(top: 10.0), // Apply top padding to the icon
              child: Icon(Icons.add_box_outlined),
            ),
            label: 'Devices',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:
                  EdgeInsets.only(top: 10.0), // Apply top padding to the icon
              child: Icon(Icons.light_mode_outlined),
            ),
            label: 'Automation',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding:
                  EdgeInsets.only(top: 10.0), // Apply top padding to the icon
              child: Icon(Icons.notifications_none),
            ),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex, // Define and manage this variable
        selectedItemColor: Colors.green,
        onTap: _onItemTapped, // Define this function to handle item taps
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontSize: 14.0, // Adjust font size
          fontWeight: FontWeight.bold, // Adjust font weight if needed
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12.0, // Adjust font size for unselected items
        ),
      ),
    );
  }
}
