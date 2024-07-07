*** Settings ***
Resource    ../resources/app/utilsApp.robot
Resource    ../resources/app/radioButtonApp.robot
Test Setup    utilsApp.create browser
Test Teardown    utilsApp.close the browser

*** Test Cases ***
verify radio button
    radioButtonApp.click radio button page
    radioButtonApp.click yes button
    radioButtonApp.verify text when clicked radio button    Yes
    radioButtonApp.click impressive button
    radioButtonApp.verify text when clicked radio button    Impressive
