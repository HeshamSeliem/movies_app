// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';
// import 'package:movies_app/models/films_response.dart';

// class ApiManager {
//   static  Future<filmsResponse> getMoviesList() async{
//     Uri url = Uri.https("yts.mx", "/api/v2/list_movies.json", {
//       "quality": "3D",
//     });
//    http.Response response = await http.get(url);
//    var json = jsonDecode(response.body);
//    filmsResponse films = filmsResponse.fromJson(json);
//    return films;
//   }
// }
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:movies_app/models/films_response.dart';

class ApiManager {
  static Future<filmsResponse?> getMoviesList() async {
    try {
      Uri url = Uri.https("yts.mx", "/api/v2/list_movies.json", {
        "quality": "3D",
      });

      http.Response response = await http.get(url);

      if (response.statusCode == 200) { // Check if request is successful
        var json = jsonDecode(response.body);
        filmsResponse films = filmsResponse.fromJson(json);
        return films;
      } else {
        print("Error: ${response.statusCode} - ${response.reasonPhrase}");
        return null;
      }
    } catch (e) {
      print("Exception: is $e");
      return null;
    }
  }
}
