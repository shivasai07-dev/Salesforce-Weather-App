# 🌦️ Salesforce Weather App

## 🚀 Overview

A real-time Weather Application built using Salesforce LWC and Apex that integrates with an external Weather API to fetch, display, and store weather data.

## ✨ Features

* 🌐 Real-time Weather Data Fetching
* 📦 JSON Parsing using Apex Wrapper Class
* 💾 Data Storage in Custom Object (Weather__c)
* 🎨 Interactive UI using Lightning Web Components
* 🔐 Secure API Integration using Named Credentials & External Credentials
* 🌤 Dynamic Weather Icons Display

## 🛠 Tech Stack

* Apex (Callouts & Business Logic)
* Lightning Web Components (LWC)
* Named Credentials
* External Credentials
* REST API Integration
* JSON Parsing

## 🧠 Architecture

                +----------------------+
                |     LWC UI           |
                | (weatherApp)         |
                +----------+-----------+
                           |
                           | @AuraEnabled Call
                           ▼
                +----------------------+
                |   Apex Controller    |
                |  WeatherAPI.cls      |
                +----------+-----------+
                           |
                           | HTTP Callout
                           ▼
                +----------------------+
                |   Weather API        |
                | (External Service)   |
                +----------+-----------+
                           |
                           | JSON Response
                           ▼
                +----------------------+
                | Wrapper Class        |
                | JsonToApex...        |
                +----------+-----------+
                           |
                           | Extract Data
                           ▼
                +----------------------+
                | Custom Object        |
                | Weather__c           |
                +----------------------+
                           |
                           | Return Map
                           ▼
                +----------------------+
                | LWC UI Display       |
                +----------------------+

## 📂 Project Structure

force-app/
 └── main/default/
      ├── classes/
      ├── lwc/
      ├── objects/
      ├── namedCredentials/
      ├── externalCredentials/
      └── permissionSets/

## 🔐 Configuration Required

### 1. Named Credential

* Name: Weather_Api
* Endpoint: https://api.weatherapi.com/v1

### 2. External Credential

* Configure API Key authentication

### 3. Permission Set

* Assign Weather_App_Permissions to user

## ▶️ How to Use

1. Enter a city name
2. Click **Get Weather Data**
3. View real-time weather details
4. Data is stored in Salesforce

## 💡 Key Learnings

* Handling API integrations in Salesforce
* Managing secure authentication
* Dealing with serialization issues in LWC
* Designing clean and scalable architecture

## 📌 Future Enhancements

* 📊 Weather History Dashboard
* 🌍 Multi-city comparison
* ⏰ Scheduled weather updates

## 🤝 Contributing

Feel free to fork and enhance this project!

## 📧 Contact

Alkapelli Shiva Sai – www.linkedin.com/in/shiva-sai-alkapelli
