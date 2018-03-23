*** Variables ***
${a}=  50
${b}  Hello
@{c}=  10  20  hello  hi
&{d}=  1=10  2=two  three=30

*** Test Cases ***
Testing variable types
        Log  ${a}
        Log  ${b}
        Log  @{c}[0]
        Log  @{c}[1]
        Log  &d[three]

*** Keywords ***
