import 'package:bytebank/http/interceptors/logging_interceptor.dart';
import "package:http/http.dart";
import 'package:http_interceptor/http/intercepted_client.dart';

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
  requestTimeout: const Duration(seconds: 5),
);

// Uri baseUrl = Uri.parse(("http://10.1.1.102:8080/transactions")); //api 4selet
Uri baseUrl = Uri.parse(("http://192.168.100.5:8080/transactions")); //api casa
