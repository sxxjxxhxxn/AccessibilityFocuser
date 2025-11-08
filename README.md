# AccessibilityFocuser

**SwiftUI Accessibility Focus** Example<br /> - Passing Accessibility Focus **from parent view to child view**

## APIs

```swift
public func subscribeFocusEvent<Focus: FocusType>(_ subscriber: AccessibilityFocusState<Focus?>.Binding, for focus: Focus?) -> some View
public func sendFocusEvnet(_ focus: Focus?, delay: TimeInterval)
```

## License

AccessibilityFocuser is under MIT license. See the [LICENSE](LICENSE) file for more info.
