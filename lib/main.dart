import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_app/itempage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<dynamic> data = [
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
  'assets/images/1.png',
  'assets/images/2.png',
  'assets/images/3.png',
  'assets/images/4.png',
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: kDefaultIconDarkColor,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.user,
                color: kDefaultIconLightColor,
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Iconsax.flash_1,
                  color: Colors.white,
                )),
          ],
          title: const Text(
            'Wallet 1 - 9H7',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorWeight: 3,
            indicatorColor: Color(0xff6B66FF),
            tabs: [
              Tab(text: "Coins"),
              Tab(text: "DeFi"),
              Tab(text: "NFTs"),
            ],
          ),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'TOTAL FLOOR VALUE',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w500),
                    ),
                    IconButton(onPressed: () {}, icon: const Icon(Iconsax.eye))
                  ],
                ),
                const Text(
                  "₹52,896.64",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '4.2%',
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Iconsax.arrow_up_1,
                      color: Colors.greenAccent,
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Past 24hrs',
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text('Recieve',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: const [
                      chip(text: 'ALL'),
                      SizedBox(width: 10),
                      chip(text: "Ethereum"),
                      SizedBox(width: 10),
                      chip(text: "Solana"),
                      SizedBox(width: 10),
                      chip(text: "BTC")
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 450,
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: List.generate(data.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ItemPage()),
                                );
                              },
                              child: Container(
                                height: 170,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    image: DecorationImage(
                                        image: AssetImage(data[index])),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            const Text(
                              'Dronies',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class chip extends StatelessWidget {
  const chip({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color(0xff6B66FF),
      side: BorderSide.none,
      shape: const StadiumBorder(),
      labelPadding: const EdgeInsets.symmetric(horizontal: 15),
    );
  }
}
