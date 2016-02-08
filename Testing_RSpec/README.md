# Ruby: Testing 101 The Odin Project
* By: Ismaeel Ali 

## Test Driven Deployment
### Denial
* "I will write tests when I have time"
* Deploying without tests is flying blind
* A magical, better time in the future never comes
* The ideal time to write tests in NOW
* But where do I start?

### Anger
* What were they thinking? [Past devs]
* I cannot change past actions
* I can only change my own actions
* Adding tests to legacy code takes time
* To be testable, need to be refactored which is hard for live legacy
* Take small steps
* Any new code MUST have tests
* Call new tested code from legacy code
* Bugs in code must be reproduced with a test
* What should my code do? return a useful error
* Adding tests to existing code makes you learn the legacy code better

### Bargaining
* I write my code, then write my test
* Testing last leaves holes in test coverage
* Write failing test -> Make Test Pass -> Refactor [better workflow]
* "Never write new functionality without a failing test"

### Depression
* What's the point?
* Change will happen
* Two choices: add to legacy mess OR move forward and make it better from now on.
* Every line of tested code is reliable code
* Every line of untested code is unreliable code
* Do the right thing

### Acceptance
* Tests prevent breaking
* Tests are documentation
* Test Driven Code is..
  * Modular
  * Loosely Coupled
  * Small Methods
* Tests remove fear

### Love
* Test Drive an external API?
  * Mocks and Stubs
  * Stub: stand in for an object called by my code
  * My code -CALL API METHOD-> API Stub -> Return scripted responce to My Code
  * Mocks: Stubs with attitude:
  * if unexpected call, will fail test
* Testing is evolving