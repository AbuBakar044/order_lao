import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:order_lao/constants/images_constants.dart';
import 'package:order_lao/controllers/profile/my_profile_controller.dart';
import 'package:order_lao/screens/widgets/my_text.dart';
import 'package:order_lao/utils/colors.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final profileCtrl = Get.put<MyProfileController>(MyProfileController());
    return GetBuilder<MyProfileController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          title: MyText(text: 'My Profile'),
        ),
        body: Center(
          child: ctrl.isLoadingData!
              ? const CircularProgressIndicator()
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        ctrl.getImageFromCamera();
                      },
                      child: CircleAvatar(
                        radius: 70.0,
                        backgroundColor: kBlackColor,
                        backgroundImage: ctrl.userImage == null
                            ? AssetImage(kAppLogo)
                            : MemoryImage(ctrl.userImage!) as ImageProvider,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    MyText(text: ctrl.userName!),
                    const SizedBox(
                      height: 30.0,
                    ),
                    MyText(text: ctrl.email!),
                    const SizedBox(
                      height: 50.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ctrl.uploadImageToFirebase();
                      },
                      child: const MyText(
                        text: 'Save Image',
                      ),
                    )
                  ],
                ),
        ),
      );
    });
  }
}
