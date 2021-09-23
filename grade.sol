pragma solidity ^0.8.3;

contract Grade {
    uint16 private totalMarks;
    uint16 private noofSubjects;
    uint16 private percent;
    string private grade;
    
    function input(uint16 _totalMarks , uint16 _noofSubjects) public{
        totalMarks = _totalMarks;
        noofSubjects = _noofSubjects;
        
    }
    
    function calPercent() public {
        percent = totalMarks/noofSubjects;
    }

    function calculateGrade() public {
        if(percent >=0 && percent <= 40)
        grade = 'E';
        else if(percent > 40 && percent <= 50)
        grade = 'D';
        else if(percent > 50  && percent <= 60)
        grade = 'C';
        else if(percent > 60 && percent <= 75)
        grade = 'B';
        else if(percent > 75 && percent <= 85)
        grade = 'A';
        else 
        grade = 'A+';
    }
    
    function getGrade() public view returns (string memory){
        return grade;
    }
}
