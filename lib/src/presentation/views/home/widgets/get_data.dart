import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:spark_taxi/src/config/router/app_routes.dart';
import 'package:spark_taxi/src/presentation/blocs/get_data/get_data_bloc.dart';

class GetDataPage extends StatefulWidget {
  const GetDataPage({super.key});

  @override
  State<GetDataPage> createState() => _GetDataPageState();
}

class _GetDataPageState extends State<GetDataPage> {
  @override
  void initState() {
    BlocProvider.of<GetDataBloc>(context).add(GetDataEventProduct());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetDataBloc, GetDataState>(
      builder: (context, state) {
        if (state is GetDataLoading) {
          return Container(
            color: Colors.white,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (state is GetDataError) {
          Fluttertoast.showToast(
              msg: "error",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
        if (state is GetDataSuccess) {
          return Scaffold(
            appBar: AppBar(
              toolbarHeight: 0,
              elevation: 0,
              scrolledUnderElevation: 0,
            ),
            body: ListView(
              children: [
                ...List.generate(
                    state.getDataProducts.length,
                    (index) => ListTile(
                          title: Text(
                            state.getDataProducts[index].title,
                            style: const TextStyle(color: Colors.black),
                          ),
                        )),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, RouteNames.hiveExamplePage);
                    },
                    child: const Text("Hive Example"))
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
