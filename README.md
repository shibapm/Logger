# Logger

Really lightweight logger for your CLI app

### Installing

Use SPM to install logger

```swift
let package = Package(
    name: "danger-swift",
    ...
    dependencies: [
      .package(url: "https://github.com/f-meloni/Logger", .branch("master")),
    ],
    ...
)
```

### Use Logger

Logger offers you different functions dipending on the type of log you want to use.

Some examples:

```swift
let logger = Logger()

// prints:
// Message 1 Message 2
logger.debug("Message 1", "Message 2")

// prints:
// Message 1 
// Message 2
logger.logInfo("Message 1", "Message 2", separator: "\n")

// prints: 
// WARNING: WarningMessage!
logger.logWarning("WarningMessage", terminator: "!")

// prints:
// ERROR: ErrorMessage
logger.logError("ErrorMessage")
```
