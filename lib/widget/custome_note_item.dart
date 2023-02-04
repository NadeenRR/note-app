import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffFFCCB0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips',
              style: TextStyle(
                  fontSize: 26,
                  color: Color.fromARGB(242, 0, 0, 0),
                  fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                'build your career with flutter',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black.withOpacity(0.5),
                    fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May21 , 2022',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.5),
                  fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
            ),
          )
        ],
      ),
    );
  }
}
