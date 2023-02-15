import 'package:flutter/material.dart';

class MassagesPage extends StatelessWidget {
  MassagesPage({
    super.key,
  });

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
            Container(
              padding:
                  const EdgeInsets.only(bottom: 3, top: 6, right: 25, left: 25),
              height: 50.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) => CategoryTab(
                  title: "All Chats",
                  isSelected: index == 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CategoryTab({Key? key, required this.title, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      width: 76.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        color: isSelected ? const Color(0xff187949) : Colors.white,
        border: Border.all(
          color: const Color(0xff87b9a0),
        ),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(color: isSelected ? Colors.white : Colors.black),
      )),
    );
  }
}

// class CategoryTab extends StatefulWidget {
//   bool isSelected;
//   CategoryTab({Key? key, required this.isSelected}) : super(key: key);

//   @override
//   State<CategoryTab> createState() => _CategoryTabState();
// }

// class _CategoryTabState extends State<CategoryTab> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 25, left: 25),
//       child: SizedBox(
//         height: 50,
//         width: double.infinity,
//         child: Row(
//           children: [
//             Expanded(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () {
//                   setState(() {});
//                 },
//                 child: Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: widget.isSelected
//                         ? const Color(0xff187949)
//                         : Colors.white,
//                     borderRadius: BorderRadius.circular(3),
//                     border: Border.all(
//                       color: const Color(0xff8abba2),
//                     ),
//                   ),
//                   child: Center(
//                     child: Text(
//                       "All Chats",
//                       style: TextStyle(
//                           color:
//                               widget.isSelected ? Colors.white : Colors.black),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 8,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: widget.isSelected
//                       ? const Color(0xff187949)
//                       : Colors.white,
//                   borderRadius: BorderRadius.circular(3),
//                   border: Border.all(
//                     color: const Color(0xff8abba2),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Online",
//                     style: TextStyle(
//                         color: widget.isSelected ? Colors.white : Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 8,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: widget.isSelected
//                       ? const Color(0xff187949)
//                       : Colors.white,
//                   borderRadius: BorderRadius.circular(3),
//                   border: Border.all(
//                     color: const Color(0xff8abba2),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Group",
//                     style: TextStyle(
//                         color: widget.isSelected ? Colors.white : Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               width: 8,
//             ),
//             Expanded(
//               flex: 1,
//               child: Container(
//                 height: 50,
//                 decoration: BoxDecoration(
//                   color: widget.isSelected
//                       ? const Color(0xff187949)
//                       : Colors.white,
//                   borderRadius: BorderRadius.circular(3),
//                   border: Border.all(
//                     color: const Color(0xff8abba2),
//                   ),
//                 ),
//                 child: Center(
//                   child: Text(
//                     "Spam",
//                     style: TextStyle(
//                         color: widget.isSelected ? Colors.white : Colors.black),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
