*** Settings ***
Documentation    Suite description
Default Tags  d1


*** Test Cases ***
Test title1
        [Tags]  t1
        ${x}=  Convert to Binary  10
        Log  ${x}
Test title2
        [Documentation]     This is conversion to Octal
        ${x}=  Convert to octal  10
        Log  ${x}