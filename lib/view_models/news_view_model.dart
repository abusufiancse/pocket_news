import 'package:pocket_news/models/news_channel_headlines_models.dart';
import 'package:pocket_news/repository/news_repository.dart';

class NewsViewModel {
  final _repo = NewsRepository();
  Future<NewsChannelsHeadlinesModel> fetchNewChannelHeadlinesApi() async {
    final response = await _repo.fetchNewChannelHeadlinesApi();
    return response;
  }
}
