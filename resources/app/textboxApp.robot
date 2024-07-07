*** Settings ***
Resource    ../po/textbox.robot

*** Keywords ***
fill the username
    [Arguments]    ${text}
    textbox.fill the username    ${text}

fill the user email
    [Arguments]    ${text}
    textbox.fill the user email    ${text}

fill the current address
    [Arguments]    ${text}
    textbox.fill the current address    ${text}

fill the permanent address
    [Arguments]    ${text}
    textbox.fill the permanent address     ${text}

verify output name
    [Arguments]    ${text}
    textbox.verify output name    ${text}

verify output email
    [Arguments]    ${text}
    textbox.verify output email    ${text}

verify output current address
    [Arguments]    ${text}
    textbox.verify output current address    ${text}

verify output permanent address
    [Arguments]    ${text}
    textbox.verify output permanent address    ${text}

click submit button
    textbox.click submit button
