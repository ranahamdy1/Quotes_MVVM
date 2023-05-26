import '../models/quote_model.dart';

class QuoteViewModel {
  QuotesModel? quoteModel;
  QuoteViewModel({this.quoteModel});

  get title => quoteModel?.title;

  get body => quoteModel?.body;
}
