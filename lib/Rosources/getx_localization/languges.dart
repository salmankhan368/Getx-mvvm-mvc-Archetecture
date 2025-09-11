import 'package:get/get_navigation/get_navigation.dart';

class Languages extends Translations {
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email_hint': "Email",
      'password_hint': "password",
      'loginS': "login Succesfuly",
      'enter_email': "Enter your Email please",
      'enter_password': "Enter your password please",
      'login': 'login',
      'internet_exception':
          "We 'r unable to show your result.\nPlease check your internet\nconnection.",
      'general_exception':
          "We 'r unable to process your result.\nplease try again.",
    },
    'ur_PK': {'email_hint': "Enter your email plz"},
  };
}
