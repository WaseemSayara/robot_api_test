*** Settings ***
Library  OperatingSystem


*** Variables ***
${failure}  ================================== FAILURES ===================================

*** Test Cases ***
Test Case 1
    ${result}=  Run Patch Pytest  patch_suite//test_patch_requests.py
    Log  ${result}
    Should Not Contain  ${result}  ${failure}

*** Keywords ***
Run Patch Pytest
    [Arguments]  ${my_file}
    ${output}  Run  pytest ${my_file}
    [Return]  ${output}
