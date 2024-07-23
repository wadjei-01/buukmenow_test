import 'package:buukme_test/data/model/registered_business.dart';

class MockData {
  static List<RegisteredBusiness> registeredBusinessList = [
    RegisteredBusiness(
        id: 'FHD-19-24-13-27',
        name: 'Fo’Humns Design',
        imagePath: 'assets/images/fohumnsdesign.png',
        businessType: 'IT and Technical Support',
        ownerName: 'Michael Sarpong',
        ownerPhoneNo: '+233244123456',
        country: 'South Africa',
        address: '1234 Some Awesome Street Name Goes Here',
        createdOn: '2024-07-19 13:27:00.123456789z',
        email: 'mike@fohmns.com',
        buukingsTotalCount: '12',
        buukingsPaidCount: '10',
        servicesTotal: '5'),
    RegisteredBusiness(
        id: 'VT-12-24-15-17',
        name: 'vibraniuum Technologies',
        imagePath: 'assets/images/vibraniuum.png',
        businessType: 'IT and Technical Support',
        ownerName: 'Peter Onisha',
        ownerPhoneNo: '+233244123456',
        country: 'South Africa',
        address: '1234 Some Awesome Street Name Goes Here',
        createdOn: '2024-07-11 15:17:00.123456789z',
        email: 'peter_onisha@vibraniuumtech.com',
        buukingsTotalCount: '12',
        buukingsPaidCount: '10',
        servicesTotal: '5'),
    RegisteredBusiness(
        id: 'BKN-05-24-11-21',
        name: 'BuukMeNow',
        imagePath: 'assets/images/buuk_me_now.png',
        businessType: 'IT and Technical Support',
        ownerName: 'Pete & Mike',
        ownerPhoneNo: '+233244123456',
        email: 'petemike@buukmenow.com',
        country: 'South Africa',
        address: '1234 Some Awesome Street Name Goes Here',
        createdOn: '2024-07-05 11:21:00.123456789z',
        buukingsTotalCount: '12',
        buukingsPaidCount: '10',
        servicesTotal: '5'),
  ];
}
