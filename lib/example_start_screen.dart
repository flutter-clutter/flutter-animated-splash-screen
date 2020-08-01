import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExampleStartScreen extends StatelessWidget {
  static final defaultImage = Image.asset('assets/fc-logo.png', width: 56, height: 56, fit: BoxFit.cover);
  static const defaultPostHeading = 'Beautiful, animated splash screen';
  static const defaultBlogTitle = 'Flutter Clutter';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        InkWell(
          child: _getChatEntry(),
          onTap: () {print('Test');},
        )
        ,
        _getChatEntry(
          blogTitle: 'Google News', postHeading: 'Amazing: Flutter is the most famous mobile development toolkit', logo: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/512px-Google_%22G%22_Logo.svg.png', width: 56, height: 56)
        ),
        _getChatEntry(
          blogTitle: 'Flutter News', postHeading: 'Flutter now runs on SpaceX ships', logo: Image.asset('assets/flutter-logo.png', width: 56, height: 56, fit: BoxFit.cover)
        ),
        _getChatEntry(
          blogTitle: 'Patavinus', postHeading: 'New version is built with Flutter', logo: Image.asset('assets/patavinus-logo.png', width: 56, height: 56, fit: BoxFit.cover)
        ),
        _getChatEntry(
          blogTitle: 'Local news', postHeading: 'Flensburg\'s beer sales on the rise', logo: Icon(Icons.library_books, size: 56, color: Colors.blueAccent,)
        ),
        _getChatEntry(
          blogTitle: 'Travel blog', postHeading: 'Travel industry slowly recovers', logo: Icon(Icons.local_airport, size: 56, color: Colors.orangeAccent,)
        ),
        _getChatEntry(
          blogTitle: 'UI blog', postHeading: 'Study: Most UI elements are too high', logo: Icon(Icons.mouse, size: 56, color: Colors.redAccent,)
        ),
        _getChatEntry(
          blogTitle: 'Imaginary Computer Blog', postHeading: 'Interview with an app developer: "I don\'t think"', logo: Icon(Icons.computer, size: 56, color: Colors.black45,)
        ),
      ]
    );
  }

  Widget _getChatEntry({String blogTitle = defaultBlogTitle, String postHeading = defaultPostHeading, Widget logo, String date = 'Just now'}) {
    if (logo == null) {
      logo = defaultImage;
    }

    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TOOO: BoxFit explain
            logo,
            // TODO: If we leave that out, we have full yellow-black lines
            Expanded(child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(blogTitle, style: TextStyle(fontSize: 18)),
                  // TODO: Explain difference with and withlut ellipsis
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(postHeading, overflow: TextOverflow.ellipsis,)
                  ),
                ]
              ),
            )),
            Text(date),
          ]
        )
      )
    );
  }
}