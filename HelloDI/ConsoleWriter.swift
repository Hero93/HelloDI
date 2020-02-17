//
//  ConsoleWriter.swift
//  HelloDI
//
//  Created by Luca LG. Gramaglia on 17/02/2020.
//  Copyright © 2020 lucagramaglia. All rights reserved.
//

import Foundation

public class ConsoleWriter: MessageWriter {
    func write(message: String) {
        print(message)
    }
}
