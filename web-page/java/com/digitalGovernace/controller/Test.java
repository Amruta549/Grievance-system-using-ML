package com.digitalGovernace.controller;



import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpRequest.BodyPublishers;
import java.net.http.HttpResponse;
import java.net.http.HttpResponse.BodyHandlers;

import org.json.JSONObject;

public class Test {
	
	/*
	 * public static void main(String[] args) { Email email = new SimpleEmail();
	 * email.setHostName("smtp.googlemail.com"); email.setSmtpPort(465);
	 * email.setAuthenticator(new DefaultAuthenticator("chidrapuraju123@gmail.com",
	 * "258025aA@")); email.setSSLOnConnect(true); try {
	 * email.setFrom("chidrapuraju123@gmail.com"); email.setSubject("TestMail");
	 * email.setMsg("This is a test mail ... :-)");
	 * email.addTo("bharathavamshikrishna1526@gmail.com"); email.send(); } catch
	 * (EmailException e) { e.printStackTrace(); } }
	 */
	 
	  public static void main(String[] args) {
}
	  public String priority(String value) {
		  String url = "https://example.com/api/endpoint";

	       
	        JSONObject jsonPayload = new JSONObject();
	        jsonPayload.put("attribute", value);

	       
	        HttpClient client = HttpClient.newHttpClient();
	        HttpRequest request = HttpRequest.newBuilder()
	                .uri(URI.create(url))
	                .POST(BodyPublishers.ofString(jsonPayload.toString()))
	                .header("Content-Type", "application/json")
	                .build();

	      
	        client.sendAsync(request, BodyHandlers.ofString())
	                .thenApply(HttpResponse::body)  
	                .thenAccept(responseBody -> {
	                    System.out.println("Response: " + responseBody);
	                })
	                .join();
			return url; 
	  }
	  public  String requestAndResponse(String jsonInputString) {
		  StringBuilder response = new StringBuilder();
		  String message=null;
		  try {
			  String urlStr = "https://example.com/api/endpoint";
		
		  URL url = new URL(urlStr);
		  JSONObject jsonPayload = new JSONObject();
	        jsonPayload.put("complaint", jsonInputString);
		  String jsonString = jsonPayload.toString();

		  HttpURLConnection connection = (HttpURLConnection) url.openConnection();

		  connection.setRequestMethod("POST");

		  connection.setRequestProperty("Content-Type", "application/json");

		  connection.setDoOutput(true);

		  try (OutputStream outputStream = connection.getOutputStream()) {
		  byte[] input = jsonString.getBytes("utf-8");
		  outputStream.write(input, 0, input.length);
		  }

		  int responseCode = connection.getResponseCode();
		  System.out.println("Response Code: " + responseCode);

		  try (BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"))) {
		  String responseLine;
		  while ((responseLine = br.readLine()) != null) {
		  response.append(responseLine.trim());
		  }
		   jsonPayload = new JSONObject(response);
	         message = jsonPayload.getString("message");

		  }

		  connection.disconnect();

		  } catch (Exception e) {
		  e.printStackTrace();
		  }

		  return message;
		  }

}

	
	



