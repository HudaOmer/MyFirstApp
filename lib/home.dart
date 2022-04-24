import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),

        ],
      ) ,
      drawer: Drawer(
        child: Column(
          children: const <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text(
                    'Huda Omer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text('hudaoe175@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.CVLFsrXmhyJDIN3nT8xEpwHaE7?w=268&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.v-JSNiYb_xy9Kq5Kngm4nAHaLL?w=115&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),),
                CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.yOyT2P8SreL_v7iVLbcGygHaE8?w=262&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),),
                CircleAvatar(backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.OjaPl__HoY609JxUvB81RwHaKd?w=127&h=180&c=7&r=0&o=5&dpr=1.25&pid=1.7'),),
              ],
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.send),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox_rounded),
            ),
            ListTile(
              title: Text('Starred'),
              leading: Icon(Icons.star),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Archive'),
              leading: Icon(Icons.archive),
            ),
            ListTile(
              title: Text('Chat'),
              leading: Icon(Icons.chat),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Log Out'),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.teal,
        onPressed: (){},
      ) ,
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.teal,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label:'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label:'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label:'Settings',
            ),
          ],
      ) ,
      body: ListView(

      ),
    );
  }
}
