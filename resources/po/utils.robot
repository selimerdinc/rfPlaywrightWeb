*** Settings ***
Library    Browser
Library    DebugLibrary

*** Variables ***
${timeout}    30 seconds
${browser}    chromium
${url}    https://demoqa.com/text-box

*** Keywords ***
debugger
    debug

close the browser
    close browser

create browser
    new browser    ${browser}    headless=False
    set browser timeout    ${timeout}
    new page     about:blank
    go to    ${url}

fill the input
    [Arguments]    ${selector}    ${text}
    wait for elements state    ${selector}    visible
    fill text    ${selector}    ${text}

click
    [Arguments]    ${selector}
    wait for elements state    ${selector}    visible
    browser.click    ${selector}

verify text on attr
    [Arguments]    ${selector}    ${expected_text}
    wait for elements state    ${selector}    visible
    ${txt} =    Get Text    ${selector}
    Should Be Equal    ${txt}    ${expected_text}

press enter
    Press Keys  NONE  ENTER