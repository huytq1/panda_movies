import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class MovieApiProvider
{
  Client client = Client();
  final _apiKey= '326cd95e361f5440313576ebb1c18a2a';
  //final _apiAccessTokenV4= 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzMjZjZDk1ZTM2MWY1NDQwMzEzNTc2ZWJiMWMxOGEyYSIsInN1YiI6IjVjMmRiMjA3MGUwYTI2NTVmMjNjMmQ3ZCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.3BPNclXgoludEVnigE7kNJ3LkF5mXMpqJKJTtY82U4k';

  Future<ItemModel> fetMovieLit() async{
    print('get data');
    final response = await client
    .get("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey");
    print(response.body.toString());

    if(response.statusCode==200)
    {
      return ItemModel.fromJson(json.decode(response.body));
    }
    else
    {
      throw Exception('Fail to load post');
    }
  }
}