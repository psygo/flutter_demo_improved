# Flutter Demo Improved

A more robust version of the Flutter Demo.

It features: 

- Better organization of tests.
- More organized structure.
    - Theming is now parameterized in a theme folder. All references to themes should go there.
- State management with the Provider package.
    - Provider is *one* option for state management. There are plenty of others, however, at any rate, data logic should not be included inside the widgets themselves but in separate classes.
        - However, despite being one of the options, it was *the* recommended one by the Flutter team in the Google I/O'19's [Pragmatic State Management in Flutter](https://youtu.be/d_m5csmrf7I).
- CI with Travis.