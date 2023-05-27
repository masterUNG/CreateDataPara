import 'package:createdatapara/states/map_page.dart';
import 'package:createdatapara/utility/app_controller.dart';
import 'package:createdatapara/utility/app_contstant.dart';
import 'package:createdatapara/utility/app_service.dart';
import 'package:createdatapara/widgets/widget_button.dart';
import 'package:createdatapara/widgets/widget_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  AppController appController = Get.put(AppController());

  @override
  void initState() {
    super.initState();
    AppService().readDataJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Home'),
        actions: [
          WidgetButton(
            label: 'Map',
            pressFunc: () {
              Get.to(const MapPage());
            },
          )
        ],
      ),
      body: Obx(() {
        print('biomastModels --> ${appController.biomasModels.length}');
        return appController.biomasModels.isEmpty
            ? const SizedBox()
            : ListView.builder(
                itemCount: appController.biomasModels.last.features!.length,
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(4),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: AppConstant().curveBox(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      WidgetText(
                        data: appController.biomasModels.last.features![index]
                            .attributes!.cOMPNM!,
                        textStyle: Theme.of(context).textTheme.titleLarge,
                      ),
                      WidgetText(
                          data: appController.biomasModels.last.features![index]
                              .attributes!.aDDRESS!),
                      WidgetText(
                          data: appController.biomasModels.last.features![index]
                              .attributes!.cOMPTYPE!),
                      WidgetText(
                          data: appController.biomasModels.last.features![index]
                              .attributes!.cOMPGRP!),
                      WidgetText(
                          data: appController.biomasModels.last.features![index]
                              .attributes!.pROVINCE!),
                      Row(
                        children: [
                          WidgetText(
                              data: appController.biomasModels.last
                                  .features![index].attributes!.pOINTY
                                  .toString()),
                          WidgetText(data: ' , '),
                          WidgetText(
                              data: appController.biomasModels.last
                                  .features![index].attributes!.pOINTX
                                  .toString()),
                        ],
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }
}
