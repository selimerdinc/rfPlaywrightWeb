*** Settings ***
Resource    ../po/radioButton.robot

*** Keywords ***
click radio button page
    radioButton.click radio button page

click yes button
    radioButton.click yes button

click impressive button
    radioButton.click impressive button

verify text when clicked radio button
    [Arguments]    ${expected_text}
    radioButton.verify text when clicked radio button     ${expected_text}