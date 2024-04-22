//
//  Spacing.swift
//
//
//  Created by Juan Manuel Gentili on 19/04/2024.
//

import Foundation

/// A set of standardized spacing values for consistent layout.
///
/// `Spacing` provides predefined spacing values that can be used throughout the app to ensure consistent
/// layout and design.
/// These values are defined in points (px).
///
/// Use these values for setting margins, paddings, and any other layout spacing needs.
///
/// Examples of usage:
///
/// ```swift
/// VStack(spacing: Spacing.medium) {
///     Text("Item 1")
///     Text("Item 2")
/// }
/// ```
///
/// ```swift
/// Text("Hello, World!")
///     .padding(.medium)
/// ```
public enum Spacing: CGFloat {
    /// No spacing.
    case zero = 0

    /// Extra small spacing of 4 points.
    case xSmall = 4

    /// Small spacing of 8 points.
    case small = 8

    /// Medium spacing of 16 points.
    case medium = 16

    /// Large spacing of 32 points.
    case large = 32

    /// Extra large spacing of 64 points.
    case extraLarge = 64
}
