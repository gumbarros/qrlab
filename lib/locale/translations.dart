import 'package:get/get.dart';

class QRTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR':
    {
      "app_title": "App Aprovações",
      "api_username": "jjconsulting.api",
      "api_password": "san1606",
      "loading":"Conectando ao servidor...",
      "error":"Erro ao se conectar com o servidor",
      "login":"Login",
      "url": "http://189.57.10.251:89/",
      "end_login": "sync/weblogin.ashx?typeRequest=1",
      "end_recover": "api/accounts/recoverpassword",
      "login_or_code":"Login (email ou código)",
      "recover_password":"Recuperar a senha",
      "recover_instructions":"Instruções: para recuperar a senha, preencha abaixo com o seu login e clique em enviar. Se esse foi o último dispositivo acessado por você, poderá alterar a senha aqui mesmo. Caso contrário, a alteração deverá ser feita através do e-mail de recuperação de senha que enviaremos para o e-mail cadastrado.",
      "send":"Enviar",
      "end_change": "api/accounts/changepassword",
      "end_sync_database": "api/dictionaries",
      "end_sync_dictionaries_count": "api/dictionaries/count",
      "end_sync_masterapi": "masterapi",
      "enter": "Entrar",
      "forgot_password":"Esqueceu a senha?",
      "ok":"OK",
      "environment": "(Você está em homologação)",
      "password": "Senha",
      "version":"Versão 0.224.20201014",
    }
  };
}