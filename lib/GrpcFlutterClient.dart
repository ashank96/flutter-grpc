import 'package:grpc/grpc.dart';

class GrpcFlutterClient {
  static ClientChannel client;

  static ClientChannel getClient(){
    if(client == null) {
      client =
          ClientChannel("192.168.1.5", // localhost does not work, enter your IP here 10.0.2.2 for android
              port: 4040,
              options: ChannelOptions(
                //TODO: Change to secure with server certificates
                credentials: ChannelCredentials.insecure(),
                idleTimeout: Duration(minutes: 1),
              ));
    }
    return client;
  }
}
