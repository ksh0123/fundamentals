// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract CALCULATOR {

    function add(uint _a, uint _b) public pure returns (uint){
        return _a + _b;
    }

    function subtract(uint _a, uint _b) public pure returns (uint){
        return _a - _b;
    }

    function multiply(uint _a, uint _b) public pure returns (uint){
        return _a * _b;
    }

    function divide(uint _a, uint _b) public pure returns (uint){
        return _a / _b;
    }

    function square(uint _a) public pure returns (uint){
        return _a * _a;
    }

}

contract CALCULATOR2 {

    function add(uint _a, uint _b) public pure returns (uint){
        return _a + _b;
    }

    function subtract(uint _a, uint _b) public pure returns (uint){
        return _a - _b;
    }

    function multiply(uint _a, uint _b) public pure returns (uint){
        return _a * _b;
    }

    function divide(uint _a, uint _b) public pure returns (uint){
        return _a / _b;
    }
}


contract CALCULATOR3 {

    function square(uint _a) public pure returns (uint){
        return _a * _a;
    }

    function cube(uint _a) public pure returns (uint){
        return _a * _a * _a;
    }

}


contract STUDENTS {
    struct Student {
        string name;
        uint number;
        string[] classes;
    }

    Student[] students;
}


contract POWER {
    function power(uint _a) public pure returns (uint) {
        if(_a > 0 && _a < 4){
            return _a * _a;
        } else if (_a > 3 && _a <7){
            return _a * 2;
        } else if (_a > 6 && _a<10) {
            return _a % 3;
        } else {
            return 0;
        }
    }
}
    

contract ARRAY {
    uint[] numbers;

    function forLoop() public {
        for(uint i = 0; i < 10; i++){
            numbers.push(i);
        }
    }

    function getLoop() public view returns (uint[] memory) {
        return numbers;
    }
}


contract ARRAY2 {
    uint[] numbers;

    function forLoop1() public {
        for(uint i = 0; i < 6; i++){
            numbers.push(i);
        }
    }

    function forLoop2() public view returns (uint) {
        uint total = 0;
        for(uint i = 0; i < numbers.length; i++){
            total += numbers[i];
        }
        return total;
    }

    function getLoop() public view returns (uint[] memory) {
        return numbers;
    }
}


contract CHARACTER {

    function returnCharacter(uint _a) public pure returns (string memory) {
        if (_a > 0 && _a < 11){
            return "A";
        } else if (_a >10 && _a <21){
            return "B";
        } else if (_a > 20 && _a <31){
            return "C";
        } else {
            return "null";
        }
    }

}

    
contract BYTES {
    
    function toBytes(string memory _a) public pure returns (bytes memory) {
        bytes memory result = bytes(_a);
        return result;
    }
}


contract ARRAY3 {
    uint[] numbers;

    function add(uint _a) public {
        numbers.push(_a);
    }

    function pop() public {
        numbers.pop();
    }

    function get(uint _n) public view returns (uint) {
        return numbers[_n-1];
    }
}
