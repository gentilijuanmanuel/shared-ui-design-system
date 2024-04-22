//
//  FirstAppearModifier.swift
//
//
//  Created by Juan Manuel Gentili on 19/04/2024.
//

import SwiftUI

/// A `ViewModifier` for performing an action only the first time a view appears.
///
/// This modifier is useful for triggering functionality that only needs to happen once per view lifecycle,
/// such as initial data fetching or animations. It leverages the view's lifecycle events to perform a
/// specified action the first time it appears on screen and ensures the action is not repeated on
/// subsequent appearances.
///
/// Usage
/// ------
/// Attach `FirstAppearModifier` to any view by using the `.modifier` view modifier method, providing an
/// action to execute the first time the view appears:
///
/// ```swift
/// Text("Hello, World!")
///     .modifier(FirstAppearModifier {
///         print("View appeared for the first time!")
///     })
/// ```
///
/// Implementation Details
/// -----------------------
/// `FirstAppearModifier` uses an internal `@State` property to track whether the view has already appeared.
/// This state is initially set to `false` and is updated to `true` the first time the view's `onAppear`
/// event is triggered. Subsequent `onAppear` triggers do not affect the state or cause the action to
/// execute again, thus ensuring the action is performed exactly once.
///
/// - Parameters:
///     - `action`: A closure that executes when the view appears for the first time. This closure takes no
///     parameters and returns no value.
///
/// The modifier affects the view to which it is applied by using the `onAppear` modifier to trigger the
/// provided action.
///
/// See Also
/// -----------------------
/// - `onAppear(perform:)`: The underlying view modifier used to trigger actions when a view appears.
struct FirstAppearModifier: ViewModifier {
    /// The action to perform when the view appears for the first time.
    let action: () -> Void
    
    /// Tracks whether the view has already appeared to prevent the action from running more than once.
    @State private var hasAppeared = false

    /// The body of the `FirstAppearModifier` view modifier.
    ///
    /// This modifier uses the `onAppear` view lifecycle event to check if the action has been
    /// performed before. If not, it performs the action and marks the view as having appeared.
    ///
    /// - Parameter content: The content of the view that this modifier is attached to.
    /// - Returns: The modified view that triggers an action upon its first appearance.
    func body(content: Content) -> some View {
        content.onAppear {
            guard !hasAppeared else {
                return
            }

            hasAppeared = true
            action()
        }
    }
}
