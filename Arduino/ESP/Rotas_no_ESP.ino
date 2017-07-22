#include <ESP8266WiFi.h>

WiFiServer server(80); //Initialize the server on Port 80

void setup() {

WiFi.mode(WIFI_AP); //Our ESP8266-12E is an AccessPoint
WiFi.softAP("RODRIGO D-LINK 1024", "rodrigo1311"); // Provide the (SSID, password); .
server.begin(); // Start the HTTP Server
IPAddress HTTPS_ServerIP= WiFi.softAPIP(); // Obtain the IP of the Server
Serial.begin(115200); //Start communication between the ESP8266-12E and the monitor window
Serial.print("Server IP is: "); // Print the IP to the monitor window
Serial.println(HTTPS_ServerIP);

pinMode(D0, OUTPUT); //D0 is an OUTPUT pin;
digitalWrite(D0, LOW); //Initial state is ON

pinMode(D1, OUTPUT); //D1 is an OUTPUT pin;
digitalWrite(D1, LOW); //Initial state is ON

pinMode(D2, OUTPUT); //D2 is an OUTPUT pin;
digitalWrite(D2, LOW); //Initial state is ON

pinMode(D3, OUTPUT); //D3 is an OUTPUT pin;
digitalWrite(D3, LOW); //Initial state is ON

}

void loop() 
{ 
    WiFiClient client = server.available();
if (!client) {
return;
}
//Looking under the hood
Serial.println("Somebody has connected :)");
  Serial.println("Rodrigo Santos");

//Read what the browser has sent into a String class and print the request to the monitor
String request = client.readString();
//Looking under the hood
Serial.println(request);

// Handle the Request

if (request.indexOf("/desliga/0") != -1){
digitalWrite(D0, HIGH); }
else if (request.indexOf("/liga/0") != -1){
digitalWrite(D0, LOW);
}
else if (request.indexOf("/desliga/1") != -1){
digitalWrite(D1, HIGH);
}
else if (request.indexOf("/liga/1") != -1){
digitalWrite(D1, LOW);
}
else if (request.indexOf("/desliga/2") != -1){
digitalWrite(D2, HIGH);
}
else if (request.indexOf("/liga/2") != -1){
digitalWrite(D2, LOW);
}
else if (request.indexOf("/desliga/3") != -1){
digitalWrite(D3, HIGH);
}
else if (request.indexOf("/liga/3") != -1){
digitalWrite(D3, LOW);
}
}
