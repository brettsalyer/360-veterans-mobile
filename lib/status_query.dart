import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class StatusQuery {
  final String firstName;
  final String lastName;
  String email;

  static const String _API_KEY = "425ec27c-1915-4740-a7f2-8915598078be";
  String _url =
      "https://api.hubapi.com/crm/v3/objects/contacts/search?hapikey=" +
          _API_KEY;

  StatusQuery(
      {@required this.firstName,
      @required this.lastName,
      @required this.email});

  Future query() async {
    var headers = {'content-type': 'application/json'};
    var payload = jsonEncode({
      'properties': ['lifecyclestage', 'firstname', 'lastname', 'email'],
      'filterGroups': [
        {
          'filters': [
            {
              'propertyName': 'firstname',
              'operator': 'EQ',
              'value': this.firstName
            },
            {
              'propertyName': 'lastname',
              'operator': 'EQ',
              'value': this.lastName
            },
            {'propertyName': 'email', 'operator': 'EQ', 'value': this.email},
          ]
        }
      ]
    });

    return await http.post(this._url, headers: headers, body: payload);
  }
}
