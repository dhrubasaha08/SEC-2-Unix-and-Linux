#/bin/bash

let index=100 #starting index after 100

echo "Enter the number of Students"
read n

#INPUT
echo "INPUT"

for ((i = 0; i < n; i++)); do
    index=$((index+1))
    echo "Enter first name of the student"
    read FN
    read -ra F_Name <<<$FN
    echo "Enter last name of the student"
    read LN
    read -ra L_Name <<<$LN
    echo "Enter the date of birth of the student(yyyy/mm/dd)"
    read dob
    read -ra DOB <<<$dob
    echo "Enter the admission level of the student(UG/PG/Res)"
    read level
    echo "Enter the stream of the student(Language/Social Science/Science/Agriculture)"
    read faculty
    echo "Enter the year of admission of the student"
    read year
    read -ra year_lst <<<$year

    let levelcode=00
    case $level in
    "UG")
        levelcode=01
        ;;
    "PG")
        levelcode=02
        ;;
    "Res")
        levelcode=03
        ;;
    esac
    read -ra levelcode_lst <<< $levelcode

    let facultycode=00
    case $faculty in
    "Language")
        facultycode=01
        ;;
    "Social Science")
        facultycode=02
        ;;
    "Science")
        facultycode=03
        ;;
    "Agriculture")
        facultycode=04
        ;;
    esac
    read -ra facultycode_lst <<< $facultycode

    en=$year$levelcode$facultycode$index
    read -ra enrolment <<< $en
done

#OUTPUT

echo "OUTPUT"
echo "Enrolment id | First Name | Last Name | Date of Birth"
for (( i=0; i<$n; i++ ))
  do
    echo ${enrolment[$i]} "|" ${F_Name[$i]} "|" ${L_Name[$i]} "|" ${DOB[$i]}
  done