# DataCleaningTool
A cooperative data cleaning standalone application.

## Table of contents ##
- [A statement of need](#A-statement-of-need)
  - [What is DataCleaningTool?](#What-is-DataCleaningTool?)
  - [Why is DataCleaningTool needed?](#Why-is-DataCleaningTool-needed?)
  - [Target audience](#Target-audience)
- [Installation instructions](#Installation-instructions)
  - [Prerequisites](#Prerequisites)
  - [App installation](#App-installation)
- [Example usage](#Example-usage)
  - [Reference documentation](#Reference-documentation)
  - [Simple example](#Simple-example)
- [Community guidelines](#Community-guidelines)
  - [Reporting issues](#Reporting-issues)
  - [Contributing code](#Contributing-code)
  - [Testing](#Testing)
- [Functionality](#Functionality)
- [Tests](#Tests)


## A statement of need ##

### What is DataCleaningTool? ###
DataCleaningTool is a user friendly, free and open source standalone application in order to support the task of data cleaning in a cooperative way. The tool can identify the potential data problems and report results such that the users can make informed decisions to clean data effectively. 

### Why is DataCleaningTool needed? ###
The primary ideas behind developing DataCleaningTool are the following.

1. **Time effectivity** - Data cleaning is a time daunting task to go through manually large number of datasets for identifying the errors. DataCleaningTool is an application for systematically examining data for errors and automatically cleaning them using algorithms.  

2. **Cooperativeness** - DataCleaningTool is not a black box which implies that it does not produce any result which cannot be easily understandable by the user. It motivates and illustrates its suggestions. However, the user is always in control who takes the final action at every stage of the data cleaning process.

3. **Addressing reasonable number of data problems which cause erroneous conclusion and failing algorithms** - DataCleaningTool aims to clean data by resolving inconsistencies, smoothing noisy data, dealing with outliers or imputing missing observations using model based imputation method.

### Target audience ###
DataCleaningTool should be of interest mainly to readers in the area of data science.

## Installation instructions ##

### Prerequisites ###
DataCleaningTool has been developed and tested in MATLAB Version: R2018b.

DataCleaningTool Standalone Desktop App requires the [Matlab Compiler Runtime (mcr) R2018b](https://se.mathworks.com/products/compiler/matlab-runtime.html) to be installed.

### Application installation ###
**Standalone Desktop App.** 
1. Download [Standalone Desktop App/for_redistribution.zip](https://github.com/devosmitachatterjee2018/DataCleaningTool/blob/main/Standalone%20Desktop%20App/for_redistribution.zip) and unzip it to a preferred location.

2. Run the executable file "DataCleaningTool.exe" and follow instructions. If not already present, the MATLAB Compiler Runtime (mcr) R2018b will be downloaded from the web and installed automatically.

3. Once installed, the app is added to the Start Menu in Windows.

4. Click the app icon to run the program.

**MATLAB App.** 
1. Download [MATLAB App/DataCleaningTool.mlappinstall](https://github.com/devosmitachatterjee2018/DataCleaningTool/tree/main/MATLAB%20App).

2. Add the app installer file "DataCleaningTool.mlappinstall" to the current working folder in MATLAB.

3. Double-click "DataCleaningTool.mlappinstall". 

4. A dialog box is opened. Click 'Install'. 

5. Once installed, the app is added to the MATLAB Toolstrip. Locate the installed app and select 'Add to favorites'.

6. Click the app icon to run the program.
 
**Functions.**
1. Download all the \*.m files from [DataCleaningTool/Functions](https://github.com/devosmitachatterjee2018/DataCleaningTool/tree/main/Functions). The folder contains a main file and ten dependent files.

2. Add all the \*.m files to the current working folder in MATLAB.

3. Run "DataCleaningTool.m".

## Example usage ##


### Reference documentation ###
To access the complete reference documentation, refer to [UserManual.pdf](https://github.com/devosmitachatterjee2018/DataCleaningTool/blob/main/UserManual.pdf).

### Simple example ###
A simple example is demonstrated with an exemplary dataset [demodata.csv](https://github.com/devosmitachatterjee2018/DataCleaningTool/blob/main/demodata.csv).

## Community guidelines ##

### Reporting issues ###
If you have any suggestions for feature additions or any problems with the software that you would like addressed with the development community, please submit an issue on the Issues tab of the project GitHub repository. You may want to search the existing issues before submitting, to avoid asking a question or requesting a feature that has already been discussed.

### Contributing code ###
If you are interested in modifying EUKulele, you may fork the project for your own use, as detailed in the MIT License we have adopted for the project. In order to contribute, please contact the developers via Arianna Krinos (akrinos (at) mit (dot) edu) after making the desired changes, after which a pull request may be submitted.

### Testing ###
If you have questions about how to use EUKulele, or would like to seek out collaborations related to this project, you may contact Arianna Krinos at akrinos (at) mit (dot) edu.

## Functionality ##

## Tests ##
