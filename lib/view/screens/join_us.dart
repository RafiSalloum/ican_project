import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ican_project/controller/home_screen_controller.dart';
import 'package:ican_project/view/widgets/custom_appbar.dart';
import 'package:ican_project/view/widgets/custom_drop_down_list.dart';

class JoinUs extends StatelessWidget {
  const JoinUs({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) => Scaffold(
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                const Text(
                  'Join our Team',
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
                  'Please fill required fields in below form and press "Apply" to transmit your application.',
                  style: TextStyle(fontSize: 16, fontFamily: 'poppins'),
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: TextFormField(
                          controller: controller.nameController,
                          decoration: const InputDecoration(
                            hintText: ('Full Name'),
                            label: Text('Full Name', style: TextStyle(fontFamily: 'poppins'),),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amberAccent),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 120,
                        child: DropListButton(
                            hint: 'Military Service',
                            list: controller.militaryStatus,
                            appliedOption: controller.appliedMilitaryStatus,
                            onTap: (value) {
                              controller.changeDropListItemMilitary(value!);
                            }),
                      ),
                    ),
                  ],
                ),
                DropListButton(
                  hint: 'Specialization',
                  appliedOption: controller.appliedOption,
                  list: controller.appliedOptions,
                  onTap: (value) {
                    controller.changeDropListItemApplied(value!);
                  },
                ),
                const SizedBox(height: 38),
                TextFormField(
                  maxLines: 5,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(150),
                  ],
                  onChanged: (String value) {
                    controller.descriptionLimit = value.characters.length;
                    controller.update();
                  },
                  controller: controller.descriptionController,
                  decoration: InputDecoration(
                    hintStyle: const TextStyle(fontFamily: 'poppins'),
                    counterText: '${controller.descriptionLimit} / 150',
                    hintText: 'Write about your experience.',
                    // label: const Text('Description'),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.amberAccent),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    uploadCV();
                  },
                  child: const Text('Upload your CV', style: TextStyle(fontFamily: 'poppins'),),
                ),
                const SizedBox(height: 12,),
                ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3),
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side:
                                const BorderSide(color: Colors.amberAccent),),),),
                    onPressed: () {},
                    child: const SizedBox(
                      width: 80,
                      height: 50,
                      child: Center(
                        child: Text('Apply', style: TextStyle(fontFamily: 'poppins'),),
                      ),
                    ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void uploadCV() async {
 FilePickerResult? result = await FilePicker.platform.pickFiles(
  type: FileType.custom,
  allowedExtensions: ['doc', 'pdf', 'docx'],
);
}
