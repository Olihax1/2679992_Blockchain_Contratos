// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract CompMapping {

    uint256 secuencial = 100;

    //struct
    struct Empleado {

        string nombre;
        uint edad;

    }

    /*struct Cuentas {

        address cuenta;
        uint saldo;

    }*/


    mapping(uint => Empleado) private empleados; //mapping de los empleados)

    function getEmpleado(uint _id)public view returns (string memory _nombre, uint _edad){

        Empleado memory emp = empleados[_id];
        return (emp.nombre, emp.edad);
    }

    function addEmpleado(uint id, string memory _nombre, uint _edad) public {

        empleados[id] = Empleado(_nombre, _edad);
    }

    function addEmpleadoSecuencial(string memory _nombre, uint _edad) public {

        empleados[secuencial] = Empleado(_nombre, _edad);
        secuencial ++;
    }
}