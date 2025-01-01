# Intermittent Null Pointer Exception in ActionScript Timer Event Handler

This repository demonstrates an uncommon ActionScript bug involving an intermittent null pointer exception within a timer event handler.  The `myVariable` appears correctly initialized, yet it sporadically becomes null when `updateTimer` executes.

## Bug Description

The `updateTimer` function handles `TimerEvent` objects. It includes a null check for `myVariable`. However, despite what seems to be proper initialization,  `myVariable` inexplicably evaluates to `null` on some occasions. This leads to a null pointer exception when the code attempts to access `myVariable`'s properties or methods.

The root cause is likely related to asynchronous operations or unexpected event sequencing that's difficult to reproduce consistently. This example highlights the challenges of debugging this type of problem.  The solution offered utilizes additional logging to help pinpoint the exact circumstances leading to the null value, and potentially additional error handling.

## How to Reproduce

1. Clone this repository.
2. Open the `Bug_updateTimer.as` file in an ActionScript IDE (e.g., FlashDevelop).
3. Run the code.  The issue is not guaranteed to happen on every run, but with sufficient repetitions it is likely to manifest.

## Solution

The `Solution_updateTimer.as` file provides a possible solution that incorporates detailed logging to track the value of `myVariable` before and after relevant operations, potentially providing better debugging information to pinpoint the source of the issue.  Thorough examination of the timing and the relationship between any other asynchronous events is vital for pinpointing a true fix.