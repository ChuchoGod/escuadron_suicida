import 'package:dio/dio.dart';
import 'package:escuadron_suicida/domain/entities/message.dart';
import 'package:escuadron_suicida/infrastructure/models/yes_no_model.dart';

class GetYesNoAnswer {
  //Instantiate the Dio class para manejar peticiones HTTP
  final _dio = Dio();

  Future<Message> getAnswer ()async{
    //Almacenar la petición
    final response = await _dio.get('https://yesno.wtf/api');

    //Almacenar la data de la respuesta
    final yesNoModel = YesNoModel.fromJson(response.data);

    //Retornar la instancia de Message
    return yesNoModel.toMessageEntity();
  }
}
