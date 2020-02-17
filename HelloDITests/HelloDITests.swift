//
//  HelloDITests.swift
//  HelloDITests
//
//  Created by Luca LG. Gramaglia on 17/02/2020.
//  Copyright © 2020 lucagramaglia. All rights reserved.
//

import XCTest
@testable import HelloDI

class HelloDITests: XCTestCase {

    func test_exclaimWillWriteCorrectMessageToMessagerWriterOnyOnce() {
        // Arrange
        let writer = MessageWriterSpy()
        let sut = Salutation(writer: writer)
        
        // Act
        sut.exclaim()
        
        // Assert
        XCTAssertEqual(writer.writtenMessages, ["Hello DI!"])
    }
    
    // This is a test double that captures the indirect output calls made to the other component by the SUT
    // for later verification by the test.
    
    private class MessageWriterSpy: MessageWriter {
        
        public var writtenMessages: [String] = []
        
        func write(message: String) {
            self.writtenMessages.append(message)
        }
    }
}
