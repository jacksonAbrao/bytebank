import 'package:bytebank/http/interceptors/logging_interceptor.dart';
import "package:http/http.dart";
import 'package:http_interceptor/http/intercepted_client.dart';

final Client client = InterceptedClient.build(
  interceptors: [LoggingInterceptor()],
);

Uri baseUrl = Uri.parse(("http://10.1.1.102:8080/transactions"));
