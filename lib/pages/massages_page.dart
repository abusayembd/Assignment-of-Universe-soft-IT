import 'package:flutter/material.dart';
import 'package:interview_work_universe_soft_it/pages/category_tab.dart';
import 'package:interview_work_universe_soft_it/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class MassagesPage extends StatelessWidget {
  MassagesPage({
    super.key,
  });

  final List<String> _menu = ["All Chats", "Online", "Group", "Spam"];

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white70,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff187949),
                      ),
                    ),
                  ),
                  const Text(
                    "Message",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: TextField(
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: const TextStyle(color: Color(0xffA7AAA8)),
                        fillColor: const Color(0xffE8F6EF),
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 18.0, horizontal: 18.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topLeft: Radius.circular(8)),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0,
                          ),
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              topLeft: Radius.circular(8)),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: Color(0xffe0efe8),
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          gapPadding: 0.0,
                          borderRadius: BorderRadius.circular(8),
                          // ignore: prefer_const_constructors
                          borderSide: BorderSide(
                            color: const Color(0xffe0efe8),
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 53,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Color(0xff187949),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                print("Tapped the filter");
                              },
                              child: const Icon(Icons.calendar_view_day),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Consumer<AuthProvider>(
              builder: (context, authProvider, _) => Container(
                padding: const EdgeInsets.only(
                    bottom: 3, top: 6, right: 25, left: 25),
                height: 50.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _menu.length,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () => authProvider.changeCategory(index),
                    child: CategoryTab(
                      title: _menu[index],
                      isSelected: index == authProvider.selectedTabIndex,
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: ListTile(
                    contentPadding: const EdgeInsets.only(bottom: 6),
                    title: Text("data $index"),
                    subtitle: const Text("I am subtitle"),
                    leading: const Icon(Icons.thumb_up),
                    trailing: const Icon(Icons.arrow_forward),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
