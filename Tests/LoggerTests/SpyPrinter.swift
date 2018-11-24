//
//  SpyPrinter.swift
//  LoggerTests
//
//  Created by Franco on 24/11/2018.
//

import TestSpy
@testable import Logger

final class SpyPrinter: Printing, TestSpy {
    enum Method: Equatable {
        case print(message: String, terminator: String)
    }
    
    var callstack = CallstackContainer<Method>()
    
    func print(_ message: String, terminator: String) {
        callstack.record(.print(message: message, terminator: terminator))
    }
}
