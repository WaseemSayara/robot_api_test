*** Settings ***
Library  OperatingSystem
Suite Setup  Print Message  Hello to get suite
Suite Teardown  Print Message  bye bye get suite


*** Keywords ***

Print Message
    [Arguments]  ${message}
    Log  ${message}
