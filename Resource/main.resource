
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
resource        ./data/setup.resource
Variables       ./libs/config_helper.py
resource        ./data/api/novoCadastroApi.robot
resource        ./data/web/advantageWeb.robot

### Page Objects ###
resource        ./pageObjects/home/homePage.resource
resource        ./pageObjects/login/loginPage.resource

### Keywords ###
resource        ./keywords/Config.robot
resource        ./keywords/utils.robot
resource        ./keywords/Api/novoCadastroApi.robot
resource        ./keywords/Web/advantageWeb.robot
resource        ./keywords/General.robot