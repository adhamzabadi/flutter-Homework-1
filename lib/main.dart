import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my profile',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 233, 236, 249),
        body: SafeArea(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: [
              const Text(
                'Center',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 28),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 65, 136, 218),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 0, 0, 0),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('images/my_profile.jpeg'),
                        ),

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Adham',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Flutter Developer',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.edit, color: Colors.white),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '846',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Collect',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '51',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Attention',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '267',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Track',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '39',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Coupons',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.account_balance_wallet),
                      SizedBox(height: 8),
                      Text('Wallet'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.local_shipping_outlined),
                      SizedBox(height: 8),
                      Text('Delivery'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.message),
                      SizedBox(height: 8),
                      Text('Message'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(height: 8),
                      Text('Service'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 32),

              for (final item in [
                [
                  Icons.location_on,
                  Colors.deepPurple,
                  'Address',
                  'Ensure your harvesting address',
                ],
                [
                  Icons.lock,
                  Colors.pink,
                  'Privacy',
                  'System permission change',
                ],
                [
                  Icons.layers,
                  Colors.amber,
                  'General',
                  'Basic functional settings',
                ],
                [
                  Icons.notifications,
                  Colors.teal,
                  'Notification',
                  'Take over the news in time',
                ],
              ]) ...[
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 27,
                        backgroundColor: item[1] as Color,
                        child: Icon(item[0] as IconData, color: Colors.white),
                      ),
                      const SizedBox(width: 15),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item[2] as String,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              item[3] as String,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
