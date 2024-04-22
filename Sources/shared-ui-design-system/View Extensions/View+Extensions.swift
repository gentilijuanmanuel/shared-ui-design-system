//
//  View+Extensions.swift
//
//
//  Created by Juan Manuel Gentili on 19/04/2024.
//

import SwiftUI

extension View {
    /// Applies padding to the view using a predefined spacing.
    ///
    /// Use this method to apply uniform padding around the view using the specified `Spacing` value.
    /// The `Spacing` enum provides a set of predefined values that can be used to maintain consistency across the app.
    ///
    /// - Parameter spacing: A `Spacing` value that determines the amount of padding to apply.
    ///
    /// - Returns: A view that pads this view inside the resulting view by the amount you specify.
    ///
    /// Example of usage:
    ///
    /// ```swift
    /// Text("Hello, World!")
    ///     .padding(.medium)
    /// ```
    public func padding(_ spacing: Spacing) -> some View {
        padding(spacing.rawValue)
    }

    /// Applies a pill style to the view with specified font, color settings, and optional dimensions.
    ///
    /// This method modifies the view to have a pill-like appearance with rounded corners,
    /// a specific background color, and a foreground color. It also sets the font for any text within the view
    /// and optionally allows setting the height and corner radius of the pill.
    ///
    /// The pill style is commonly used for tags, badges, or small information blocks.
    ///
    /// - Parameters:
    ///   - font: The font to apply to the content of the view.
    ///   - backgroundColor: The background color of the pill.
    ///   - foregroundColor: The color of the content (e.g., text) of the pill.
    ///   - height: The height of the pill. Default value is 16.
    ///   - cornerRadius: The corner radius of the pill. Default value is 20.
    ///
    /// - Returns: A view modified with a pill appearance and specified color settings.
    ///
    /// Example of usage:
    ///
    /// ```swift
    /// Text("Pill Style")
    ///     .pillStyle(
    ///         font: .caption,
    ///         backgroundColor: .blue,
    ///         foregroundColor: .white,
    ///         height: 18,
    ///         cornerRadius: 25
    ///     )
    /// ```
    public func pillStyle(
        font: Font,
        backgroundColor: Color,
        foregroundColor: Color,
        height: CGFloat = 8,
        cornerRadius: CGFloat = 20
    ) -> some View {
        self
            .font(font)
            .frame(height: height)
            .padding(.small)
            .background(backgroundColor)
            .foregroundColor(foregroundColor)
            .cornerRadius(cornerRadius)
    }

    /// Attaches a modifier to the view that triggers an action only upon its first appearance.
    ///
    /// This method can be used to perform an action the first time a view appears on screen, but
    /// ignores subsequent appearances. It's particularly useful for initialization tasks that you
    /// only want to run once during the view's lifecycle.
    ///
    /// - Parameter action: The action to perform the first time the view appears.
    /// - Returns: A view that triggers the given action upon its first appearance.
    public func onFirstAppear(_ action: @escaping () -> Void) -> some View {
        modifier(FirstAppearModifier(action: action))
    }
}
