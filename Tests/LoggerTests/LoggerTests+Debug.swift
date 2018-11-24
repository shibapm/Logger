extension LoggerTests {
    func testItPrintsTheDebugMessageIfTheMessageIsVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.debug(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenPrintsMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoesntPrintTheDebugMessageIfTheMessageIsVerboseAndTheLoggerIsNotInVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.debug(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItDoentPrintTheDebugMessageIfIsSilent() {
        givenALogger(isVerbose: true, isSilent: true)
        logger.debug(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: true)
        thenDoesntPrintMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheDebugMessageIfTheMessageIsNotVerboseAndTheLoggerIsNotVerboseMode() {
        givenALogger(isVerbose: false, isSilent: false)
        logger.debug(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
    
    func testItPrintsTheDebugMessageIfTheMessageIsNotVerboseAndTheLoggerIsInVerboseMode() {
        givenALogger(isVerbose: true, isSilent: false)
        logger.debug(testMessage, testMessage2, separator: testSeparator, terminator: testTerminator, isVerbose: false)
        thenPrintsMessage(testMessages.joined(separator: testSeparator), terminator: testTerminator)
    }
}
