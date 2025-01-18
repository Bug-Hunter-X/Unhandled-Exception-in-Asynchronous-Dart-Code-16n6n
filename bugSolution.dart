```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Process jsonData
      print('Data fetched successfully: $jsonData');
    } else {
      // Throw a more specific exception with context
      throw HttpException('Failed to load data: ${response.statusCode} - ${response.reasonPhrase}', response.statusCode);
    }
  } on HttpException catch (e) {
    print('HTTP Error: ${e.message} (Status Code: ${e.statusCode})');
    // Handle HTTP errors specifically (e.g., retry, show error message)
  } on FormatException catch (e) {
    print('JSON Decoding Error: $e'); //Handle JSON decoding errors separately
  } catch (e) {
    print('An unexpected error occurred: $e');
    //Log this error to a proper error reporting service (like Sentry or Firebase Crashlytics)
  }
}

class HttpException implements Exception {
  final String message;
  final int statusCode;

  HttpException(this.message, this.statusCode);
}

void main() async {
  await fetchData();
}
```