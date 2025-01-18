```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming JSON response
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Here's where the issue is, we catch any Exception, but provide no specific handling.
    print('Error fetching data: $e'); // This only logs to console.
    //Better to re-throw the error or provide a more specific catch statement.
  }
}
```