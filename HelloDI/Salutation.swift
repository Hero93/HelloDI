//
//  Salutation.swift
//  HelloDI
//
//  Created by Luca LG. Gramaglia on 17/02/2020.
//  Copyright © 2020 lucagramaglia. All rights reserved.
//

import Foundation

public class Salutation {
    private let writer: MessageWriter
    
    init(writer: MessageWriter) {
        // This is a Constructor Injection.
        // Tt's the act of defining the list of required dependencies as parameters in the constructor.
        self.writer = writer
    }
    
    public func exclaim() {
        writer.write(message: "Hello DI!")
    }
}
