import 'package:createdatapara/models/biomass_model.dart';
import 'package:createdatapara/models/test.dart';
import 'package:get/get.dart';

class AppController extends GetxController{
  RxList<Test> testModels = <Test>[].obs;
  RxList<BiomasModel> biomasModels = <BiomasModel>[].obs;
}