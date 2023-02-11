import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:nft_app/main.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDefaultIconDarkColor,
      appBar: AppBar(
        backgroundColor: kDefaultIconDarkColor,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const MyHomePage()),
              );
            },
            icon: const Icon(
              Iconsax.arrow_circle_left,
              color: kDefaultIconLightColor,
            )),
        title: const Text(
          "Make #8334",
          style: TextStyle(color: kDefaultIconLightColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Iconsax.menu_1,
                color: kDefaultIconLightColor,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 350,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: const DecorationImage(
                        image: AssetImage('assets/images/1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
                child: Text('Send',
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
              const SizedBox(height: 20),
              const Text(
                "Description",
                style: TextStyle(
                    fontSize: 20,
                    color: kDefaultIconLightColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text(
                "The MekaVerse is a collection of 8,888 generative Mekas inspired by the japanese Anime universe.",
                style: TextStyle(
                    fontSize: 18,
                    color: kDefaultIconLightColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),
              const Text(
                "Attributes",
                style: TextStyle(
                    fontSize: 20,
                    color: kDefaultIconLightColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  chip(text: "OG Trooper A1"),
                  SizedBox(width: 10),
                  chip(text: "OG Heavy C2"),
                  SizedBox(width: 10),
                ],
              ),
              Row(
                children: const [
                  chip(text: "OG Sabotage 7"),
                  SizedBox(width: 10),
                  chip(text: "OG Delta Trooper"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
