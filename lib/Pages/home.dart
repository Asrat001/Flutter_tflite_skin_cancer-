import 'package:flutter/material.dart';
import 'languages.dart';
import './listdisease.dart';
import './resource.dart';
import './uploadImage.dart';
import '../contacts/about.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    UploadImage(),
    ListDisease(),
    Resource(),
    Languages(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.indigo,
              ),
              width: double.infinity,
              height: 200,
              child: const Center(
                  child: Text(
                "I - Detecte",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 1.5, fontSize: 20),
              )),
            ),
            const Divider(
              thickness: 2,
              indent: 10,
              endIndent: 10,
            ),
            ListTile(
              title: const Text('About'),
              subtitle: const Text(
                "Aboutapp",
              ),
              leading: const Icon(Icons.privacy_tip),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
              trailing: Icon(Icons.chevron_right),
            ),
            const ListTile(
              title: Text('Contact'),
              subtitle: Text(
                "contact us",
              ),
              leading: const Icon(Icons.contact_page),
            ),
            const ListTile(
              title: Text('Share'),
              subtitle: Text(
                "shareMangoApp",
              ),
              leading: const Icon(Icons.share),
            ),
            const Divider(
              thickness: 3,
              indent: 10,
              endIndent: 10,
            ),
            Row(
              children: const [
                // Icon(Icons.help),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Others',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const ListTile(
              title: Text('Feedback'),
              subtitle: Text(
                "GiveComment",
              ),
              leading: Icon(Icons.feedback),
            ),
            const ListTile(
              title: Text('RateUs'),
              subtitle: Text(
                "RateOurApp",
              ),
              leading: Icon(Icons.rate_review),
            ),
            const ListTile(
              title: Text('PrivacyPolicy'),
              subtitle: Text(
                "OurPrivacyPolicy",
              ),
              leading: Icon(Icons.policy),
            ),
            const ListTile(
              title: Text('Updates'),
              subtitle: Text(
                "Version",
              ),
              leading: Icon(Icons.update),
            ),
          ],
        ),
      ),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        selectedItemColor: Colors.white,
        elevation: 10,
        iconSize: 30,
        backgroundColor: Colors.indigo,
        unselectedItemColor: Colors.white60,
        unselectedLabelStyle: const TextStyle(letterSpacing: 1.5),
        selectedLabelStyle:
            const TextStyle(letterSpacing: 1, fontStyle: FontStyle.italic),
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          // ignore: prefer_const_constructors
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Diseases',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Resource',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.language),
            label: 'Language',
          ),
        ],
      ),
    );
  }
}
