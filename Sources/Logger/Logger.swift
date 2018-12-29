import Foundation

enum Colors: String {
    case `default` = "\u{001B}[0;0m"
    case red = "\u{001B}[31m"
    case green = "\u{001B}[0;32m"
    case yellow = "\u{001B}[33m"
}

// Logger
public struct Logger {
    // True if running in verbose mode, false otherwise
    public let isVerbose: Bool
    // True if running in silent mode, false otherwise
    public let isSilent: Bool
    private let printer: Printing
    
    public init(isVerbose: Bool = false, isSilent: Bool = false, printer: Printing = DefaultPrinter()) {
        self.isVerbose = isVerbose
        self.isSilent = isSilent
        self.printer = printer
    }
    
    // Sends a debug message to the Printer
    public func debug(_ items: Any..., separator: String = " ", terminator: String = "\n", isVerbose: Bool = true) {
        let message = items.joinedDescription(separator: separator)
        print(message, terminator: terminator, isVerbose: isVerbose)
    }
    
    // Sends an info message to the Printer
    public func logInfo(_ items: Any..., separator: String = " ", terminator: String = "\n", isVerbose: Bool = false) {
        let message = items.joinedDescription(separator: separator)
        print(message, terminator: terminator, isVerbose: isVerbose)
    }
    
    // Sends an warning message to the Printer
    public func logWarning(_ items: Any..., separator: String = " ", terminator: String = "\n", isVerbose: Bool = false) {
        let yellowWarning = Colors.yellow.rawValue + "WARNING:"
        let message = yellowWarning + " " + items.joinedDescription(separator: separator)
        print(message, terminator: terminator, isVerbose: isVerbose)
    }
    
    public func logSuccess(_ items: Any..., separator: String = " ", terminator: String = "\n", isVerbose: Bool = false) {
        let successSymbol = Colors.green.rawValue + "✔" + Colors.default.rawValue
        let message = successSymbol + " " + items.joinedDescription(separator: separator)
        print(message, terminator: terminator, isVerbose: isVerbose)
    }
    
    // Sends an error message to the Printer
    public func logError(_ items: Any..., separator: String = " ", terminator: String = "\n", isVerbose: Bool = false) {
        let redError = Colors.red.rawValue + "ERROR:"
        let message = redError + " " + items.joinedDescription(separator: separator)
        print(message, terminator: terminator, isVerbose: isVerbose)
    }
    
    private func print(_ message: String, terminator: String = "\n", isVerbose: Bool) {
        guard isSilent == false else {
            return
        }
        guard isVerbose == false || (isVerbose && self.isVerbose) else {
            return
        }
        printer.print(message, terminator: terminator)
    }
}

// Defines an object that can be used as printer for the Logger
public protocol Printing {
    func print(_ message: String, terminator: String)
}

// Logger's default printer
public struct DefaultPrinter: Printing {
    public init() {}
    
    public func print(_ message: String, terminator: String) {
        Swift.print(message, terminator: terminator)
        Swift.print(Colors.default.rawValue, terminator: "")
    }
}

fileprivate extension Sequence {
    fileprivate func joinedDescription(separator: String) -> String {
        return map { "\($0)" }.joined(separator: separator)
    }
}
