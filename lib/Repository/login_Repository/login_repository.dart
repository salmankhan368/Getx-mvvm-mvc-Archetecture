import 'package:project_getx_mvc_mvvm/Network/network_api_services.dart';
import 'package:project_getx_mvc_mvvm/Rosources/App_Url/app_url.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();
  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrl.loginApi);
    return response;
  }
}
