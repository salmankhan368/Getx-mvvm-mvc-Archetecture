class AppExceptions implements Exception {
  final _message;
  final _prefix;
  AppExceptions([this._message, this._prefix]);
  String toString() {
    return '$_prefix$_message';
  }
}

class InternetException extends AppExceptions {
  InternetException([String? message])
    : super(message, 'No Internet Connection some thing went wrong');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message]) : super(message, 'Request Time out');
}

class ServerException extends AppExceptions {
  ServerException([String? message]) : super(message, 'Server error');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message]) : super(message, 'invalid Url ');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
    : super(message, 'Error accured while communication with server ');
}
