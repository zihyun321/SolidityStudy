pragma solidity ^0.6.4;


contract GuGuDan {

    uint public num = 0; 

    struct History {
      uint x; 
      uint y;
      uint z;
      string operator;
    }

    // History[] Histories;

    mapping(uint => History) public calc_history;

    
    function set_add(uint _x, uint _y) external {
      uint _z = _x + _y;
      string memory _operator = '+';
      calc_history[num] = History(_x, _y, _z, _operator);
      num += 1;
      // Histories.push(History(_x, _y, _z, _operator));
    }

    function set_minus(uint _x, uint _y) external {
      uint _z = _x - _y;
      string memory _operator = '-';
      calc_history[num] = History(_x, _y, _z, _operator);
      num += 1;
    }

    function set_multiple (uint _x, uint _y) external {
      uint _z = _x * _y;
      string memory _operator = '*';
      calc_history[num] = History(_x, _y, _z, _operator);
      num += 1;
    }

    function set_divide (uint _x, uint _y) external {
      uint _z = _x / _y;
      string memory _operator = '/';
      calc_history[num] = History(_x, _y, _z, _operator);
      num += 1;
    }


    function get_calc(uint _num) public view returns (uint getX, uint getY, uint getZ, string memory getOperator) {
      History memory _history = calc_history[_num];
      getX = _history.x;
      getY = _history.y;
      getZ = _history.z;
      getOperator = _history.operator;
      // return (getX, getY, getZ, getOperator);
    }

   
}