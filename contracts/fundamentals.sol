// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

// 1. 더하기, 빼기, 곱하기, 나누기 그리고 제곱을 반환받는 계산기를 만드세요
contract CALCULATOR {
    function add(uint _a, uint _b) public pure returns (uint){
        return _a + _b;
    }

    function subtract1(uint _a, uint _b) public pure returns (uint){
        return _a - _b;
    }

    function subtract2(int _a, int _b) public pure returns (int){
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

// 2. 2개의 Input값을 가지고 1개의 output값을 가지는 4개의 함수를 만드시오. 각각의 함수는 더하기, 빼기, 곱하기, 나누기(몫)를 실행합니다.
contract CALCULATOR2 {
    function add(uint _a, uint _b) public pure returns (uint){
        return _a + _b;
    }

    function subtract1(uint _a, uint _b) public pure returns (uint){
        return _a - _b;
    }

    function subtract2(int _a, int _b) public pure returns (int){
        return _a - _b;
    }

    function multiply(uint _a, uint _b) public pure returns (uint){
        return _a * _b;
    }

    function divide(uint _a, uint _b) public pure returns (uint){
        return _a / _b;
    }
}

// 3. 1개의 Input값을 가지고 1개의 output값을 가지는 2개의 함수를 만드시오. 각각의 함수는 제곱, 세제곱을 반환합니다.
contract CALCULATOR3 {
    function square(uint _a) public pure returns (uint){
        return _a * _a;
        // return _a ** 2;
    }

    function cube(uint _a) public pure returns (uint){
        return _a * _a * _a;
        // return _a ** 3;
    }

}
// 4. 이름(string), 번호(uint), 듣는 수업 목록(string[])을 담은 student라는 구조체를 만들고 그 구조체들을 관리할 수 있는 array, students를 선언하세요.
contract STUDENTS {
    struct Student {
        string name;
        uint number;
        string[] classes;
    }

    Student[] students;
}

// 5. 아래의 함수를 만드세요
//     1~3을 입력하면 입력한 수의 제곱을 반환받습니다.
//     4~6을 입력하면 입력한 수의 2배를 반환받습니다.
//     7~9를 입력하면 입력한 수를 3으로 나눈 나머지를 반환받습니다.
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
    
// 6. 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 9까지 자동으로 채우는 함수를 구현하세요.(for 문)
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

// 7. 숫자만 들어갈 수 있는 array numbers를 만들고 그 array안에 0부터 5까지 자동으로 채우는 함수와 array안의 모든 숫자를 더한 값을 반환하는 함수를 각각 구현하세요.(for 문)
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

// 8. 아래의 함수를 만드세요.
//     1~10을 입력하면 “A” 반환받습니다.
//     11~20을 입력하면 “B” 반환받습니다.
//     21~30을 입력하면 “C” 반환받습니다.
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

// 9. 문자형을 입력하면 bytes 형으로 변환하여 반환하는 함수를 구현하세요.
contract BYTES {
    function toBytes(string memory _a) public pure returns (bytes memory) {
        // bytes memory result = bytes(_a);
        // return result;
        return bytes(_a);
    }
}

// 10. 숫자만 들어가는 array numbers를 선언하고 숫자를 넣고(push), 빼고(pop), 특정 n번째 요소의 값을 볼 수 있는(get)함수를 구현하세요.
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

// 11. uint 형이 들어가는 array를 선언하고, 짝수만 들어갈 수 있게 걸러주는 함수를 구현하세요.
contract ARRAY4 {
    uint[] evens;

    function addEvensOnly(uint _n) public {
        if(_n % 2 == 0){
            evens.push(_n);
        } else {
            return;
        }
    }
}

// 12. 숫자 3개를 더해주는 함수, 곱해주는 함수 그리고 순서에 따라서 a*b+c를 반환해주는 함수 3개를 각각 구현하세요.
contract ADDMULTIPLY {
    function AddThree1(uint _a, uint _b, uint _c) public pure returns (uint){
        return _a + _b + _c;
    }

    function AddThree2(int _a, int _b, int _c) public pure returns (int){
        return _a + _b + _c;
    }

    function MultiplyThree1(uint _a, uint _b, uint _c) public pure returns (uint){
        return _a * _b * _c;
    }

    function MultiplyThree2(int _a, int _b, int _c) public pure returns (int){
        return _a * _b * _c;
    }

    function MultiplyAndAdd1(uint _a, uint _b, uint _c) public pure returns (uint){
        return _a * _b + _c;
    }

    function MultiplyAndAdd2(int _a, int _b, int _c) public pure returns (int){
        return _a * _b + _c;
    }
}

// 13. 3의 배수라면 “A”를, 나머지가 1이 있다면 “B”를, 나머지가 2가 있다면 “C”를 반환하는 함수를 구현하세요.
contract DIVIDE {
    function CheckQuotient(uint _n) public pure returns (string memory){
        if(_n % 3 == 0){
            return "A";
        } else if (_n % 3 == 1){
            return "B";
        } else if (_n % 2 == 2){
            return "C";
        } else {
            return "";
        }
    }
}

// 14. 학번, 이름, 듣는 수험 목록을 포함한 학생 구조체를 선언하고 학생들을 관리할 수 있는 array를 구현하세요.
// array에 학생을 넣는 함수도 구현하는데 학생들의 학번은 1번부터 순서대로 2,3,4,5 자동 순차적으로 증가하는 기능도 같이 구현하세요.
contract STUDENTS2 {
    struct Student{
        uint number;
        string name;
        string[] classes;
    }

    uint index;

    Student[] class;

    function addStudent(string memory _name, string[] memory _classes) public {
        // index++;
        // class.push(Student(index, _name, _classes));
        class.push(Student(class.length+1, _name, _classes));
    }

    function getClass() public view returns (Student[] memory){
        return class;
    }
}

// 15. 배열 A를 선언하고 해당 배열에 0부터 n까지 자동으로 넣는 함수를 구현하세요. 
contract ARRAY5 {
    uint[] A;

    function AddnNumbers(uint _n) public {
        uint i;
        // delete a assigns the initial value for the type to a
        delete A;
        for(i = 0; i <= _n; i++){
            A.push(i);
        }
    }

    function getArray() public view returns (uint[] memory){
        return A;
    }
}

// 16. 숫자들만 들어갈 수 있는 array를 선언하고 해당 array에 숫자를 넣는 함수도 구현하세요.
// 또 array안의 모든 숫자의 합을 더하는 함수를 구현하세요.
contract ARRAY6 {
    uint[] numbers;

    function addNumber(uint _n) public {
        numbers.push(_n);
    }

    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }

    function getTotal() public view returns (uint){
        uint sum;
        for(uint i = 0; i < numbers.length; i++){
            sum += numbers[i];
        }
        return sum;
    }

    function clear() public {
        delete numbers;
    }
}

// 17. string을 input으로 받는 함수를 구현하세요. 
// 이 함수는 true 혹은 false를 반환하는데 Bob이라는 이름이 들어왔을 때에만 true를 반환합니다.

contract BOOL {
    // 솔리디티에서 string을 엄격연산자로 비교할 수 없는 이유는? string -> byte -> keccak 변환거쳐야 가능...
    // 솔리디티는 무조건 bytes로 변환하는 것으로 이해하면 된다
    function isBob(string memory _name) public pure returns (bool){
        return (keccak256(bytes(_name)) == keccak256(bytes("Bob")));
    }
}

// 18. 이름을 검색하면 생일이 나올 수 있는 자료구조를 구현하세요. 
// (매핑) 해당 자료구조에 정보를 넣는 함수, 정보를 볼 수 있는 함수도 구현하세요.
contract MAPPING {
    mapping(string => string) birthdays;

    function setBirthday(string memory _name, string memory _birthdate) public {
        birthdays[_name] = _birthdate;
    }

    function getBirthday(string memory _name) public view returns(string memory) {
        return birthdays[_name];
    }
}


// 19. 숫자를 넣으면 2배를 반환해주는 함수를 구현하세요.
// 단 숫자는 1000이상 넘으면 함수를 실행시키지 못하게 합니다.
contract REQUIRE{
    function double(uint _n) public pure returns (uint){
        require(_n < 1000, "Number exceeds 1,000. Enter a different number.");
        return _n * 2;
    }
}

//20. 숫자만 들어가는 배열을 선언하고 숫자를 넣는 함수를 구현하세요. 
// 15개의 숫자가 들어가면 3의 배수 위치에 있는 숫자들을 초기화 시키는(3번째, 6번째, 9번째 등등) 함수를 구현하세요. (for 문 응용 → 약간 까다로움)
contract ARRAY7{
    uint[] numbers;

    function addNumber(uint _n) public {
        numbers.push(_n);
        if(numbers.length == 15){
            for(uint i = 0; i < numbers.length; i++){
                if((i+1) % 3 == 0){
                    delete numbers[i];
                }
            }
        }
    }

    function getNumbers() public view returns (uint[] memory){
        return numbers;
    }
}

// 21. 3의 배수만 들어갈 수 있는 array를 구현하세요.
contract ARRAY8 {
    uint[] numbers;

    function addNumber(uint _n) public {
        require(_n % 3 == 0);
        numbers.push(_n);
    }

    function getNumbers() public view returns (uint[] memory){
        return numbers;
    }
}

// 22. 뺄셈 함수를 구현하세요. 임의의 두 숫자를 넣으면 자동으로 둘 중 큰수로부터 작은 수를 빼는 함수를 구현하세요.
contract SUBTRACT {
    function minusSmaller(uint _a, uint _b) public pure returns (uint) {
        if(_a > _b){
            return _a - _b;
        } else {
            return _b - _a;
        }
    }
}

// 23. 3의 배수라면 “A”를, 나머지가 1이 있다면 “B”를, 나머지가 2가 있다면 “C”를 반환하는 함수를 구현하세요.
contract IF {
    function returnLetter(uint _n) public pure returns (string memory) {
        string memory char;

        if(_n % 3 == 0){
            char = "A";
        } else if (_n % 3 == 1){
            char = "B";
        } else if (_n % 3 == 2) {
            char = "C";
        }
        return char;
    }
}

// 24. string을 input으로 받는 함수를 구현하세요. “Alice”가 들어왔을 때에만 true를 반환하세요.
contract STRING {
    function isAlice(string memory _name) public pure returns (bool){
        if(keccak256(abi.encodePacked(_name)) == keccak256(abi.encodePacked("Alice"))){
            return true;
        } else {
            return false;
        }
    }
}

// 25. 배열 A를 선언하고 해당 배열에 n부터 0까지 자동으로 넣는 함수를 구현하세요.
contract ARRAY9 {
    uint[] numbers;

    function addNum(uint _n) public {
        delete numbers;

        for (uint i = _n; i >= 0; i--){
            numbers.push(i);
        }
    }

    function getNum() public view returns (uint[] memory){
        return numbers;
    }
}

// 26. 홀수만 들어가는 array, 짝수만 들어가는 array를 구현하고 숫자를 넣었을 때 자동으로 홀,짝을 나누어 입력시키는 함수를 구현하세요.
contract ARRAY10 {
    uint[] evens;
    uint[] odds;

    function addNum(uint _n) public {
        if(_n % 2 == 0){
            evens.push(_n);
        } else  {
            odds.push(_n);
        }
    }

    function getArrays() public view returns (uint[] memory, uint[] memory){
        return (evens, odds);
    }
}

// 27. string 과 bytes32를 key-value 쌍으로 묶어주는 mapping을 구현하세요. 해당 mapping에 정보를 넣고, 지우고 불러오는 함수도 같이 구현하세요.
contract MAPPING2 {
    mapping(string => bytes32) keyValue;

    function addKeyValue(string memory _key, bytes32 _value) public {
        keyValue[_key] = _value;
    }

    function getValue(string memory _key) public view returns (bytes32){
        return keyValue[_key];
    }
}

// 28. ID와 PW를 넣으면 해시함수(keccak256)에 둘을 같이 해시값을 반환해주는 함수를 구현하세요.
contract HASH {
    function getHash(string memory _id, string memory _pw) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_id, _pw));
    }
}

// 29. 숫자형 변수 a와 문자형 변수 b를 각각 10 그리고 “A”의 값으로 배포 직후 설정하는 contract를 구현하세요.
contract CONSTRUCTOR {
    uint a;
    string b;

    constructor(){
        a = 10;
        b = "A";
    }

    function getVariable() public view returns (uint, string memory){
        return (a, b);
    }
}

// 30. 임의대로 숫자를 넣으면 알아서 내림차순으로 정렬해주는 함수를 구현하세요
contract SORT {
    uint[] numbers;

    function addNum(uint _n) public {
        numbers.push(_n);
    }

    function getNum() public view returns (uint[] memory){
        return numbers;
    }

    function sortDesc() public {
        for(uint i = 0; i < numbers.length; i++){
            for(uint j = i + 1; j < numbers.length; j++){
                if(numbers[i] < numbers[j]){
                    (numbers[i], numbers[j]) = (numbers[j], numbers[i]);
                }
            }
        }

    }
}