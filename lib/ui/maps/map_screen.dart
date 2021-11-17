import 'package:autogen/constants/app_scale.dart';
import 'package:autogen/constants/color.dart';
import 'package:autogen/ui/locationChoice/location_choice.dart';
import 'package:autogen/ui/maps/widgets/cutom_drawer.dart';
import 'package:autogen/ui/maps/widgets/home_button_location.dart';
import 'package:autogen/ui/maps/widgets/logo_location.dart';
import 'package:autogen/ui/maps/widgets/search_and_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:get/get.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(41.26465, 69.21627),
    zoom: 11.5,
  );
  String _mapStyle = '';

  @override
  void initState() {
    super.initState();
  }

  late GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            zoomControlsEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              controller.setMapStyle(
                  '[{"elementType": "geometry","stylers": [{"color": "#212121"}]},{"elementType": "labels.icon","stylers": [{"visibility": "off"}]},{"elementType": "labels.text.fill","stylers": [{"color": "#757575"}]},{"elementType": "labels.text.stroke","stylers": [{"color": "#212121"}]},{"featureType": "administrative","elementType": "geometry","stylers": [{"color": "#757575"}]},{"featureType": "administrative.country","elementType": "labels.text.fill","stylers": [{"color": "#9e9e9e"}]},{"featureType": "administrative.locality","elementType": "labels.text.fill","stylers": [{"color": "#bdbdbd"}]},{"featureType": "poi","elementType": "labels.text.fill","stylers": [{"color": "#757575"}]},{"featureType": "poi.park","elementType": "geometry","stylers": [{"color": "#181818"}]},{"featureType": "poi.park","elementType": "labels.text.fill","stylers": [{"color": "#616161"}]},{"featureType": "poi.park","elementType": "labels.text.stroke","stylers": [{"color": "#1b1b1b"}]},{"featureType": "road","elementType": "geometry.fill","stylers": [{"color": "#2c2c2c"}]},{"featureType": "road","elementType": "labels.text.fill","stylers": [{"color": "#8a8a8a"}]},{"featureType": "road.arterial","elementType": "geometry","stylers": [{"color": "#373737"}]},{"featureType": "road.highway","elementType": "geometry","stylers": [{"color": "#3c3c3c"}]},{"featureType": "road.highway.controlled_access","elementType": "geometry","stylers": [{"color": "#4e4e4e"}]},{"featureType": "road.local","elementType": "labels.text.fill","stylers": [{"color": "#616161"}]},{"featureType": "transit","elementType": "labels.text.fill","stylers": [{"color": "#757575"}]},{ "featureType": "water","elementType": "geometry","stylers": [{"color": "#000000"}]},{"featureType": "water","elementType": "labels.text.fill","stylers": [{"color": "#3d3d3d"}]}]');
            },
            initialCameraPosition: _initialCameraPosition,
            markers: {
              Marker(
                onTap: () => print('tapeed one1'),
                infoWindow: InfoWindow(
                  title: 'InfoWindowText 1',
                  onTap: () => Get.to(() => LocationChoiceSceen()),
                ),
                markerId: MarkerId('current'),
                position: LatLng(41.26465, 69.21627),
              ),
              Marker(
                infoWindow: InfoWindow(
                  title: 'InfoWindowText 2',
                  onTap: () => Get.to(() => LocationChoiceSceen()),
                ),
                markerId: MarkerId('current 2'),
                position: LatLng(41.23565, 69.31627),
              ),
              Marker(
                infoWindow: InfoWindow(
                  title: 'InfoWindowText 3',
                  onTap: () => Get.to(() => LocationChoiceSceen()),
                ),
                markerId: MarkerId('current 3'),
                position: LatLng(41.28565, 69.31627),
              ),
              Marker(
                infoWindow: InfoWindow(
                  title: 'InfoWindowText 4',
                  onTap: () => Get.to(() => LocationChoiceSceen()),
                ),
                markerId: MarkerId('current 4'),
                position: LatLng(41.18565, 69.20827),
              ),
            },
          ),
          LogoLocation(),
          Positioned(
            top: AppScale.scaledWidth(0.24, context),
            right: 0,
            left: 0,
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: AppScale.scaledWidth(0.08, context)),
              width: AppScale.scaledWidth(0.8, context),
              height: AppScale.scaledHeight(0.07, context),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(41),
                color: Colors.white,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: AppScale.scaledWidth(0.03, context),
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('pressed drawer');
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      child: Container(
                        width: AppScale.scaledWidth(0.1, context),
                        child: SvgPicture.asset('assets/icons/drewer.svg'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: AppScale.scaledWidth(0.008, context)),
                      width: AppScale.scaledWidth(0.55, context),
                      // height: AppScale.scaledHeight(0.01, context),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      width: AppScale.scaledWidth(0.1, context),
                      child: SvgPicture.asset('assets/icons/search.svg'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          HomeButtonLocation(),
        ],
      ),
      drawer: CustomeDrawer(),
    );
  }
}
