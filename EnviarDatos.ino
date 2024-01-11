#include <WiFi.h>
#include <HTTPClient.h>
#include <time.h>

const char* ssid = "SAN_MARTIN Wi-Fi e";
const char* pass = "gloria43491825";
const char *serverUrl = "http://192.168.0.111/proyectoformativo/contenido/recibir_data.php";
const char *tabla = "temperatura11";
const char *dispositivo = "Temperatura";
const char *identificador = "49";

int SENSOR = 0;

void setup() {
  Serial.begin(115200);

  WiFi.begin(ssid, pass);
  while (WiFi.status() != WL_CONNECTED) {
    delay(1000);
    Serial.println("Connecting to WiFi..");
  }

  Serial.println("Connected to WiFi");
  Serial.println(WiFi.localIP());
}

void loop() {
  SENSOR = analogRead(35);
  double temp1 = map(SENSOR, 0, 4095, 0, 660);

  // Construir el cuerpo de la solicitud
  String postData = "sensor=" + String(temp1) + "&tabla=" + tabla + "&dispositivo=" + dispositivo + "&identificador=" + identificador;

  // Inicia la solicitud HTTP
  HTTPClient http;
  http.begin(serverUrl);

  // Establece el tipo de contenido como application/x-www-form-urlencoded
  http.addHeader("Content-Type", "application/x-www-form-urlencoded");

  // Realiza la solicitud POST con los datos del sensor
  int httpResponseCode = http.POST(postData);

  Serial.print("Código de respuesta HTTP: ");
  Serial.println(httpResponseCode);

  // Verifica la respuesta del servidor
  if (httpResponseCode > 0) {
    Serial.print("Respuesta del servidor: ");
    Serial.println(http.getString());
  } else {
    Serial.print("Error en la solicitud HTTP: ");
    Serial.println(httpResponseCode);
  }

  // Libera los recursos de la solicitud HTTP
  http.end();

  Serial.println(postData);
  delay(10000); // Espera 10 segundos entre envíos de datos
}
