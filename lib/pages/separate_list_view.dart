import 'package:flutter/material.dart';

class SeparateListView extends StatelessWidget {
  const SeparateListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Separated"),
      ),

      body: ListView.separated(
        // Jumlah item
        itemCount: 5,

        // Padding di sekitar list
        padding: const EdgeInsets.all(16.0),

        scrollDirection: Axis.vertical,

        // Builder untuk setiap item
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            color: Colors.blue[100],
            child: Center(
              child: Text(
                'Text ${index + 1}',
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          );
        },

        // Builder untuk separator
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey, thickness: 1,
          );
        },
      ),
    );
  }
}
