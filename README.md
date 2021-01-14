# DataCleaningTool
A cooperative data cleaning standalone application.
<img src="DataCleaningTool.png" width="600" height="500">

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
- [Software license](#Software-license)


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
Any feature request or issue can be submitted to the the [Issues](https://github.com/devosmitachatterjee2018/DataCleaningTool/issues) tab of the project GitHub repository. When reporting issues, the folowing should be included.
1. description of the problem and minimal example,

2. error message, and

3. MATLAB version and Operating System.

### Contributing code ###
To contribute fixes, feature additions or enhancements, a pull request can be created in the [Pull requests](https://github.com/devosmitachatterjee2018/DataCleaningTool/pulls) tab of the project GitHub repository. When contributing code, the folowing should be included.
1. description of the change,

2. check that all tests pass, and

3. include new tests to report the change.

### Seeking Support ###
If any support needed, the author can be contacted by e-mail <chatterjeedevosmita267@gmail.com>. 

## Tests ##
1. Download [Standalone Desktop App/for_testing.zip](https://github.com/devosmitachatterjee2018/DataCleaningTool/blob/main/Standalone%20Desktop%20App/for_testing.zip) and unzip it to a preferred location.

2. Run "DataCleaningTool.exe" for testing.

## Software license ##
DataCleaningTool is released under the [LICENSE](https://github.com/devosmitachatterjee2018/DataCleaningTool/blob/main/LICENSE) GNU General Public License v3.0.
