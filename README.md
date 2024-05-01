
# iOS Text Animation with SwiftUI

This repository contains a mesmerizing iOS text animation. It adds a touch of dynamism and elegance to your iOS app's user interface, making it stand out from the crowd.

## Features

- **Beautiful Animation:** Experience stunning text animations that captivate users' attention.
- **Snake Effect:** Watch as the text gracefully moves in a mesmerizing snake-like pattern.
- **Easy Integration:** Simple to integrate into your iOS app, with customizable options to suit your design needs.

 ## Demo
https://github.com/kintanpatel/TextAnimation/assets/13011589/1ce95f25-1f2f-4972-bb46-dc61b31cc081


## Installation

To integrate this animation into your iOS project, simply follow these steps:

1. Clone this repository.
2. Drag and drop the provided files into your Xcode project.
3. Customize the animation parameters to match your app's design.

```swift
import SwiftUI


struct ContentView: View {
    private let letters = Array("Hello, Kintan")
    @State private var dragAmount = CGSize.zero
    @State private var isEnable = false
    
    var body: some View {
        HStack(spacing : 0) {
            ForEach(0..<letters.count,id: \.self){ num in
                Text(String(letters[num]))
                    .padding(5)
                    .font(.title)
                    .foregroundColor(.white)
                    .background(isEnable ? .blue : .red)
                    .offset(dragAmount)
                    .animation(.default.delay(Double(num)/20), value: dragAmount)
            }
        }.gesture(DragGesture().onChanged{
            dragAmount = $0.translation
        }.onEnded({ _ in
            dragAmount = .zero
            isEnable.toggle()
        }))
        
    }
}
```
## Customization

You can customize various aspects of the animation, such as:

- Text color
- Font
- Animation duration
- Animation direction

Feel free to experiment with these parameters to achieve the desired visual effect for your app.

## Credits

This animation is inspired by various text animation techniques found in modern iOS app designs. Credits to the developers and designers who pioneered these creative approaches.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.




