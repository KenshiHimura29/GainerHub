import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController _nameController = TextEditingController(text: "Sigma Male");
  TextEditingController _aboutController = TextEditingController(text: "A skibidi Sigma Male with 999+ aura from planet keplerian");
  TextEditingController _phoneController = TextEditingController(text: "0821248763");
  TextEditingController _emailController = TextEditingController(text: "sigma.male@example.com");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xdb000000),
        title: Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xffffffff), size: 24),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/images/Bodybuilder.jpeg", fit: BoxFit.cover),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff3a57e8),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.photo_camera, color: Color(0xffffffff), size: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: ListTile(
                  title: Text("Name", style: TextStyle(fontSize: 14, color: Color(0xff424141))),
                  subtitle: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.edit, color: Color(0xff79797c), size: 22),
                    onPressed: () => _editField(context, "Edit Name", _nameController),
                  ),
                ),
              ),
              Divider(color: Color(0xffdddddd), height: 20),
              ListTile(
                title: Text("About", style: TextStyle(fontSize: 14, color: Color(0xff000000))),
                subtitle: TextField(
                  controller: _aboutController,
                  decoration: InputDecoration(
                    hintText: "Enter about yourself",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Color(0xff79797c), size: 22),
                  onPressed: () => _editField(context, "Edit About", _aboutController),
                ),
              ),
              Divider(color: Color(0xffdddddd), height: 20),
              ListTile(
                title: Text("Phone", style: TextStyle(fontSize: 14, color: Color(0xff000000))),
                subtitle: TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Color(0xff79797c), size: 22),
                  onPressed: () => _editField(context, "Edit Phone", _phoneController),
                ),
              ),
              Divider(color: Color(0xffdddddd), height: 20),
              ListTile(
                title: Text("Email", style: TextStyle(fontSize: 14, color: Color(0xff000000))),
                subtitle: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.edit, color: Color(0xff79797c), size: 22),
                  onPressed: () => _editField(context, "Edit Email", _emailController),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _editField(BuildContext context, String title, TextEditingController controller) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: title),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel", style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  // Update the field with the new value
                });
                Navigator.pop(context);
              },
              child: Text("Save", style: TextStyle(color: Colors.green)),
            ),
          ],
        );
      },
    );
  }
}
