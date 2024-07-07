*** Settings ***
Resource    ../resources/app/utilsApp.robot
Resource    ../resources/app/textboxApp.robot
Test Setup    utilsApp.create browser
Test Teardown    utilsApp.close the browser

*** Test Cases ***
verify textbox with valid value
    textboxApp.fill the username    ${name}
    textboxApp.fill the user email    ${email}
    textboxApp.fill the current address    ${currentAddress}
    textboxApp.fill the permanent address  ${permananetAddress}
    textboxApp.click submit button
    textboxApp.verify output name    Name:${name}
    textboxApp.verify output email    Email:${email}
    textboxApp.verify output current address    Current Address :${currentAddress}
    textboxApp.verify output permanent address    Permananet Address :${permananetAddress}