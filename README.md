# Unhandled Exception in Asynchronous Dart Code
This example demonstrates a common error in Dart: insufficient error handling in asynchronous operations using `Future` and `async`/`await`.  The original code catches any `Exception`, prints a generic message, and does nothing else. This makes debugging difficult and could lead to unexpected application behavior or crashes.
The solution provides improved error handling with more specific exception handling and better feedback to the user.  It demonstrates how to catch specific exceptions and handle them appropriately, providing meaningful error messages or retrying operations as needed.
## How to Run
1. Save the code in `bug.dart` and `bugSolution.dart`.
2. Execute from the command line using `dart bug.dart` and `dart bugSolution.dart`.
