import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerItem {
  final double? latitude;
  final double? longitude;
  final String? markerId;
  final String? title;

  const MarkerItem({
    this.latitude,
    this.longitude,
    this.markerId,
    this.title,
  });
}

class GoogleMapsView extends StatefulWidget {
  final List<MarkerItem> markers;

  const GoogleMapsView({
    super.key,
    required this.markers,
  });

  @override
  State<GoogleMapsView> createState() => _GoogleMapsViewState();
}

class _GoogleMapsViewState extends State<GoogleMapsView> {
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    for (var markerItem in widget.markers) {
      if (markerItem.latitude != null &&
          markerItem.longitude != null &&
          markerItem.markerId != null) {
        // Skip adding markers with (0,0) coordinates
        if (markerItem.latitude == 0.0 && markerItem.longitude == 0.0) {
          continue;
        }

        _markers.add(
          Marker(
            markerId: MarkerId(markerItem.markerId!),
            position: LatLng(markerItem.latitude!, markerItem.longitude!),
            infoWindow: InfoWindow(title: markerItem.title),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition: _calculateInitialCameraPosition(),
      markers: _markers,
      mapType: MapType.normal,
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      mapToolbarEnabled: false,
      onMapCreated: (GoogleMapController controller) {
        if (widget.markers.length > 1) {
          _fitBounds(controller);
        }
      },
    );
  }

  CameraPosition _calculateInitialCameraPosition() {
    if (widget.markers.isEmpty) {
      return const CameraPosition(
        target: LatLng(0.0, 0.0),
        zoom: 2,
      );
    } else {
      return CameraPosition(
        target: LatLng(
          widget.markers.first.latitude ?? 0.0,
          widget.markers.first.longitude ?? 0.0,
        ),
        zoom: 15,
      );
    }
  }

  void _fitBounds(GoogleMapController controller) {
    // If there are no valid markers, return early
    if (_markers.isEmpty) return;

    // Calculate the bounds that include all markers
    double minLat = double.infinity;
    double maxLat = -double.infinity;
    double minLng = double.infinity;
    double maxLng = -double.infinity;

    for (var marker in _markers) {
      if (marker.position.latitude < minLat) minLat = marker.position.latitude;
      if (marker.position.latitude > maxLat) maxLat = marker.position.latitude;
      if (marker.position.longitude < minLng) {
        minLng = marker.position.longitude;
      }
      if (marker.position.longitude > maxLng) {
        maxLng = marker.position.longitude;
      }
    }

    // Add some padding to the bounds
    final padding = 0.005;
    final southwest = LatLng(minLat - padding, minLng - padding);
    final northeast = LatLng(maxLat + padding, maxLng + padding);
    final bounds = LatLngBounds(southwest: southwest, northeast: northeast);

    // Animate the camera to show all markers
    controller.animateCamera(
      CameraUpdate.newLatLngBounds(bounds, 50.0),
    );
  }
}
