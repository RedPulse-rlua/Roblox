# Features

## Implemented Features

- Numerous new features have been added and we're still improving!
- Compilation-breaking issues have been fixed to ensure all projects work as intended.
- The entire source has been cleaned up for clarity and ease of use.
- Splash Screen and Copyright Dates updated.
- Reverse-engineered several C# libraries and executables using **[ILSpy](https://github.com/icsharpcode/ILSpy/releases)** to make the source accessible.

## Problems

    - Undo/Redo does not handle `Color3` properties accurately; they often revert to the nearest `BrickColor` value.
    - This can lead to inconsistencies, especially with `BodyColors`.

## Solution Status

TESTED ON VS2022 (WITH PROJECTS TARGETTING VS2012 - WINDOWS XP)
> Some of these projects are not included as they are broken

### Normal Solutions

| Solution              | Tested  | Able to Compile  |
| --------------------- | ------- | ---------------- |
| Android               | [ ] No  | UNTESTED         |
| App                   | [ ] No  | UNTESTED         |
| App.BulletPhysics     | [ ] No  | UNTESTED         |
| Base                  | [ ] No  | UNTESTED         |

### 3rd Party Solutions

### Rendering Solutions


## Todo

- Backport/Implement **[Hitius](https://mega.nz/file/DnxUTAgI#52pYMEJyRFMMXVMAU71GboVWYxaTCv25eWB4QHFma6M)**, **[Graphictoria](https://mega.nz/file/e2RU0YbT#tGVrpYqR4fv6z7a4QQcdqT0nbmgdssGm3wGFd9jCiHA)** and **[Economy Simulator](https://mega.nz/file/76AyxJzC#fuKcKHTK6YI5S8zLyelsB7PIt0fVVTsWu9KTrgvXk2E)** Features
  - [x] Color3uint8  
    - [x] Color3.fromRGB()  
  - [ ] R15 character support  
- [x] :Connect() and :Wait()
- [x] New Fonts
- [x] Move unrelated files out of the **content\fonts** folder
- [x] Support for newer mesh formats
- [ ] Add Cyrillic and non-Latin language support  
  - [ ] UTF/Unicode compatibility  
  - [ ] Improve profanity and swear word filter  
- [ ] Add or port new Lua version
- [ ] Support for newer place versions
- [ ] Add dark theme for Studio  
- [ ] Fix in-game recording issues
- [ ] Build all projects in the source using the latest Visual Studio version  
  - [ ] Ensure support for the latest C/C++ standards (C++17 or later)  
  - [ ] Enable 64-bit support across all applicable projects
