import 'package:flutter/material.dart';

class NewsFragment extends StatefulWidget {
  const NewsFragment({Key? key});

  @override
  _NewsFragmentState createState() => _NewsFragmentState();
}

class _NewsFragmentState extends State<NewsFragment> {
  int _jumlahLike = 0;

  // List of dummy news
  final List<Map<String, String>> _newsList = [
    {
      'title': 'Lorem Ipsum Dolor Sit Amet',
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin at nunc vel nunc aliquam sodales. Integer euismod dolor in pulvinar vestibulum. Fusce sit amet lorem lectus. Nulla varius pretium risus, sit amet pretium magna commodo eu. Fusce eget lorem vel enim ullamcorper rhoncus ac ut erat.',
          
    },
    {
      'title': 'Pellentesque Ullamcorper Euismod',
      'description':
          'Pellentesque ullamcorper euismod nibh vel commodo. Nulla eleifend elit euismod velit convallis, in gravida mi tincidunt. Etiam vel lectus vitae ante fringilla vestibulum. Vivamus in dolor quis purus pellentesque mattis sed euismod ex.',
    },
    {
      'title': 'Vestibulum Condimentum Mi Vitae',
      'description':
          'Vestibulum condimentum mi vitae finibus consectetur. In eu lacus dapibus, vestibulum lectus quis, ullamcorper turpis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed finibus nisl quis eleifend consectetur.',
    },
  ];

  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('News'),
    ),
    body: ListView.builder(
      itemCount: _newsList.length,
      itemBuilder: (BuildContext context, int index) {
        final news = _newsList[index];
        return Card(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              Image.network(
                'https://picsum.photos/id/$index/300/200',
                fit: BoxFit.cover,
              ),
              ListTile(
                title: Text(news['title']!),
                subtitle: Text(news['description']!),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _jumlahLike++;
                      });
                    },
                    icon: Icon(Icons.thumb_up),
                  ),
                  Text('$_jumlahLike'),
                  IconButton(
                    onPressed: () {
                      // action when comment button is pressed
                    },
                    icon: Icon(Icons.comment),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    ),
  );
}
}

