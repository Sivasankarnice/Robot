*** Variables ***
#@{a}  ten  one  two  30  400

*** Test Cases ***
For Loop
        :FOR  ${i}  IN RANGE  10  20  +3
        \  Log  ${i}
        \  Log  ${i-5}
        \  ${k}   Evaluate  ${i} % 5
        \  Log  ${k}

For List Loop
        :FOR  ${i}  IN  @{a}
        \  Log  ${i}

        :FOR  ${i}  IN @{k.keys{}}
        \  Log  key  is  ${i}  and corresponding value is &{k}{${i}}