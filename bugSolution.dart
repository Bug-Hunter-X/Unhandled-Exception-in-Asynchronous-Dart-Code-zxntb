```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // ...
    } else {
      // Handle error response more gracefully
      print('Error: HTTP status code ${response.statusCode}');
      //You may wish to rethrow to allow calling code to handle the error.
      //throw Exception('Failed to load data: ${response.statusCode}'); 
    }
  } catch (e) {
    // Handle exceptions (e.g., network errors) gracefully
    print('Error fetching data: $e');
    // Don't rethrow unless absolutely necessary; this gives the caller a chance to handle
    // the failure. If it's critical to propagate the error, rethrow it.
     //rethrow; 
  }
}
```