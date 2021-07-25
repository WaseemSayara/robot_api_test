*** Settings ***
Library  OperatingSystem


*** Variables ***
${failure}  ================================== FAILURES ===================================

*** Test Cases ***
Test Case 1
    ${result}=  Run Delete Pytest  delete_suite//test_delete_requests.py
    Log  ${result}
    Should Not Contain  ${result}  ${failure}

*** Keywords ***
Run Delete Pytest
    [Arguments]  ${my_file}
    ${output}  Run  pytest ${my_file}
    [Return]  ${output}
