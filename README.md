# Flutter Demo 2.0

A better version of the Flutter Demo.

It features: 

- Better tests
- More organized structure.
    - Theming is now parameterized in a theme folder. All references to themes should go there.
- State management with the Provider package.
    - Provider is *one* option for state management. There are plenty of others, however, at any rate, data logic should not be included inside the widgets themselves but in separate classes.