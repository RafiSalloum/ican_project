import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ican_project/view/screens/join_us.dart';
import 'package:ican_project/view/widgets/custom_listtile.dart';

class ContactUS extends StatelessWidget {
  const ContactUS({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Text(
              'Contact Us!',
              style: TextStyle(fontSize: 24, fontFamily: 'poppins'),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              child: const Divider(
                color: Colors.amber,
                thickness: 2.0,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              'Feel free to contact us via out social media accounts below.',
              style: TextStyle(fontSize: 18, fontFamily: 'poppins'),
            ),
            const SizedBox(
              height: 28,
            ),
            Column(
              children: [
                CustomListTile(icon: FontAwesomeIcons.linkedin, label: 'LinkedIn', color: Colors.blueAccent, onTap: (){},),
                CustomListTile(icon: FontAwesomeIcons.facebook, label: 'Facebook', color: Colors.blue, onTap: (){},),
                CustomListTile(icon: FontAwesomeIcons.whatsapp, label: 'WhatsApp', color: Colors.green, onTap: (){},),
                CustomListTile(icon: FontAwesomeIcons.telegram, label: 'Telegram', color: Colors.blue[300], onTap: (){},),
                CustomListTile(icon: FontAwesomeIcons.instagram, label: 'Insatgram', color: Colors.pinkAccent, onTap: (){},),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side:
                                const BorderSide(color: Colors.amberAccent)))),
                onPressed: () => Get.to(const JoinUs()),
                child: SizedBox(
                  width: 120,
                  height: 60,
                  child: Center(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.peopleGroup,
                          color: Colors.amber[600],
                          // size: 100,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          'Join Us!'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                          fontFamily: 'poppins'),
                        ),
                      ],
                    ),
                  ),
                ),),
          ],
        ),
      ),
    );
  }
}
