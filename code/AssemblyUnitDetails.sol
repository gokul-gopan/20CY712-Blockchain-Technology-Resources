
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @author Gokul
 * @title assembly unit  smart contract* @dev Store & retrieve car assembly unit parameters
 */
contract AssemblyUnit {
    
    mapping(string=>vehicle) carpointer;
    //Key - uint256 Roll No
    //  studentpointer[_rollNumber] = stud;
    
    //State Variable
    
    struct vehicle {
    
    string transmission; //enum
    string assemblyType; //enum
    string brand;
    string dom; // date of manufacture
    string fuelMode; //enum
    string geoLoc;
    uint8 autonomy; //enum
    string partID;
    string VIN;
    
    }
    vehicle car;
    /**
  0- Manual (man)
   1- Automatic (autom) 
   2- Continuously Variable Transmission (cvt)
   3- Dual Clutch Transmission (dct)
   4- Semi Automatic (sauto)
    **/
    enum TRANSMISSION{autom, cvt, dct, sauto}

    /**
    Assembly type
    0- classic
    1- automated
    2- intermittent
    3- lean  
      **/
    enum ASSEMBLYTYPE{ classic, automated, intermittent, lean}

    /**
    Mode of fuel 
    0- Petrol
    1- Diesel
    2- Electric
      **/

    enum FUELMODE{ petrol, diesel, electric}

    /**
    Autonomy level
    0- L0 (full manual)
    1- L1 (light driver assistance)
    2- L2 (partial automation)
    3- L3 (ADAS)
    4- L4 (full automatic with manual override)
    5- L5 (full automatic)
    **/

    enum autonomy{L0,L1,L2,L3,L4,L5}
    
      /**
     * @dev Store car details
     */
   
    function storeCarDetail(string memory _VIN, string memory _brand, string memory _dom, string memory _geoLoc, string memory  _partID, string memory _transmission, string memory _assemblyType, string memory _fuelMode) public {
      car.VIN = _VIN;
      car.brand = _brand;
      car.dom = _dom;
      car.geoLoc = _geoLoc;
      car.partID = _partID;
      car.transmission = _transmission;
      car.assemblyType = _assemblyType;
      car.fuelMode = _fuelMode;

      carpointer[_VIN] = car;

        
    }

     /**
     * @dev Retrieve car details
     */

    function getCarDetail(string memory _VIN) public view returns (string memory){
        vehicle memory car = carpointer[_VIN];
        return (car.brand);
    }
}
