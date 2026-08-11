import 'package:gardener_01/utils.dart';

class AppNotification {
  const AppNotification({
    required this.image,
    required this.name,
    required this.distanceKm,
    required this.availability,
    required this.startHour,
  });

  final String image;
  final String name;
  final double distanceKm;
  final String availability;
  final int startHour;

  String get distanceLabel =>
      '${distanceKm.toStringAsFixed(distanceKm % 1 == 0 ? 0 : 1)} km';
}

const notifications = <AppNotification>[
  AppNotification(
    image: AvailableImages.girl,
    name: 'Megan Watkins',
    distanceKm: 2,
    availability: '10 am–12 pm',
    startHour: 10,
  ),
  AppNotification(
    image: AvailableImages.men,
    name: 'Bobby Vargas',
    distanceKm: 2.5,
    availability: '12–3 pm',
    startHour: 12,
  ),
  AppNotification(
    image: AvailableImages.men,
    name: 'Lori Freeman',
    distanceKm: 4,
    availability: '3–6 pm',
    startHour: 15,
  ),
  AppNotification(
    image: AvailableImages.girl,
    name: 'Pamela Holmes',
    distanceKm: 4,
    availability: '6–9 pm',
    startHour: 18,
  ),
];
