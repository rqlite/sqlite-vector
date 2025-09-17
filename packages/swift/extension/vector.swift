// vector.swift
// This file serves as a placeholder for the vector target.
// The actual SQLite extension is built using the Makefile through the build plugin.

import Foundation

/// Placeholder structure for vector
public struct vector {
    /// Returns the path to the built vector dylib inside the XCFramework
    public static var path: String {
        #if os(macOS)
        return "vector.xcframework/macos-arm64_x86_64/vector.framework/vector"
        #elseif targetEnvironment(simulator)
        return "vector.xcframework/ios-arm64_x86_64-simulator/vector.framework/vector"
        #else
        return "vector.xcframework/ios-arm64/vector.framework/vector"
        #endif
    }
}