*** Settings ***
Resource    utils.robot

*** Variables ***
${selector_username_field}    xpath=//input[@id='userName']
${selector_user_email_field}    xpath=//input[@id='userEmail']
${selector_current_address_field}    xpath=//textarea[@id='currentAddress']
${selector_permanent_address_field}    xpath=//textarea[@id='permanentAddress']
${selector_name}    xpath=//p[@id='name']
${selector_email}    xpath=//p[@id='email']
${selector_current_address}    xpath=//p[@id='currentAddress']
${selector_permanent_address}    xpath=//p[@id='permanentAddress']
${selector_button}    xpath=//button[@id="submit"]

*** Keywords ***
fill the username
    [Arguments]    ${text}
    utils.fill the input    ${selector_username_field}    ${text}

fill the user email
    [Arguments]    ${text}
    utils.fill the input    ${selector_user_email_field}    ${text}

fill the current address
    [Arguments]    ${text}
    utils.fill the input    ${selector_current_address_field}    ${text}

fill the permanent address
    [Arguments]    ${text}
    utils.fill the input    ${selector_permanent_address_field}    ${text}

verify output name
    [Arguments]    ${text}
    utils.verify text on attr   ${selector_name}    ${text}

verify output email
    [Arguments]    ${text}
    utils.verify text on attr   ${selector_email}    ${text}

verify output current address
    [Arguments]    ${text}
    utils.verify text on attr   ${selector_current_address}    ${text}

verify output permanent address
    [Arguments]    ${text}
    utils.verify text on attr   ${selector_permanent_address}    ${text}

click submit button
    utils.click  ${selector_button}
