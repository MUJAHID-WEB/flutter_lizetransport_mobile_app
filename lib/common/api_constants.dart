class ApiConstants {
  static String baseUrl = 'https://api.lizetransport.com';
}

//ApiConstants.baseUrl + ApiConstants.usersEndpoint

//https://api.lizetransport.com

class AuthUserSignUp {
  static String Endpoint = '/user/signup';
}

class AuthUserLogIn {
  static String Endpoint = '/user/login';
}

//
class AmenitiesUserDrink {
  static String Endpoint = '/amenities/amenities-list?typeOfAmenities=drinks';
}

class AmenitiesUserFood {
  static String Endpoint = '/amenities/amenities-list?typeOfAmenities=food';
}

class AmenitiesUserTech {
  static String Endpoint = '/amenities/amenities-list?typeOfAmenities=tech';
}

class AmenitiesUserFlowers {
  static String Endpoint = '/amenities/amenities-list?typeOfAmenities=flowers';
}

//Plane
class PlaneUserPrivetJetApi {
  static String Endpoint = '/plane?typeOfPlane=private jet';
}

class PlaneUserHelicopterApi {
  static String Endpoint = '/plane?typeOfPlane=helicopters';
}

class PlaneUserCargoApi {
  static String Endpoint = '/plane?typeOfPlane=cargo';
}

//Dashboard
class DashboardApi {
  static String Endpoint = '/dashboard/dashboard-data';
}
