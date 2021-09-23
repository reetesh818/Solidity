// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Loop {
    uint public i;
    uint  public j;
    function loop() public {
        // for loop
        
        for ( i = 0; i < 10; i++) {
            if (i == 3) {
                // Skip to next iteration with continue
                continue;
            }
            if (i == 5) {
                // Exit loop with break
                break;
            }
        }

        // while loop
        
        while (j < 10) {
            j++;
        }
    }
}
