import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<dynamic> characters = [];
  bool _loading = false;

  void fetchData() async {
    setState(() {
      _loading = true;
    });

    HttpLink link = HttpLink("https://rickandmortyapi.com/graphql");
    GraphQLClient qlClient = GraphQLClient(
      link: link,
      cache: GraphQLCache(
        store: HiveStore(),
      ),
    );

    QueryResult queryResult = await qlClient.query(
      QueryOptions(
        document: gql(
          """query {
          characters() {
            results {
              name
              image
            }
          }
        }""",
        ),
      ),
    );
    setState(() {
      characters = queryResult.data!["characters"]['results'];
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : characters.isEmpty
              ? Center(
                  child: ElevatedButton(
                    onPressed: () => fetchData(),
                    child: const Text("Fatch Data"),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8),
                  child: ListView.builder(
                    itemCount: characters.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Image(
                            image: NetworkImage(characters[index]['image']),
                          ),
                          title: Text(characters[index]['name']),
                        ),
                      );
                    },
                  ),
                ),
    );
  }
}
