class ProfileDataModel {
  String? userName;
  String? email;
  String? mobile;
  String? address;
  String? language;
  String? interstedWork;
  String? offlinePlace;
  String? remotePlace;
  String? bio;
  String? education;
  String? exceprience;
  String? personalDetail;

  ProfileDataModel({
    this.userName,
    this.email,
    this.mobile,
    this.address,
    this.language,
    this.interstedWork,
    this.offlinePlace,
    this.remotePlace,
    this.bio,
    this.education,
    this.exceprience,
    this.personalDetail,
  });

  factory ProfileDataModel.fromJson(jsondata) {
    return ProfileDataModel(
      userName: jsondata["name"],
      email: jsondata["email"],
      mobile: jsondata["mobile"],
      address: jsondata["address"],
      language: jsondata["language"],
      interstedWork: jsondata["interested_work"],
      offlinePlace: jsondata["offline_place"],
      remotePlace: jsondata["remote_place"],
      bio: jsondata["bio"],
      education: jsondata["education"],
      exceprience: jsondata["experience"],
      personalDetail: jsondata["personal_detailed"],
    );
  }
}
