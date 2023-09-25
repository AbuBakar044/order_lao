import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:order_lao/models/car_model.dart';

class HomeController extends GetxController {
  String url = 'https://greatdubai.com/mob/popular_cars';
  String registerUrl = 'https://greatdubai.com/mob/register';

  CarsModel carsModel = CarsModel();
  bool isLoadingData = true;
  List<Data> carDataList = [];
  List<CarsModel> popularCars = [];

  @override
  onInit() {
    //getAllCars();
    super.onInit();
  }

  Future<void> getAllCars() async {
    print('.................. Getting All Cars');
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List jsonList = json.decode(response.body);


      popularCars = jsonList.map((e) => CarsModel.fromJson(e)).toList();
      // carsModel = CarsModel.fromJson(json.decode(response.body));
      // carDataList = carsModel.data!;
      // isLoadingData = false;
      update();

      print('..................Data is Coming ${carDataList[0].address}');
    }
  }

  Future<void> registerUser() async {
    Map<String, dynamic> body = {
      'full_name': 'Hammad',
      'phone': '+923476210044',
      'email': 'bhattiabubakar@gmail.com',
      'password': 'abc123',
    };
    var respose = await http.post(Uri.parse(registerUrl), body: body);

    if (respose.statusCode == 200) {}
  }
}
