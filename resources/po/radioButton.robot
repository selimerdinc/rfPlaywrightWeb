*** Settings ***
Resource    utils.robot

*** Variables ***
${selector_radio_button_page}    xpath=//*[text()="Radio Button"]
${selector_yes_radio_button}    xpath=//label[@for="yesRadio"]
${selector_impressive_radio_button}   xpath=//label[@for="impressiveRadio"]
${selector_default_text}    xpath=//p[@class="mt-3"]
${selector_text_success}    xpath=//span[@class="text-success"]

*** Keywords ***
click radio button page
    utils.click    ${selector_radio_button_page}

click yes button
    utils.click    ${selector_yes_radio_button}

click impressive button
    utils.click  ${selector_impressive_radio_button}

verify text when clicked radio button
    [Arguments]    ${expected_text}
    utils.verify text on attr    ${selector_default_text}    You have selected ${expected_text}
    utils.verify text on attr    ${selector_text_success}     ${expected_text}
