import 'package:flutter/material.dart';

import '../common/weather_constant.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class SearchBarDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = "";
          showSuggestions(context);
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
      onPressed: () {
        if (query.isEmpty) {
          close(context, "");
        } else {
          query = "";
          showSuggestions(context);
        }
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Center(
      child: Text('12312321'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const SearchContentView();
    } else {
      final suggestionList =
          cityList.where((input) => input.startsWith(query)).toList();
      return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          // 创建一个富文本，匹配的内容特别显示
          return ListTile(
            title: RichText(
                text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: const TextStyle(color: Colors.grey))
              ],
            )),
            onTap: () {
              query = suggestionList[index];
              close(context, query);
            },
          );
        },
      );
    }
  }
}

class SearchContentView extends StatefulWidget {
  const SearchContentView({super.key});

  @override
  SearchContentViewState createState() => SearchContentViewState();
}

class SearchContentViewState extends State<SearchContentView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            '大家都在搜',
            style: TextStyle(fontSize: 16),
          ),
          const SearchItemView(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              '历史记录',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SearchItemView()
        ],
      ),
    );
  }
}

class SearchItemView extends StatefulWidget {
  const SearchItemView({super.key});

  @override
  SearchItemViewState createState() => SearchItemViewState();
}

class SearchItemViewState extends State<SearchItemView> {
  List<String> items = ['宜昌', '北京', '上海', '深圳', '广州', '秦皇岛', '桂林', '香港', '南京'];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      // runSpacing: 0,
      children: items.map((item) {
        return SearchItem(title: item);
      }).toList(),
    );
  }
}

class SearchItem extends StatefulWidget {
  @required
  final String title;

  const SearchItem({super.key, required this.title});

  @override
  SearchItemState createState() => SearchItemState();
}

class SearchItemState extends State<SearchItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: InkWell(
        child: Chip(
          label: Text(widget.title),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        onTap: () {
          Navigator.pop(context, widget.title);
        },
      ),
    );
  }
}
