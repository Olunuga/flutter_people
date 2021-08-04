import 'package:flutter/material.dart';

class Peoples extends StatelessWidget {

  List<People> peopleArray = [
    People("John", "jsjsj", "jajajaj"),
    People("John", "jsjsj", "jajajaj"), People("John", "jsjsj", "jajajaj"),
    People("John", "jsjsj", "jajajaj"),
    People("John", "jsjsj", "jajajaj"),
    People("John", "jsjsj", "jajajaj"),
    People("John", "jsjsj", "jajajaj")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: SafeArea(
          child: ListView.builder(
            itemCount: peopleArray.length,
              itemBuilder: (context, index) {

              People people = peopleArray[index];

            return GestureDetector(
              onTap: (){
                print("Item clicked");
              },
                child: NameCard(firstname: people.firstname, lastname: people.lastName, bio: people.bio,));
          }
          ),
        ),
      ),
    );
  }
}


class People {
  String firstname;
  String lastName;
  String bio;

  People(this.firstname, this.lastName, this.bio);
}



class NameCard extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String bio;

  NameCard({this.firstname, this.lastname, this.bio});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          fullName(),
          SizedBox(height: 10),
          Text(bio ?? "")
        ],
      ),
    );
  }


  Widget fullName(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(firstname ?? ""),
        SizedBox(width: 10),
        Text(lastname ?? "")
      ],
    );
  }

}