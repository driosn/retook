// // class Motor {
// //   Motor({
// //     required this.marca,
// //     required this.cc,
// //   });

// //   final String marca;
// //   final int cc;

// //   void encender() {}
// //   void avanzar() {}
// // }

// import 'package:dio/dio.dart';

// abstract class ClientsService {
//   void create();
//   void read();
//   void update();
//   void delete();
// }

// class ApiClientsService implements ClientsService {
//   ApiClientsService({
//     required this.dio,
//   });
//   final Dio dio;

//   @override
//   void create() {}
//   @override
//   void read() {}
//   @override
//   void delete() {}

//   @override
//   void update() {}
// }

// class FirebaseClientsService implements ClientsService {
//   FirebaseClientsService();

//   @override
//   void create() {}
//   @override
//   void read() {}
//   @override
//   void delete() {}
//   @override
//   void update() {}
// }

// class ClientsRepository {
//   ClientsRepository({
//     required this.service,
//   });

//   final ClientsService service;

//   void read() {
//     service.read();
//   }
// }

// void main() {
//   final clientsRepository = ClientsRepository(service: ApiClientsService());
//   final firebaseClientsRepository =
//       ClientsRepository(service: FirebaseClientsService());
// }
