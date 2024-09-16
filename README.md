# Random Card Game App - UIKit Swift Project

This is a simple card game app developed entirely in code using Xcode, Swift, and UIKit. The app displays random card images from a deck, and allows users to stop the card rotation with a "Stop" button, which changes to a "Reset" button to restart the card cycle. There is also a "Rules" button to display the game’s rules.

## Features

- **Random Card Display**: Upon launching, random cards from a predefined deck are displayed continuously until the "Stop" button is pressed.
- **Stop and Reset Button**: 
  - The "Stop" button halts the random rotation of cards.
  - Once the cards stop, the button text changes to "Reset", allowing the user to restart the card rotation.
- **Rules Button**: Displays the rules of the card game.
- **UIImage and Assets**: All card images are stored in the app's `Assets` folder and are dynamically displayed using `UIImageView`.
  
## Purpose of the Project

The main goals of this project are:

- **UIKit Components**: To practice working with `UIImageView`, `UIButton`, and other UIKit components in code.
- **Pure Code Interface**: The entire interface was built programmatically without using Storyboards or Interface Builder. This helped reinforce how to create and manage UI elements strictly through code.
- **Dynamic Image Handling**: Learn how to handle and display images dynamically from assets in a simple and interactive user interface.

## How It Works

1. **Random Card Rotation**: When the app is launched, it displays random cards continuously from a deck stored in the `Assets` folder.
2. **Stop and Reset**: Pressing the "Stop" button stops the rotation of cards, and the button changes to "Reset". Pressing "Reset" restarts the card rotation.
3. **Rules**: The "Rules" button opens a view or alert with the rules of the card game.
  
## Technologies Used

- **Xcode**: Developed using Xcode.
- **Swift**: Written entirely in Swift using UIKit components.
- **Programmatic UI**: All UI elements are created programmatically without using Storyboards or Interface Builder.

## Conclusion

This project is a simple demonstration of working with UIKit programmatically, focusing on dynamic content like changing images, button actions, and learning how to handle user interactions without relying on Storyboards. It’s a great starting point for learning how to build UI in code.
