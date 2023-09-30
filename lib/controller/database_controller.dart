import 'dart:convert';
import 'package:http/http.dart' as http;

class DatabaseController {
  static Future<void> updateVoltage(double voltage) async {
    const String apiUrl = 'http://localhost:8080/api/lamp/voltage'; 
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      final Map<String, dynamic> body = {
        'voltage': voltage,
      };

      final response = await http.put(Uri.parse(apiUrl), headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) print('success update voltage ${voltage}');
      else print('Failed to create item: ${response.statusCode}');
  }

  static Future<void> updateState(bool state) async {
    const String apiUrl = 'http://localhost:8080/api/lamp/state'; 
      final Map<String, String> headers = {'Content-Type': 'application/json'};
      final Map<String, dynamic> body = {
        'state': !state ? 1 : 0,
      };

      final response = await http.put(Uri.parse(apiUrl), headers: headers, body: jsonEncode(body));

      if (response.statusCode == 200) print('success update state ${state}');
      else print('Failed to create item: ${response.statusCode}');
  }
}