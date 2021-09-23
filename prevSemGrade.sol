pragma solidity ^0.8.3;


contract prevSemGrade{
    uint16[5] private subject;
    uint16 public totalMarks;
    uint16 public percent;
    function getMarks(uint16 s1,uint16 index) public{
        if(index>=0 && index<=4)
        subject[index]=s1;
    }
    function calculate() public {
        for(uint16 count=0;count<5;count++){
            totalMarks = totalMarks + subject[count];
        }
        uint16 _totalMarks = 5;
        percent = (totalMarks /_totalMarks);
    }
    function getTotal() public view returns(uint16){
        return totalMarks;
    }
    function getPercent() public view returns(uint16){
        return percent;
    }
}
