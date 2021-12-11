// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    uint256 public taskCount = 0;

    //task structure
    struct Task {
        uint256 id;
        string content;
        bool completed;
    }

    //array of tasks
    mapping(uint256 => Task) public tasks;

    constructor() public {
        createTask("Checkout dappuniversitty.com");
    }

    //create a new task
    function createTask(string memory _content) public {
        taskCount++;
        //put the new task in the array using the taskCount as the key
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
