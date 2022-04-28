
# Custom C Compiler Command

Custom Command to compile & run c program in the Windows Terminal.


## Installation

Download the c.ps1 file.

Add the following code in your Powershell Profile/Config file.

```powershell
#C_Script
$c_script = Join-Path $PSScriptRoot ".\custom\c.ps1"
. $c_script  | Invoke-Expression
```
Change the location inside:-
```txt
""
```
To your downloaded .ps1 file's location.

If you don't know the location of your Powershell Profile

Just type the following command in your terminal:-

```powershell
echo $PROFILE
```
And you'll see something like:-
```powershell
C:\Users\Yoo\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```
And you should be done with the Installation.

## Actual Use

To use the command write a C program in your current dir or change to a already written one.

Example C program: helloworld.c

```c
#include<stdio.h>
int main() {
    printf("Hello, World!");
    return 0;
}
```
Now to Compile and Run the code simple type:

```powershell
c helloworld
```
Like This:


## Screenshots
Command:
![App Screenshot](https://user-images.githubusercontent.com/46285019/165812518-9c917688-1bc8-4d55-91bb-fda94c4838e7.jpg)
Output:
![App Screenshot](https://user-images.githubusercontent.com/46285019/165812808-95f77507-f361-4ddf-b980-addf5dac7abd.png)

## Contributing

Contributions are always welcome!

See `c.ps1`|Source Code for ways to get started.




## 



