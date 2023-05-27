import 'dart:convert';

import 'package:createdatapara/models/biomass_model.dart';
import 'package:createdatapara/utility/app_controller.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:get/get.dart';

class AppService {
  AppController appController = Get.put(AppController());

  Future<void> readDataJson() async {
    await rootBundle.loadString('assets/sk_biomass.json').then((value) {
      print('value json ----> $value');

      var result = json.decode(value.toString());
      print('result ====> $result');

      BiomasModel biomasModel = BiomasModel.fromJson(result);
      appController.biomasModels.add(biomasModel);

      // Test testModel = Test.fromJson(result);
      // appController.testModels.add(testModel);
      // print(
      //     '### testModel --> ${testModel.features!.first.properties!.vILLNAME}');
    });

    // await rootBundle.loadString('assets/rubber27.json').then((value) {
    //   print('valut Geo --> $value');
    // });
  }
}
