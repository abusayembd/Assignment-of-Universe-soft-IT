// class CategoryTab extends StatefulWidget {
//   bool isSelected;
//   CategoryTab({Key? key, required this.isSelected}) : super(key: key);

//   @override
//   State<CategoryTab> createState() => _CategoryTabState();
// }

// class _CategoryTabState extends State<CategoryTab>
//     with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController tabController = TabController(length: 4, vsync: this);
//     return Row(
//       children: [
//         Card(
//           shape:
//               RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//           elevation: 5,
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.black,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: TabBar(
//                 indicator: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: Colors.orange),
//                 controller: tabController,
//                 isScrollable: true,
//                 labelPadding: const EdgeInsets.symmetric(horizontal: 30),
//                 tabs: const [
//                   Tab(
//                     child: Text(
//                       "All Chats",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       "All Chats",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       "All Chats",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),
//                   Tab(
//                     child: Text(
//                       "All Chats",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   )
//                 ]),
//           ),
//         ),
//         Expanded(
//             child: TabBarView(controller: tabController, children: [
//           ListView.builder(
//             physics: const BouncingScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                 child: ListTile(
//                   leading: const Icon(
//                     Icons.call_missed,
//                     color: Colors.red,
//                   ),
//                   title: Text("Person ${index + 1}"),
//                   subtitle: Text("Missed call from person ${index + 1} "),
//                   trailing: const Icon(
//                     Icons.phone_callback,
//                     color: Colors.green,
//                   ),
//                 ),
//               );
//             },
//           ),
//           ListView.builder(
//             physics: const BouncingScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                 child: ListTile(
//                   leading: const Icon(
//                     Icons.call_received,
//                     color: Colors.green,
//                   ),
//                   title: Text("Person ${index + 1}"),
//                   subtitle: Text("Received call from person ${index + 1} "),
//                   trailing: const Icon(
//                     Icons.call_end,
//                     color: Colors.red,
//                   ),
//                 ),
//               );
//             },
//           ),
//           ListView.builder(
//             physics: BouncingScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: 10,
//             itemBuilder: (context, index) {
//               return Card(
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//                 child: ListTile(
//                   leading: const Icon(
//                     Icons.dialer_sip,
//                     color: Colors.orange,
//                   ),
//                   title: Text("Person ${index + 1} "),
//                   subtitle: Text("Dialed Person ${index + 1}"),
//                   trailing: const Icon(
//                     Icons.dialpad_rounded,
//                     color: Colors.red,
//                   ),
//                 ),
//               );
//             },
//           )
//         ]))
//       ],
//     );
//   }
// }
