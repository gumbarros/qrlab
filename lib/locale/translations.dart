import 'package:get/get.dart';

class QRTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'pt_BR':
    {
      "404":"Erro 404: Página não encontrada",
      "app_title": "QR Lab",
      "insert_qr_text":"Insira o texto do QR Code",
      "generate":"Gerar",
      "generate_qr":"Gerar QR Codes",
      "read_qr":"Ler QR Codes",
      "share":"Compartilhar",
      "share_qr":"Compartilhar QR Code",
      "qr_success":"QR Code escaneado com sucesso!",
      "scanned_data":"Dados Escaneados",
      "sent_clipboard":"Texto copiado!"
    },
    "en_US":
    {
      "404":"Error 404: Page not found",
      "app_title": "QR Lab",
      "insert_qr_text":"Insert the QR Code text",
      "generate":"Generate",
      "generate_qr":"Generate QR Codes",
      "read_qr":"Read QR Codes",
      "share":"Share",
      "share_qr":"Share QR Code",
      "qr_success":"QR Code successfully scanned!",
      "scanned_data":"Scanned Data",
      "sent_clipboard":"Sent to clipboard"
    }
  };
}