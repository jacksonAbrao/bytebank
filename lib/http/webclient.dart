// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:bytebank/models/transactions.dart';
import "package:http/http.dart";
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:http_interceptor/models/request_data.dart';

import '../models/contact.dart';

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    print('Request');
    print('url: ${data.baseUrl}');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print('Response');
    print('status code: ${data.statusCode}');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }
}

Future<List<Transaction>> findAll() async {
  Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()],
  );
  Uri url = Uri.parse(("http://10.1.1.102:8080/transactions"));
  final Response response = await client.get(url);
  final List<dynamic> decodedJson = jsonDecode(response.body);
  final List<Transaction> transactions = [];
  for (Map<String, dynamic> transactionJson in decodedJson) {
    final Map<String, dynamic> contactJson = transactionJson['contact'];
    final Transaction transaction = Transaction(
      transactionJson['value'],
      Contact(
        0,
        contactJson['name'],
        contactJson['accountNumber'],
      ),
    );
    transactions.add(transaction);
  }
  return transactions;
}
