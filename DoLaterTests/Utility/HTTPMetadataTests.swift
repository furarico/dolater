//
//  HTTPMetadataTests.swift
//  DoLaterTests
//
//  Created by Kanta Oikawa on 12/11/24.
//

import Foundation
import Testing

@testable import DoLater

struct HTTPMetadataTests {
    @Test func testGetTitle() async throws {
        let url = URL(string: "https://developer.apple.com/documentation/swiftui")!
        let title = try await HTTPMetadata.getPageTitle(for: url)
        #expect(title == "SwiftUI | Apple Developer Documentation")
    }
}
