import XCTest

extension LoggerTests {
    static let __allTests = [
        ("testItDoentPrintTheDebugMessageIfIsSilent", testItDoentPrintTheDebugMessageIfIsSilent),
        ("testItDoentPrintTheErrorMessageIfIsSilent", testItDoentPrintTheErrorMessageIfIsSilent),
        ("testItDoentPrintTheInfoMessageIfIsSilent", testItDoentPrintTheInfoMessageIfIsSilent),
        ("testItDoentPrintTheWarningMessageIfIsSilent", testItDoentPrintTheWarningMessageIfIsSilent),
        ("testItDoesntPrintTheDebugMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode", testItDoesntPrintTheDebugMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode),
        ("testItDoesntPrintTheErrorMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode", testItDoesntPrintTheErrorMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode),
        ("testItDoesntPrintTheInfoMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode", testItDoesntPrintTheInfoMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode),
        ("testItDoesntPrintTheWarningMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode", testItDoesntPrintTheWarningMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode),
        ("testItPrintsTheDebugMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheDebugMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheDebugMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode", testItPrintsTheDebugMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode),
        ("testItPrintsTheDebugMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheDebugMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheErrorMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheErrorMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheErrorMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode", testItPrintsTheErrorMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode),
        ("testItPrintsTheErrorMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheErrorMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheInfoMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheInfoMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheInfoMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode", testItPrintsTheInfoMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode),
        ("testItPrintsTheInfoMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheInfoMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheWarningMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheWarningMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode),
        ("testItPrintsTheWarningMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode", testItPrintsTheWarningMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode),
        ("testItPrintsTheWarningMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode", testItPrintsTheWarningMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode),
    ]
}

#if !os(macOS)
public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(LoggerTests.__allTests),
    ]
}
#endif
