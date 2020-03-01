# Flutter Demo Improved

A more robust version of the Flutter Demo.

It features: 

- Unit, widget and integration tests.
    - All derived from, but not *ipsis litteris* to [Flutter's Testing Cookbook](https://flutter.dev/docs/testing).
- Performance Profiling
    - It mostly follows the [Performance Profiling basic recipe](https://flutter.dev/docs/cookbook/testing/integration/profiling), but I've also added a performance reporter class as an example of a further step (I didn't create this class with TDD unfortunately.)
- Better organization of tests.
- More organized structure.
    - Theming is now parameterized in a theme folder. All references to themes should go there.
- State management with the Provider package.
    - Provider is *one* option for state management. There are plenty of others, however, at any rate, data logic should not be included inside the widgets themselves but in separate classes.
        - However, despite being one of the options, it was *the* recommended one by the Flutter team in the Google I/O'19's [Pragmatic State Management in Flutter](https://youtu.be/d_m5csmrf7I).
- CI with Travis.

## How to Run the Tests

- Unit and Widget Tests:
    ```bash
    flutter test
    ```
- Integration and Performance Profiling:
    ```bash
    flutter drive --target=test_driver/app.dart
    ```
    - Use `chrome://tracing` inside Chrome to analyze the performance results.