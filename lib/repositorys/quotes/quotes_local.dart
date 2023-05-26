import 'package:crud_app1/repositorys/quotes/quotes_repository.dart';
import '../../models/quote_model.dart';

class QuotesLocal extends QuotesRepository {
  @override
  Future<QuotesModel> getAllQuotes() {
    throw UnimplementedError();
  }
}
