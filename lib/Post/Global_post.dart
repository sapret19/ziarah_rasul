// import 'package:flutter/material.dart';
// import 'package:flutter_wordpress/flutter_wordpress.dart' as wp;

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: HomePage(),
// //     );
// //   }
// // }

// class Coba extends StatefulWidget {
//   @override
//   _CobaState createState() => _CobaState();
// }

// class _CobaState extends State<Coba> {
//   List<wp.Post> _posts = [];

//   @override
//   void initState() {
//     super.initState();
//     _fetchPosts();
//   }

//   void _fetchPosts() async {
//     wp.WordPress wordPress = wp.WordPress(
//       baseUrl: 'https://annur2.net',
//     );
//     List<wp.Post> posts = await wordPress.fetchPosts(
//       postParams: wp.ParamsPostList(
//         context: wp.WordPressContext.view,
//         pageNum: 1,
//         perPage: 10,
//       ),
//       fetchAuthor: true,
//       fetchFeaturedMedia: true,
//       fetchComments: true,
//     );
//     setState(() {
//       _posts = posts;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WordPress Posts'),
//       ),
//       body: ListView.builder(
//         itemCount: _posts.length,
//         itemBuilder: (context, index) {
//           wp.Post post = _posts[index];
//           return ListTile(
//             title: Text(post.title.rendered),
//             subtitle: Text(post.excerpt.rendered),
//           );
//         },
//       ),
//     );
//   }
// }