# flutter_riverpod_clean_architecture

Flutter project for implementing Clean Architecture with Riverpod and [JSONPlaceholder](https://jsonplaceholder.typicode.com/) 

### Clean Architecture
![image](https://github.com/ParrottKim/flutter_riverpod_clean_architecture/assets/83802425/3540b26f-150e-4821-be91-68089f16b3ff)
Each layer can be operated independently to improve the readability, maintenance, and quality of the code.

![image](https://github.com/ParrottKim/flutter_riverpod_clean_architecture/assets/83802425/1f3c7e33-e7ed-4fa8-8cda-7718bb30df31)
![image](https://github.com/ParrottKim/flutter_riverpod_clean_architecture/assets/83802425/8b4f841b-facf-41df-b513-088d715c821e)

For example, change of the Presentation (UI) layer is not affected to Domain Layer. The Domain layer don't need to know which UI is pointing itself. The other way, when the Domain layer has changed, the UI could changed because the Presentation layer has Directional Dependency to the Domain layer.

### Project Structrue
```
/lib
├── /src
│   ├── /data
│   │   ├── /model
│   │   ├── /repository
│   │   └── /source
│   ├── /domain
│   │   ├── /entity
│   │   ├── /repository
│   │   └── /usecase
│   └── /presentation
│       ├── /controller
│       ├── /page
│       └── app.dart
└── main.dart
```
**1. Data Layer**

It is responsible for a boundary between the application and external sources, such as the Internet and databases. Import data from external sources and convert it to the format used by the Domain layer.
  - **Model** (lib/src/data/model): It is used to structure data obtained from external sources. Contains extension methods for converting data into a model.
  - **Data Source** (lib/src/data/source): It is responsible for fetching data from an external source, in this example a REST API.
  - **Repository Implementation** (lib/src/data/repository): This is the repository implementation part of the Domain layer. It is responsible for actually fetching data from the data source and delivering it to the Domain layer.

**2. Domain Layer**

It is a core part of the application. It contains business logic and functions independently of outer layers.
  - **Entity** (lib/src/domain/entity): It represents a refined data structure used in business logic.
  - **Repository Abstraction** (lib/src/domain/repository): This is a repository abstraction part to separate the Data layer and Domain layer. Even if the repository implementation part of the Data layer is modified, the Domain layer does not know about it, maintaining Directional Dependency.
  - **Use Case** (lib/src/domain/usecase): Contains core business logic and coordinates data flow. It receives and processes the required data from the Data layer.

**3. Presentation (UI) Layer**

This layer is responsible for the UI and interacts directly with the user. It manages the state of the application and is responsible for page navigation, data display, UI updates, etc.
  - **State** (lib/src/presentation/controller): It indicates the status of the application. It contains data and information needed to display the UI.
  - **Controller** (lib/src/presentation/controller): It manages the state of the application and processes data from the Domain layer to display it in the Presentation layer.
  - **UI** (lib/src/presentation/page): This is the part that is actually displayed on the user's screen. It handles application state or user interaction.

### Why do we need Interfaces?
![image](https://github.com/ParrottKim/flutter_riverpod_clean_architecture/assets/83802425/579033c2-cfca-4e34-9d78-596c04d62a96)
If the Domain layer approach to the Data layer directly, it against Directional Dependency rule.
In this situation, the Repository Interface is implemented in the domain layer, and the dependency inversion principle is followed, which allows communication even if the use case does not know about the data layer, as the use case relies on the repository interface.
