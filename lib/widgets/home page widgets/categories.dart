import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatefulWidget {
  Category({super.key, required this.category});
  final String category;
  final Color bgColor = const Color.fromRGBO(113, 117, 128, 0.856);
  final List<String> selectedCategories = [];
  bool isSelected = false;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  void _init() {
    if (widget.category == "UI") widget.isSelected = true;
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        setState(
          () {
            widget.isSelected = !widget.isSelected;
          },
        ),
        if (widget.isSelected)
          widget.selectedCategories.add(widget.category)
        else
          widget.selectedCategories.remove(widget.category),
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
        ),
        width: MediaQuery.of(context).size.width / 4 - 10,
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.deepOrange : widget.bgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Text(
          widget.category,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
