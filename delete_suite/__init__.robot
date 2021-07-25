*** Settings ***
Library  OperatingSystem
Suite Setup  Print Message  Hello to post suite
Suite Teardown  Print Message  bye bye post suite


*** Keywords ***

Print Message
    [Arguments]  ${message}
    Log  ${message}
