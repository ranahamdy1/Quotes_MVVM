import 'package:flutter/material.dart';
import '../models/quote_model.dart';

class QuotesView extends StatefulWidget {
  const QuotesView({Key? key}) : super(key: key);

  @override
  State<QuotesView> createState() => _QuotesViewState();
}

class _QuotesViewState extends State<QuotesView> {
  List<QuotesModel>? quotes;
  var isLoading = false;

  @override
  void initState() {
    getData();
    super.initState();
  }

  getData() async {
    //uotes = await RemoteServices().getPosts();
    if (quotes != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("posts"),
      ),
      body: Visibility(
        visible: isLoading,
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
        child: ListView.builder(
            itemCount: quotes?.length,
            itemBuilder: (context, index) {
              return Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        quotes![index].title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        quotes![index].body,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    ]),
              );
            }),
      ),
    );
  }
}
