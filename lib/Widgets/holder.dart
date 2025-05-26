import 'package:flutter/material.dart';

class Holder extends StatelessWidget {

  

    


  @override
  Widget build(BuildContext context) {
    return  SliverFillRemaining(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: CircularProgressIndicator()),
              SizedBox(height: 200),
            ],
          ),
        );

    
  }}


