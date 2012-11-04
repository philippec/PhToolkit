PhToolkit: Useful functions by Philippe Casgrain
================================================

Summary
-------

PhToolkit is a set of categories that I wrote for my own use and thought might be useful to others.

They come with unit tests so you can be assured of their correctness.

* NSDateAdditions: compare NSDates using days as the cut-off, so that two times in the same day
  are considered equal dates.

* NSBundleAdditions: Easy full path to resources or documents

* TestDetector: detects if Unit Tests are running; useful if your application does something
  (such as pinging a server) that you don't want it to do when running tests.
