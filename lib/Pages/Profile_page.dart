
import 'package:flutter/material.dart';
import 'package:instagram_mockup/Widgets/Info_item.dart';
import 'package:instagram_mockup/Widgets/Profile_picture.dart';
import 'package:instagram_mockup/Widgets/Story_item.dart';
import 'package:instagram_mockup/Widgets/Tab_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            const Text(
              "almoirmo",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_drop_down),
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", "999"),
                      InfoItem("Followers", "50M"),
                      InfoItem("Following", "100"),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "almoirmo",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: const TextSpan(
                text:
                    "The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "#hastags",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link Goes Here",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: const Text(
                "Edit Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(title: "Story 1"),
                  StoryItem(title: "Story 2"),
                  StoryItem(title: "Story 3"),
                  StoryItem(title: "Story 4"),
                  StoryItem(title: "Story 5"),
                  StoryItem(title: "Story 6"),
                  StoryItem(title: "Story 7"),
                  StoryItem(title: "Story 8"),
                  StoryItem(title: "Story 9"),
                  StoryItem(title: "Story 10"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(
                icon: Icons.grid_on_outlined,
                active: true,
              ),
              TabItem(
                icon: Icons.person_pin_outlined,
                active: false,
              ),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 999,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 3,
              crossAxisSpacing: 3,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/536/354",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie_filter,
            ),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
            ),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
