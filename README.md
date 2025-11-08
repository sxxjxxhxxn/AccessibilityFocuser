# AccessibilityFocuser

**Subscriber - Publisher** example for SwiftUI Accessibility Focus

## APIs

```swift
public func subscribeFocusEvent<Focus: FocusType>(_ subscriber: AccessibilityFocusState<Focus?>.Binding, for focus: Focus?) -> some View
public func sendFocusEvnet(_ focus: Focus?, delay: TimeInterval)
```

## License

WeakMapTable is under MIT license. See the [LICENSE](LICENSE) file for more info.
