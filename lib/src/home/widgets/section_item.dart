import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  const SectionItem(
      {Key? key, required this.title, required this.img, required this.page})
      : super(key: key);

  final String title;
  final String img;
  final String page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, page),
        child: Card(
          color: const Color.fromARGB(255, 245, 242, 243),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          elevation: 0,
          child: ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0))),
              child: Image(image: AssetImage(img)),
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: Color.fromRGBO(33, 51, 99, 1),
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
