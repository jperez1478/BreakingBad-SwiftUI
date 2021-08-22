# BreakingBad-SwiftUI
BreakingBadSwiftUI
Table of contents
Introduction
Application Screens
Features
Software And Technologies
Setup
Approach
Code Structure And Design Pattern
Future Features And Improvements
Introduction:
iOS application to fetch and display a list of Breaking Bad series characters from the given endpoint, built with a combination of Swift, SwiftUI.

Application Screens:
 

 

Features:
Consumption of API (https://breakingbadapi.com/api/characters) to fetch the characters list. (URL Session, Codable)
Create List view to display the Characters list fetched from API. (SwiftUI)
Create Search bar to provide search functionality. (SwiftUI)
Create Details screen to show the details of the selected character.
Error handling throughout the application.
Unit Testing and UI Testing using XCTest framework.
Dark mode support.
Software And Technologies:
MacOS: Big Sur (11.0.1)
XCode: 12.3
Minimum iOS version: 14.0
Swift: 5
SwiftUI
Setup:
To run this project, open the BreakingBadSwiftUI.xcodeproj in XCode and you should be able to run it on the desired simulator without any changes(iPhone). You will need to configure your development team in the app target's "Signing & Capabilities" tab in order to run it on real device.

Approach:
On the launch of the app, fetch the character list from API endpoint, using URL Session data task.
Create the Character Json object from API response data using JSONDecoder.
Use SwiftUI to show the characters in a List view.
Allow user to select List item and show details of selected character in new view.
Allow user to search through the character list.
Show Errors using Alert view appropriately.
Protocols-Delegates: Used protocols for notifying the controller about data availability and errors if any.
Enum: Used with Tuple cases, generic type for Success and Failure conditions.
Extensions: Used for adding more functionality to class and modularizing the code.
Code Structure And Design Pattern:


View:
ContentView – root view for the app.
ListView – view responsible for showing the character list view.
CharacterCell - view responsible for creating the character list view cell.
CharacterImageView - view responsible for creating the character image view for each cell.
DetailsView – view responsible for showing the selected character details.
SearchBar – view responsible for showing the search bar to allow searching characters.
Model:
Character – model used for the character list json data.
ViewModel:
CharacterViewModel – viewModel responsible for managing the character list view data.
Networking:
NetworkManager - responsible for managing the network call to get the data from the API.
CharacterService - responsible for managing the API service for character list data.
ResponseDecoder - JSON decoder to parse and create the response model using JSONDecoder.
EndpointType - protocol to get the base url and path components.
CreditScoreAPI - enum to specify APIs available for character list.
Utility:
Constants – responsible for maintaining the constants used in app.
Types - contains enum types used in app to specify https method type and APIs result(success/failure).
Other:
CharacterServiceDelegate - protocol to notify when the data is available. (Notify Success or Failure)
Future Features And Improvements:
Write Unit Tests and UI test.
Add more animations.
