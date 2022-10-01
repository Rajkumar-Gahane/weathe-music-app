/// An asset constant class which will hold all the
/// assets path which are used in the application.
/// Will be ignored for test since all are static values and would not change.

// coverage:ignore-file
abstract class AppConstants {
  static String isUserLoggedIn = 'isUserLoggedIn';
  static String userId = 'userId';
  static String userAccessToken = 'userAccessToken';
  static String userAccessTokenType = 'userAccessTokenType';
  static String userRefreshToken = 'userRefreshToken';
  static String userRealmName = 'userRealmName';
  static String email = 'email';
  static String userName = 'userName';
  static String profilePic = 'profilePic';
  static String status = 'status';
  static String licenseNumber = 'licenseNumber';
  static String userLoggedIn = 'userLoggedIn';
  static String userTimeStamp = 'userTimeStamp';
  static String institutionName = 'institutionName';
  static String password = 'password';
  static String permissionAccess = 'permissionAccess';
  static String patientEmployeeId = 'patientEmployeeId';
  static String recruitmentTitle = 'recruitmentTitle';
  static String userType = 'userType';
  static String companyName = 'companyName';
  static String institutionObjectId = 'institutionObjectId';
  static String keyClockUserId = 'keyClockUserId';
}

abstract class NetworkConstants {
  static String googleApiKey = 'AIzaSyAZIWv4yxMfeZpBS0QD_vvnJl2Mxl0fV7o';
}

/// Permission access keys name for the pages
class PermissionConstants {
  static const String role = 'role';
  static const String users = 'user';
  static const String shifts = 'shifts';
  static const String interviewStages = 'interview Stages';
  static const String appSettings = 'app Settings';
  static const String clockInOut = 'clockInClockOut';
  static const String applyLeave = 'apply Leave';
  static const String vendors = 'vendors';

  /// permission for patient tab
  static const String patients = 'patients';

  /// permission for the human resource
  static const String employees = 'employees';
  static const String leaveManagement = 'leave Management';
  static const String attendance = 'attendance';
  static const String performance = 'performance';
  static const String competency = 'competency';
  static const String tranining = 'tranining';
  static const String recruitment = 'recruitment';

  /// permission for the hospice setting
  static const String institutionProfile = 'institution Profile';
  static const String leaveType = 'leave Type';
  static const String workingHours = 'working Hours';
  static const String holidays = 'holidays';
  static const String leaveConfiguration = 'leave Configuration';
  static const String userIntakeForms = 'user Intake Forms';
  static const String documentType = 'document Type';
}
