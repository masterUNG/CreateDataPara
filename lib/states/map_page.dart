import 'package:createdatapara/utility/app_controller.dart';
import 'package:createdatapara/widgets/widget_map.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Map<MarkerId, Marker> mapMarkers = {};

  AppController appController = Get.put(AppController());

  @override
  void initState() {
    super.initState();

    for (var i = 0; i < appController.biomasModels.last.features!.length; i++) {
      MarkerId markerId = MarkerId('id$i');
      Marker marker = Marker(
        markerId: markerId,
        position: LatLng(
          double.parse(appController
              .biomasModels.last.features![i].attributes!.pOINTY
              .toString()),
          double.parse(appController
              .biomasModels.last.features![i].attributes!.pOINTX
              .toString()),
        ),
        infoWindow: InfoWindow(
            title:
                appController.biomasModels.last.features![i].attributes!.cOMPNM,
            snippet: appController
                .biomasModels.last.features![i].attributes!.aDDRESS),
      );
      mapMarkers[markerId] = marker;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: WidgetMap(
        latLng: const LatLng(6.990927848132983, 100.49495299766393),
        mapMarkers: mapMarkers,
      ),
    );
  }
}
