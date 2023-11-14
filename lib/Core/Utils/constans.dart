import 'package:flutter/material.dart';

const textFamilyRegular = "SFPRODISPLAYREGULAR";
const textFamilyMedium = "SFPRODISPLAYMEDIUM";
const textFamilyBold = "SFPRODISPLAYBOLD";
const colectionUsers = "Users";
const emailAndPasswordmethode = "emailandpassword";
const facebookMethode = "facebook";
const googleMethode = "google";
const url = 'https://mail.google.com/mail/u/0/#inbox';
const baseUrl = 'https://project2.amit-learning.com/api';
const registerTokenkey = "token";
const loginTokenkey = "loginToken";
const userName = "userName";
const emailAdress = "emailAdress";
const userId = "userId";
const isLogin = "isLogin";
const cvFilebox = "CvFileBox";
const otherCvsFilebox = "OtherCvFileBox";
const savedJopBox = "savedJopBox";
const userBiokey = "bio";
const userAddresskey = "adress";
const userMobilekey = "mobile";
const userExperincekey = "Experince";
const userEducationKey = "userEducation";
const workFromOffice = "Work From Office";
const remoteWork = "Remote Work";
const registerInterNetException =
    "ClientException with SocketException: Failed host lookup: 'project2.amit-learning.com' (OS Error: No address associated with hostname, errno = 7), uri=https://project2.amit-learning.com/api/auth/register";
const loginInterNetException =
    "ClientException with SocketException: Failed host lookup: 'project2.amit-learning.com' (OS Error: No address associated with hostname, errno = 7), uri=https://project2.amit-learning.com/api/auth/login";

// navigator extentions 
//----------------------

extension navigators on BuildContext {
  pushex(Widget destenation) {
    Navigator.push(this, MaterialPageRoute(builder: (context) {
      return destenation;
    }));
  }

  pushreplacmentex(Widget destenation) {
    Navigator.pushReplacement(this, MaterialPageRoute(builder: (context) {
      return destenation;
    }));
  }
}
