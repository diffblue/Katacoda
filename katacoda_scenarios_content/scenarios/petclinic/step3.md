## Task

Cover has automatically generated 54 tests. Using `mvn test` we can see that all of the automatically generated tests pass; using the `jacoco:report` option will calculate the new test coverage.
Run the following command:

`mvn test jacoco:report`{{execute}}

As can be seen all of the automatically generated tests pass. The JaCoCo report shows us the coverage; this can be summarised into a single line coverage percentage by parsing the report