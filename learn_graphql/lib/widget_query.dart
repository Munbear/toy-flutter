import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class WidgetQuery extends StatefulWidget {
  const WidgetQuery({super.key});

  @override
  State<WidgetQuery> createState() => _WidgetQueryState();
}

class _WidgetQueryState extends State<WidgetQuery> {
  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: gql("""query {
              characters() {
                results {
                  name
                  image
                }
              }
            }"""),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) const Center(child: CircularProgressIndicator());

        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: (result.data?['characters']['results'] ?? "").length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image(
                      image: NetworkImage((result.data?['characters']['results'] ?? "")[index]['image']),
                    ),
                    title: Text((result.data?['characters']['results'] ?? "")[index]['name']),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
