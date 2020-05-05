### Coding Standards  
* [[GNU Coding Standard|http://www.gnu.org/prep/standards/]]
* [[CERT C Coding Standard|https://www.securecoding.cert.org/confluence/display/seccode/CERT+C+Coding+Standard]]
* [[JPL Institutional Coding Standard|http://lars-lab.jpl.nasa.gov/JPL_Coding_Standard_C.pdf]]

### Static Code Checking

I'm using [[cppcheck|http://cppcheck.sourceforge.net/]] and [[Clang Static Analyzer|http://clang-analyzer.llvm.org/]].

```
cppcheck --enable=style ${SOURCES}
```
```
mkdir build-analyze
scan-build make
```

### Code Formatting

I'm using [[astyle|http://astyle.sourceforge.net/]] for formatting my code.

```
--style=otbs
--indent=spaces=2
--indent-switches
--break-blocks
--pad-oper
--align-pointer=middle
--keep-one-line-statements
--convert-tabs
```