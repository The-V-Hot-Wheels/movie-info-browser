//
//  MovieServiceTests.swift
//  MovieInfoBrowserTests
//
//  Created by Alonso del Arte on 5/10/24.
//

import XCTest

final class MovieServiceTests: XCTestCase {
    
    @MainActor func testStripOutWrapper() {
        let numberOfResults = Int.random(in: 4 ... 20)
        let begin = "{\"Search\":["
        let empties = String(repeating: "{}", count: numberOfResults)
        let nearEnd = "],\"totalResults\":\"\(numberOfResults)"
        let end = "\",\"Response\":\"True\"}"
        let example = "\(begin)\(empties)\(nearEnd)\(end)"
        let data = example.data(using: .utf8)!
        let expected = "[\(empties)]".data(using: .utf8)
        let actual: Data = MovieService.stripOutWrapper(data)
        XCTAssertEqual(expected, actual)
    }

}
