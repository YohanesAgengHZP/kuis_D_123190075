import 'package:flutter/material.dart';
import 'DetailApplication.dart';
import 'app_store.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text("Home Page"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }


  Widget _createListCard() {
    var dataApplication = getAllApplication();
    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataApplication[index], context);
      },
      itemCount: dataApplication.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(AppStore data, BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) {
             return DetailAplikasi(
                 gambar: data.imageLogo,
                 nama: data.name,
                 deskripsi:data.description);
           }));
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(data.imageLogo),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.name)
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 14,
                ),
                child: Text(data.genre),
              ),
            )
          ],
        ),
      ),
    );
  }
}
