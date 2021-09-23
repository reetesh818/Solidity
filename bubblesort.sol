// Write a small contract to sort the following numbers using bubble sort:
// 10,30,5,3,20,4

pragma solidity ^0.8.3;

contract sorting {
    uint16[6] public num=[10,30,5,3,20,4];
    
    function sort() public {
        uint16 temp;
        for(uint16 i=0;i<5;i++){
            for(uint16 j=0;j<6-i-1;j++){
                if(num[j]>num[j+1]){
                    temp = num[j];
                    num[j] = num[j+1];
                    num[j+1] = temp;
                }
            }
        }

    }
}
