import 'package:flutter/material.dart';
import 'package:foodlyft/app/main_dependecies.dart';
import '../../app/main_dependecies.dart';

class EditRestaurant extends StatefulWidget {
  @override
  _EditRestaurantState createState() => _EditRestaurantState();
}

class _EditRestaurantState extends State<EditRestaurant> {
  final _imageInputController = TextEditingController();
  final _form = GlobalKey<FormState>();
  var _editedRestaurant = Restaurant(
    id: null,
    title: '',
    description: '',
    image: '',
    category: '',
    itemsa: [],
    price: 0,
  );

  @override
  @override
  void dispose() {
    _imageInputController.dispose();
    super.dispose();
  }

  void _saveEdited() {
   final isValid = _form.currentState.validate();
    _form.currentState.save();
    print(_editedRestaurant.title);
    print(_editedRestaurant.category);
    print(_editedRestaurant.description);
    print(_editedRestaurant.image);
    print(_editedRestaurant.price);
    print(_editedRestaurant.id);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Edit Restaurant')),
        backgroundColor: appMainColor,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: _saveEdited,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Form(
            key: _form,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Restaurant Name'),
                    textInputAction: TextInputAction.next,
                    onSaved: (value) {
                      _editedRestaurant = Restaurant(
                        title: value,
                        description: _editedRestaurant.description,
                        category: _editedRestaurant.category,
                        image: _editedRestaurant.image,
                        itemsa: _editedRestaurant.itemsa,
                        price: _editedRestaurant.price,
                        id: null,
                      );
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Enter a Name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Restaurant Category'),
                    textInputAction: TextInputAction.next,
                    onSaved: (value) {
                      _editedRestaurant = Restaurant(
                        title: _editedRestaurant.title,
                        description: _editedRestaurant.description,
                        category: value,
                        image: _editedRestaurant.image,
                        itemsa: _editedRestaurant.itemsa,
                        price: _editedRestaurant.price,
                        id: null,
                      );
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Description'),
                    maxLines: 3,
                    keyboardType: TextInputType.multiline,
                    onSaved: (value) {
                      _editedRestaurant = Restaurant(
                        title: _editedRestaurant.title,
                        description: value,
                        category: _editedRestaurant.category,
                        image: _editedRestaurant.image,
                        itemsa: _editedRestaurant.itemsa,
                        price: _editedRestaurant.price,
                        id: null,
                      );
                    },
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(
                            top: 9,
                            right: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                          child: _imageInputController.text.isEmpty
                              ? Text('Loaded image')
                              : FittedBox(
                                  child: Image.asset(
                                    _imageInputController.text,
                                    fit: BoxFit.cover,
                                  ),
                                )),
                      Expanded(
                        child: TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Enter an image'),
                          keyboardType: TextInputType.url,
                          textInputAction: TextInputAction.done,
                          controller: _imageInputController,
                          onSaved: (value) {
                            _editedRestaurant = Restaurant(
                              title: _editedRestaurant.title,
                              description: _editedRestaurant.description,
                              category: _editedRestaurant.category,
                              image: value,
                              itemsa: _editedRestaurant.itemsa,
                              price: _editedRestaurant.price,
                              id: null,
                            );
                          },
                          onFieldSubmitted: (_) {
                            _saveEdited();
                          },
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )),
      ),
    );
  }
}
