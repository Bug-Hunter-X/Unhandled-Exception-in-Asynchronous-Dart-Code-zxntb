```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions (e.g., network errors)
    print('Error fetching data: $e');
    // Rethrow the exception or handle it as needed
    rethrow; //This rethrows the error.  Consider removing this line to prevent a crash
  }
}
```