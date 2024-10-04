;Filename: EXAM3.asm
;CS243 Lab Hands-on Exam No. 3
;First Semester SY 2024-2025
;Student Name: Seth Nathaniel G. Emia
;Date Finished: October 4, 2024
.model small
.stack 100h
.data

    head1 db "VOTER'S REGISTRATION FORM",13,10,'$'
    head2 db "CREATED BY: SETH NATHANIEL G. EMIA",13,10,"$"
    head3 db "Date: October 4, 2024$"

    summary db 13,10,10,'SUMMARY OF INFORMATION', 13, 10, 'Please verify if all entries are correct.', 13, 10, '$'
 
    newline db 13, 10, 10, '$'
    prompt3 db 'Vote wisely!$'
    prompt4 db 13,10, 'Thank you for registering. $'

    pleaseenter db 13,10,10,"Please enter the following data: ",13,10,"$"

    firstNameP db 13,10,"First Name: $"
    middleNameP db 13,10,"Middle Name: $"
    lastNameP db 13,10,"Family Name: $"
    genderP db 13,10,"Gender: $"

    bdayP db 13,10,'Birthday$'
    bdayMonthP db 13,10,' Month: $'
    bdayDayP db 13,10,' Day: $'
    bdayYearP db 13,10,' Year: $'
   
    addressP db 13,10,'Address$'
 
    houseP db 13,10,' House Number: $'
    streetP db 13,10,' Street: $'
    barangayP db 13,10,' Barangay: $'
    cityP db 13,10,' City: $'
    provinceP db 13,10,' Province: $'
 
    schoolNameP db 13,10,'  Name of School: $'
    schoolYearP db 13,10,'  Year Graduated: $'
 
    educationP db 13,10,'Educational Background$'
    elemP db 13,10,' Elementary$'
    juniorP db 13,10,' Junior High School$'
    seniorP db 13,10,' Senior High School$'
    collegeP db 13,10,' College$'
  
    firstNameInput db 50 dup('$')
    middleNameInput db 50 dup('$')
    lastNameInput db 50 dup('$')
    genderInput db 50 dup('$')
 
    bdayMonthInput db 50 dup('$')
    bdayDayInput db 50 dup('$')
    bdayYearInput db 50 dup('$')
 
    houseInput db 50 dup('$')
    streetInput db 50 dup('$')
    barangayInput db 50 dup('$')
    cityInput db 50 dup('$')
    provinceInput db 50 dup('$')
 
    elemName db 50 dup('$')
    elemYear db 50 dup('$')
    juniorName db 50 dup('$')
    juniorYear db 50 dup('$')
    seniorName db 50 dup('$')
    seniorYear db 50 dup('$')
    collegeName db 50 dup('$')
    collegeYear db 50 dup('$')





.code
start:
    mov ax,@data
    mov ds,ax
    
    ;---CLEAR SCREEN BY CHANGING VIDEO MODE
    mov al, 13h 
    mov ah, 0 
    int 10h
    
    mov al, 03h 
    mov ah, 0 
    int 10h

    ;DECREASE CHARACTER HEIGHT to 8 pixels [THIS MAKES THE CURSOR INVISIBLE CUZ OF SOME WEIRD THINGS WITH DECREASING PIXEL HEIGHT OF CHARACTER BUT OTHERWISE IT IS STILL FUNCTIONAL]
    mov ax,1112h
    int 10h

    mov ah, 09h
    mov bl, 5Fh
    mov cx, 25
    int 10h

    
    lea dx, head1
    call printString

    mov ah, 09h
    mov bl, 2Fh
    mov cx, 34
    int 10h

    lea dx, head2
    call printString

    mov ah, 09h
    mov bl, 1Fh
    mov cx, 21
    int 10h

    lea dx, head3
    call printString

    lea dx, pleaseenter
    call printString

    lea dx, firstNameP
    call printString

    lea dx, firstNameInput
    call inputString

    lea dx, middleNameP
    call printString

    lea dx, middleNameInput
    call inputString

    lea dx, lastNameP
    call printString

    lea dx, lastNameInput
    call inputString

    lea dx, genderP
    call printString

    lea dx, genderInput
    call inputString
;---birthday

    lea dx, bdayP
    call printString

    lea dx, bdayMonthP
    call printString

    lea dx, bdayMonthInput
    call inputString


    lea dx, bdayDayP
    call printString

    lea dx, bdayDayInput
    call inputString

    lea dx, bdayYearP
    call printString

    lea dx, bdayYearInput
    call inputString
;--Address
    lea dx, addressP
    call printString

    lea dx, houseP
    call printString

    lea dx, houseInput
    call inputString

    lea dx, streetP
    call printString

    lea dx, streetInput
    call inputString

    lea dx, barangayP
    call printString

    lea dx, barangayInput
    call inputString

    lea dx, cityP
    call printString

    lea dx, cityInput
    call inputString

    lea dx, provinceP
    call printString

    lea dx, provinceInput
    call inputString
;---------EDUCATIONAL BACKGROUND

    lea dx, educationP
    call printString
    
;------ELEM

    lea dx, elemP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, elemName
    call inputString

    lea dx, schoolYearP
    call printString
    lea dx, elemYear
    call inputString
;jhs
    lea dx, juniorP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, juniorName
    call inputString

    lea dx, schoolYearP
    call printString
    lea dx, juniorYear
    call inputString

;shs
    lea dx, seniorP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, seniorName
    call inputString

    lea dx, schoolYearP
    call printString
    lea dx, seniorYear
    call inputString

;college
    lea dx, collegeP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, collegeName
    call inputString

    lea dx, schoolYearP
    call printString
    lea dx, collegeYear
    call inputString

;SUMMARY--------------------------------OUTPUTS THE INPUTTED INFORMATION------------------------------------
    lea dx, summary
    call printString

    lea dx, firstNameP
    call printString
    lea dx, firstNameInput + 2
    call printString

    lea dx, middleNameP
    call printString
    lea dx, middleNameInput + 2
    call printString
    
    lea dx, lastNameP
    call printString
    lea dx, lastNameInput + 2
    call printString
    
    lea dx, genderP
    call printString
    lea dx, genderInput + 2
    call printString

;--BDAY

    lea dx, bdayP
    call printString

    lea dx, bdayMonthP
    call printString

    lea dx, bdayMonthInput + 2
    call printString


    lea dx, bdayDayP
    call printString

    lea dx, bdayDayInput + 2
    call printString

    lea dx, bdayYearP
    call printString

    lea dx, bdayYearInput + 2
    call printString
    

;--Address
    lea dx, addressP
    call printString

    lea dx, houseP
    call printString

    lea dx, houseInput + 2
    call printString

    lea dx, streetP
    call printString

    lea dx, streetInput + 2
    call printString

    lea dx, barangayP
    call printString

    lea dx, barangayInput + 2
    call printString

    lea dx, cityP
    call printString

    lea dx, cityInput + 2
    call printString

    lea dx, provinceP
    call printString

    lea dx, provinceInput + 2
    call printString
;---------EDUCATIONAL BACKGROUND

    lea dx, educationP
    call printString
    
;------ELEM

    lea dx, elemP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, elemName + 2
    call printString

    lea dx, schoolYearP
    call printString
    lea dx, elemYear + 2
    call printString
;jhs
    lea dx, juniorP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, juniorName + 2
    call printString

    lea dx, schoolYearP
    call printString
    lea dx, juniorYear + 2
    call printString

;shs
    lea dx, seniorP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, seniorName + 2
    call printString

    lea dx, schoolYearP
    call printString
    lea dx, seniorYear + 2
    call printString

;college
    lea dx, collegeP
    call printString
    
    lea dx, schoolNameP
    call printString
    lea dx, collegeName + 2
    call printString

    lea dx, schoolYearP
    call printString
    lea dx, collegeYear + 2
    call printString
;--END
    lea dx, newline
    call printString

    mov ah, 09h
    mov bl, 0ceh
    mov cx, 12
    int 10h

    lea dx, prompt3
    call printString

    lea dx, prompt4
    call printString

    call ENDPROGAM

inputString:
    mov ah, 0Ah
    int 21h
    ret
 
 
printString:
    mov ah, 09h
    int 21h
    ret

ENDPROGAM: 
    mov ah,4ch
    int 21h
end start