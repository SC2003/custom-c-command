<#__________Custom C Compiler Command/ Custom GCC Script__________#>
<#There are two methods to go about thing use one or both if u want things to go funny!#>
<#
name: Custom C Compiler Command

author: <SC2003>

version: 1.0

description: a custom script that automatically compile and display c programs.
this script turn few words required to compile the program to just two words.
original command: gcc -0 filename.exe filename.c && ./filename.exe
this script: c filename
just that simple.

@TODO:
- add support for c++.
- add directory support (like compiling files in a different directory).
- add support for compiling multiple files at once(if that possible).
- some more features.
#>

<#TESTED ON WINDOWS 10 WITH THE NEW&(best) POWERSHELL#>
function c($command) {
    
    Clear-Host; #clear screen.
   
    $exe = ".exe";  #assigning .exe file extension to $exe.
    
    $c = ".c"; #assigning .c file extension to $c.

    #$cpp = ".cpp"; #assigning .cpp file extension to $cpp. #COMMENTED CUZ NOT IMPLEMENTED YET.

    <#
    why assign the values? 
    because the code doesnt work without it.
    and i dont know the other way to do it YET!
    #>
    <#
    #UNCOMMENT if u want to use $run instaed of $command$exe.
    Remember to comment the $command$exe line below And Uncomment this.
    #> 

    #$run = . ./$command$exe; #THIS LINE


    #First Method: #COMMENT IF YOU WANT TO USE THE SECOND METHOD.

    gcc -o $command$exe $command$c; . ./$command$exe; #either use this 
                                        #$run;        #or this

    #Second Method: #UNCOMMENT IF YOU WANT TO USE IT.

    #cd $pwd ; if ($?) { gcc $command$c -o $command$exe }; if ($?) { . .\$command$exe }; #either use this
                                                           #if ($?) { $run };            #or this

}