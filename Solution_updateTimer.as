function updateTimer(event:TimerEvent):void {
  trace("Entering updateTimer. myVariable: ", myVariable);
  // ... other code ...
  if (myVariable == null) {
    trace("myVariable is null!  Error at:", getStackTrace()); // Detailed stack trace
    // Handle the null case more gracefully, possibly using default values or alternative logic
    myVariable = new MyVariableClass(); // Or use a default value or do other error handling.
    trace("myVariable reset to a default value.");
  } else {
    // ... more code that uses myVariable ...
  }
  trace("Leaving updateTimer. myVariable: ", myVariable);
} 