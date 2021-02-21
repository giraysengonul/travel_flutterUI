import 'package:flutter/material.dart';
import 'place_model.dart';
import 'place_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel Flutter ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int _searchType = 0;
  Column _buildPopularPlaces() {
    List<Widget> popularPlaces = [];
    places.forEach((place) {
      popularPlaces.add(
        Container(
          height: 80.0,
          child: Center(
            child: ListTile(
              leading: Hero(
                tag: place.imageUrl,
                child: Image(image: NetworkImage(place.imageUrl)),
              ),
              title: Text(
                place.city,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                '${place.properties} properties',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: InkResponse(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PlaceScreen(place: place),
                    ),
                  );
                },
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.deepPurpleAccent,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    size: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
    return Column(children: popularPlaces);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 25.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {},
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Make an early reservation for unforgettable memories in your life !!",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                      color: _searchType == 0
                          ? Colors.transparent
                          : Colors.deepPurpleAccent),
                ),
                color: _searchType == 0 ? Colors.deepPurpleAccent : null,
                child: Text(
                  "Hotels",
                  style: TextStyle(
                      color: _searchType == 0
                          ? Colors.white
                          : Colors.deepPurpleAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  setState(
                    () {
                      _searchType = 0;
                    },
                  );
                },
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(
                      color: _searchType == 1
                          ? Colors.transparent
                          : Colors.deepPurpleAccent),
                ),
                color: _searchType == 1 ? Colors.deepPurpleAccent : null,
                child: Text(
                  "Flights",
                  style: TextStyle(
                      color: _searchType == 1
                          ? Colors.white
                          : Colors.deepPurpleAccent,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
                onPressed: () {
                  setState(
                    () {
                      _searchType = 1;
                    },
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Where",
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.deepPurpleAccent,
                  size: 25.0,
                ),
              ),
            ),
          ),
          Divider(
            height: 40.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Check-in - Check-out",
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.deepPurpleAccent,
                  size: 25.0,
                ),
              ),
            ),
          ),
          Divider(
            height: 40.0,
          ),
          TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "1 Adults, 0 Children, 1 Room",
              icon: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.deepPurpleAccent,
                  size: 25.0,
                ),
              ),
            ),
          ),
          Divider(
            height: 40.0,
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            color: Colors.deepPurpleAccent,
            onPressed: () {},
            child: Text(
              "Search",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Popular places",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          _buildPopularPlaces(),
        ],
      ),
    );
  }
}
