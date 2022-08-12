import 'package:flutter/material.dart';

class SelectedItem extends StatefulWidget {
  const SelectedItem({Key? key}) : super(key: key);

  @override
  State<SelectedItem> createState() => _SelectedItemState();
}

class _SelectedItemState extends State<SelectedItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: [
          ListTile(
            leading: const Icon(Icons.arrow_back),
            trailing: Row(
              children: const [
                Icon(Icons.search),
                SizedBox(
                  width: 2,
                ),
                Icon(Icons.heart_broken),
                SizedBox(
                  width: 2,
                ),
                Icon(Icons.shopping_cart),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                // Image.asset(
                //   'assets/images/mck.jpeg',
                // ),
                const Text(
                  'brand',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const Text('name', style: TextStyle(fontSize: 12)),
                Row(
                  children: const [
                    Icon(Icons.currency_rupee),
                    Text(
                      'amt',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Icon(Icons.currency_rupee),
                    Text(
                      'amt',
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                          fontSize: 10),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      '30 % off',
                      style: TextStyle(fontSize: 10, color: Colors.red),
                    ),
                  ],
                ),
                const Text(
                  'full details of item',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Text(
              'Delivery Details',
              style: TextStyle(fontSize: 12),
            ),
            trailing: TextButton(
                onPressed: () {},
                child: const Text(
                  'Check deliver date',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Text(
              'Bank Offers',
              style: TextStyle(fontSize: 12),
            ),
            trailing: TextButton(
                onPressed: () {},
                child: const Text(
                  'more',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          ListTile(
            leading: const Text(
              'Product Details',
              style: TextStyle(fontSize: 12),
            ),
            trailing: TextButton(
                onPressed: () {},
                child: const Text(
                  'more',
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                )),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {}, child: const Icon(Icons.share)),
              const SizedBox(width: 3),
              ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.heart_broken)),
              const SizedBox(width: 3),
              ElevatedButton(
                  onPressed: () {},
                  // style:ButtonStyle(
                  //   backgroundColor: Colors.grey,
                  // ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.shopping_bag,
                      ), //color: Colors.white,),
                      Text(
                        'Add to bag',
                      ), //style:TextStyle(color: Colors.white) ,)
                    ],
                  )),
              const SizedBox(width: 3),
            ],
          )
        ],
      ),
    );
  }
}
