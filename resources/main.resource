
*** Settings ***

### BuiltIn libraries ####
Library         String
Library         Collections
Library         OperatingSystem
Library         DateTime
Library         Process
Library         RequestsLibrary
Library         BuiltIn
   
### External Librarys ###
Library         SeleniumLibrary    run_on_failure=NOTHING

### Data ###
Resource        ./data/setup.resource
Variables       ./libs/config_helper.py
Resource        ./data/api/novoCadastroApi.robot
Resource        ./data/web/advantageWeb.robot

### Page Objects ###
Resource        ./pageObjects/home/homePage.resource
Resource        ./pageObjects/login/loginPage.resource

### Keywords ###
Resource        ./keywords/Config.robot
Resource        ./keywords/utils.robot
Resource        ./keywords/Api/novoCadastroApi.robot
Resource        ./keywords/Web/advantageWeb.robot
Resource        ./keywords/General.robot