import 'package:flutter/material.dart';
import 'package:quintana/src/auth/components/ItemTitle.dart';
import 'package:quintana/src/config/app_data.dart' as appData;

class EquipeTab extends StatelessWidget {
  const EquipeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(
                text: "Equipe Tribuna",
                style: TextStyle(
                  color: Color(0xFFecb920),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 9 / 11.5,
              ),
              itemCount: appData.items.length,
              itemBuilder: (_, index) {
                return  ItemTitle(
                  item: appData.items[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
