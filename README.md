# Katacoda environment build scripts

Maintained by <matthew.richards@diffblue.com>

* ./projects - all of the O/S projects we allow inside a Katacoda scenario
* ./maven-dependencies - all of the maven dependencies required to run our Katacoda scenarios, copied to ~/.m2/

* ./buildscripts/&lt;scenario name&gt;/ - the scripts to build each scenario
* ./buildscripts/header.sh - the initial buildscript to setup dcover
* ./buildscripts/footer.sh - the final buildscript to clean up the environment before the user joins
