//
//  VStack+Extensions.swift
//  
//
//  Created by Juan Manuel Gentili on 19/04/2024.
//

import SwiftUI

extension VStack {
    /// Creates a vertical stack view with predefined spacing.
    ///
    /// Use this initializer to create a vertical stack (`VStack`) with standardized spacing defined
    /// by the `Spacing` enum.
    /// This provides a convenient way to ensure consistent spacing throughout your app's user interface.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews in this stack.
    ///   This parameter is optional and defaults to `.center`.
    ///   - spacing: The distance between adjacent subviews, as defined by the `Spacing` enum.
    ///   - content: A closure that returns the content of the stack.
    ///
    /// The `Spacing` value is applied as the vertical spacing between elements in the `VStack`.
    ///
    /// Usage
    /// ------
    /// ```swift
    /// VStack(spacing: .medium) {
    ///     Text("First Item")
    ///     Text("Second Item")
    /// }
    /// ```
    ///
    /// In this example, the `VStack` uses medium spacing between the text views.
    public init(
        alignment: HorizontalAlignment = .center,
        spacing: Spacing,
        @ViewBuilder content: () -> Content
    ) {
        self.init(
            alignment: alignment,
            spacing: spacing.rawValue,
            content: content
        )
    }
}
