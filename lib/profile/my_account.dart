import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //     backgroundColor: Colors.black,
        //     iconTheme: const IconThemeData(
        //       color: Colors.white, //change your color here
        //     ),
        //     actions: [
        //       IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        //     ]),
        backgroundColor: Colors.black,
        body: Center(
          //color: Colors.amber,
          child: SingleChildScrollView(
            child: (Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: const [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/firoz.jpg'),
                    ),
                    Positioned(
                        right: 5,
                        bottom: 5,
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.yellow,
                            child: Icon(Icons.edit)))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Firoz Abdulla',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 12),
                  child: Text(
                    'frozabdulla@gmail.com',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      fixedSize: const Size(180, 32),
                    ),
                    child: const Text('Upgrade to PRO')),
                const SizedBox(
                  height: 10,
                ),
                manageAccount(
                  icon: const Icon(Icons.location_pin, color: Colors.white),
                  text: 'Privacy',
                ),
                manageAccount(
                  icon: const Icon(Icons.location_pin, color: Colors.white),
                  text: 'Purchase History',
                ),
                manageAccount(
                  icon: const Icon(Icons.location_pin, color: Colors.white),
                  text: 'Help & Support',
                ),
                manageAccount(
                  icon: const Icon(Icons.location_pin, color: Colors.white),
                  text: 'Settings',
                ),
                manageAccount(
                  icon: const Icon(Icons.location_pin, color: Colors.white),
                  text: 'Invite a Friend',
                ),
                manageAccount(
                  icon: const Icon(Icons.location_pin, color: Colors.white),
                  text: 'Logout',
                ),
              ],
            )),
          ),
        ));
  }
}

Widget manageAccount({Icon? icon, String? text}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListTile(
      onTap: () {},
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      selected: true,
      selectedTileColor: Colors.grey,
      leading: icon,
      title: Text(
        text!,
        style: const TextStyle(color: Colors.white),
      ),
      trailing: const Icon(
        Icons.arrow_right,
        color: Colors.white,
      ),
    ),
  );
}
