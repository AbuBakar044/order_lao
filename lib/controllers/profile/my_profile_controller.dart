import 'dart:io';
import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProfileController extends GetxController {
  Uint8List? userImage;
  XFile? cameraImage;
  FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  String? userID;
  Future<String>? url;
  String? userName;
  String? email;
  bool? isLoadingData = true;

  @override
  onInit() {
    getUserDate().then((value) {
      getUserDataFromFirebase();
    });
    
    super.onInit();
  }

  Future<void> getImageFromCamera() async {
    cameraImage = await ImagePicker().pickImage(source: ImageSource.camera);

    if (cameraImage == null) {
      return;
    } else {
      userImage = await cameraImage!.readAsBytes();
      update();
    }
  }

  uploadImageToFirebase() async {
    if (userImage == null || userID == null) {
      print("User image or userID is null.");
      return;
    }

    try {
      TaskSnapshot uploadTask = await firebaseStorage
          .ref('profile_pics')
          .child(userID!)
          .putFile(File(cameraImage!.path));

      if (uploadTask.state == TaskState.success) {
        String url = await firebaseStorage
            .ref('profile_pics')
            .child(userID!)
            .getDownloadURL();

        await FirebaseFirestore.instance
            .collection('users')
            .doc(userID)
            .update({
          'user_image': url,
        });

        print("Image uploaded and URL updated successfully.");
      } else {
        print("Image upload failed.");
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  Future<void> getUserDate() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (preferences != null && preferences.containsKey('id')) {
      userID = preferences.getString('id');
      update();
    }
  }

  Future<void> getUserDataFromFirebase() async {
    firestore.collection('users').doc(userID).get().then((value) {
      userName = value.data()!['name'].toString();
      email = value.data()!['email'].toString();
      isLoadingData = false;
      update();
    });
  }
}
