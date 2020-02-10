import 'dart:async';

import 'package:intl/intl.dart';
import 'package:lab1/lab1.dart';

class NameController extends ResourceController {
  static DateTime date = DateTime.now();
  String dateFormat = DateFormat('EEEE').format(date);

  @Operation.get()
  Future<Response> getName(@Bind.query('name') String name) async {
    final Response response =
        Response.ok('Hello ${name}, today is ${dateFormat}');
    response.contentType = ContentType.html;
    return response;
  }
}
