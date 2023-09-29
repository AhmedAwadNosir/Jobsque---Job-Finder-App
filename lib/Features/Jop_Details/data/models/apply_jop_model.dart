

class ApplyJopModel {
  final String cvFilePath;
  final String userName;
  final String email;
  final String mobile;
  final String workType;
  final String otherFilePath;
  final String jopId;
  final String userId;

  ApplyJopModel({
    required this.cvFilePath,
    required this.userName,
    required this.email,
    required this.mobile,
    required this.workType,
    required this.otherFilePath,
    required this.jopId,
    required this.userId,
  });

  factory ApplyJopModel.fromJson(jsondata) {
    return ApplyJopModel(
      cvFilePath: jsondata["data"]["cv_file"],
      userName: jsondata["data"]["name"],
      email: jsondata["data"]["email"],
      mobile: jsondata["data"]["mobile"],
      workType: jsondata["data"]["work_type"],
      otherFilePath: jsondata["data"]["other_file"],
      jopId: jsondata["data"]["jobs_id"],
      userId: jsondata["data"]["user_id"],
    );
  }
}
