*** Settings ***
Library  OperatingSystem


*** Variables ***
${failure}  ================================== FAILURES ===================================


*** Test Cases ***
Test Case 1
    ${result}=  Run Get Pytest  get_suite//test_get_requests.py
    Log  ${result}
    Should Not Contain  ${result}  ${failure}

*** Keywords ***
Run Get Pytest
    [Arguments]  ${my_file}
    ${output}  Run  pytest ${my_file}
    [Return]  ${output}
