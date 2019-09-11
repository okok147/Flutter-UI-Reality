import 'package:gardener_01/utils.dart';

class AppNotification {
  String image, name, distance, time;

  AppNotification(this.image, this.name, this.distance, this.time);


}

List<AppNotification> notifications = [
  AppNotification(AvailableImages.girl, 'Megan Watkins', '2 km', '10 -12 am'),
  AppNotification(AvailableImages.men, 'Bobby Vargas', '2.5 km', '12 -03 pm'),
  AppNotification(AvailableImages.men, 'Lori Freeman', '4 km', '03-06 Pm'),
  AppNotification(AvailableImages.girl, 'Pamela Holmes', '4 km', '06 -09 Pm'),
];
