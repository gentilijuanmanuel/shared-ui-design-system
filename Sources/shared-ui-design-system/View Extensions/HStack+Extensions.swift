//
//  HStack+Extensions.swift
//
//
//  Created by Juan Manuel Gentili on 19/04/2024.
//

import SwiftUI

extension HStack {
    /// Creates a horizontal stack view with predefined spacing.
    ///
    /// Use this initializer to create a horizontal stack (`HStack`) with standardized spacing defined
    /// by the `Spacing` enum.
    /// This approach ensures consistent spacing throughout your app's user interface.
    ///
    /// - Parameters:
    ///   - alignment: The guide for aligning the subviews along the cross axis.
    ///   This parameter is optional and defaults to `.center`.
    ///   - spacing: The distance between adjacent subviews, as defined by the `Spacing` enum.
    ///   - content: A closure that returns the content of the stack.
    ///
    /// The `Spacing` value is applied as the horizontal spacing between elements in the `HStack`.
    ///
    /// Example of usage:
    ///
    /// ```swift
    /// HStack(spacing: .medium) {
    ///     Image(systemName: "star")
    ///     Text("Starred Item")
    /// }
    /// ```
    ///
    /// In this example, the `HStack` uses medium spacing between the image and the text.
    public init(
        alignment: VerticalAlignment = .center,
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
