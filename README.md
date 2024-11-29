# Flutter Widget Testing

This repository contains Flutter widget tests that demonstrate how to test different aspects of Flutter applications, including API data fetching, animations, and simple UI interactions.

## Tests Included

### 1. **API Widget Test**
This test demonstrates how to test a widget that fetches and displays data from an API. The test simulates fetching a list of users, displays a loading spinner while data is loading, and then verifies that the users' names and emails are displayed in a `ListView`.

**Test file**: `api_widget_test_app/test/home_screen_test.dart`

### 2. **Animation Widget Test**
This test demonstrates how to test animations in Flutter. It tests a container whose size, border radius, and color animate over time. The test verifies the initial state, and then checks the state after the animation completes.

**Test file**: `animation_app_widget_test/test/animation_screen_test.dart`

### 3. **Basic Counter Widget Test**
This test demonstrates a simple counter app where the counter increments when a button is clicked. It verifies that the counter starts at 0, and after tapping the increment button, the counter value updates to 1.

**Test file**: `normal_app_widget_test/test/home_page_test.dart`

