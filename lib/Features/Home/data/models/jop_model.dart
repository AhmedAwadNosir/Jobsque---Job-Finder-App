class JopModel {
  final int jopId;
  final String jopName;
  final String jopImage;
  final String jopTimeType;
  final String jopType;
  final String jopLevel;
  final String jopDescription;
  final String jopSkills;
  final String companyName;
  final String companyEmail;
  final String companyWebsite;
  final String aboutCompany;
  final String jopLocation;
  final String salary;

  JopModel({
    required this.jopId,
    required this.jopName,
    required this.jopImage,
    required this.jopTimeType,
    required this.jopType,
    required this.jopLevel,
    required this.jopDescription,
    required this.jopSkills,
    required this.companyName,
    required this.companyEmail,
    required this.companyWebsite,
    required this.aboutCompany,
    required this.jopLocation,
    required this.salary,
  });

  factory JopModel.fromJson(dynamic jsonData) {
    return JopModel(
      jopId: jsonData["id"],
      jopName: jsonData["name"],
      jopImage: jsonData["image"],
      jopTimeType: jsonData["job_time_type"],
      jopType: jsonData["job_type"],
      jopLevel: jsonData["job_level"],
      jopDescription: jsonData["job_description"],
      jopSkills: jsonData["job_skill"],
      companyName: jsonData["comp_name"],
      companyEmail: jsonData["comp_email"],
      companyWebsite: jsonData["comp_website"],
      aboutCompany: jsonData["about_comp"],
      jopLocation: jsonData["location"],
      salary: jsonData["salary"],
    );
  }
}
