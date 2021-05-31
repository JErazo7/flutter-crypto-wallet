
# flutter-crypto-wallet

Developed with 💙 by [Josue Erazo][profile_link] # 🏋️

[![License: MIT][license_badge]][license_link]

  

A multiplatform (Android, iOS, Web and macOS) crypto-wallet example created with Flutter and [CoinGecko API](https://www.coingecko.com/es).
  
 
---

  

## Getting Started 🚀


This project is developed under Clean Architecture. Based on the following scheme:
![enter image description here](https://resocoder.com/wp-content/uploads/2020/03/DDD-Flutter-Diagram-v3.svg)

  
  

To run the desired flavor either use the launch configuration in VSCode/Android Studio or use the following commands:





  

---

  

## Running Tests 🧪

  

To run all unit and widget tests use the following command:

  

```sh

$ flutter test --coverage --test-randomize-ordering-seed random

```

  

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

  

```sh

# Generate Coverage Report

$ genhtml coverage/lcov.info -o coverage/

  

# Open Coverage Report

$ open coverage/index.html

```
  

[license_link]:  https://opensource.org/licenses/MIT

[very_good_analysis_link]:  https://pub.dev/packages/very_good_analysis

[profile_link]:  https://www.linkedin.com/in/erazo-josue/
[license_badge]:  https://img.shields.io/badge/license-MIT-blue.svg