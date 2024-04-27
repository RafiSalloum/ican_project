import 'package:flutter/material.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Image(
                image: const AssetImage('assets/images/logo.png'),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 2.5,
              ),
              const Text(
                'for Technical Solutions',
                style: TextStyle(fontSize: 18, fontFamily: 'poppins'),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: const Divider(
                  color: Colors.amber,
                  thickness: 2.0,
                ),
              ),
              const Text(
                'Managed by: Eng. Basil Tanbakji',
                style: TextStyle(fontSize: 16, fontFamily: 'poppins'),
              ),
              const SizedBox(height: 24,),
              const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', style: TextStyle(fontFamily: 'poppins'),),
              const SizedBox(height: 10,),
              const Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', style: TextStyle(fontFamily: 'poppins'),),
            ],
          ),
        ),
      ),
    );
  }
}
