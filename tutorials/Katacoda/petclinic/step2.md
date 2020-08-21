## TASK

Go inside the folder of Spring-Petclinic project:

`cd sprint-petclinic`{{execute}}

To speed things up we have already compiled Spring-Petclinic to generate the Java bytecode which Diffblue Cover analyses along with the Java source files to generate tests.

Now that we have the Java bytecode we can go ahead and use Cover to automatically generate the unit tests, please run:

`dcover create`{{execute}}
