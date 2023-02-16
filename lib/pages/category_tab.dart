import 'package:flutter/material.dart';

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
        ),
      ),
    );
  }
}
