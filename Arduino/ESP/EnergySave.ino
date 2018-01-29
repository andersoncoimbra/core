#include <ESP8266WiFi.h>
const char* ssid     = "Nome do Rede Wifi";
const char* password = "Senha da Rede";

const char* host = "api.elis.cf";

void setup() {
  Serial.begin(115200);
  delay(100);

  // Iniciando a conecção com a rede
  Serial.println();
  Serial.println();
  Serial.print("Conectando: ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

 while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.println("");
  Serial.println("WiFi conectado");
  Serial.println("IP : ");
  Serial.println(WiFi.localIP());
}

void loop() {

  WiFiClient client;
  const int httpPort = 80;
  if (!client.connect(host, httpPort)) {
    Serial.println("Falha na conexao");
    return;
  }

  // Leitura dos dados - SoftSerial trocar os metodos de leitura serial por correspodente
  //Formato deve se de acordor com o exemplo
  // id -> Indentificação do modulo de fornecimento dos dados
  // temp -> Valores de Temperatura
  // umidade -> Valores de Umidade
  // Exemplo:
  // id=0&temp=00.0&umidade=00.0

 String data = Serial.read();

   Serial.print("Requisição POST: ");
   // Mandando request em metodo post para a url http://api.elis.cf/registro
   client.println("POST /api/registro HTTP/1.1");
   client.println("Host: " + host);
   client.println("Accept: */*");
   client.println("Content-Type: application/x-www-form-urlencoded");
   client.print("Content-Length: ");
   client.println(data.length());
   client.println();
   client.print(data);

   delay(500); // Tempo estimado para completa o envio da requisição
  if (client.connected()) {
    client.stop();  // Desconectando do Servidor
  }
  Serial.println();
  Serial.println("Conexão Fechada");
  delay(5000);
}