// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract Almacen_267992 {

    struct Producto {

        uint256 id;          
        string nombre;       
        uint256 cantidad;    

    }

    Producto[] public productos;

    address public dirContrato = 0xB57ee0797C3fc0205714a577c02F7205bB89dF30;

    function registrarProducto(uint256 _id, string memory _nombre, uint256 _cantidad) public {

        console.log("ejecutado por: 267992 - Oliver Alexis Saldana Ylquimiche ");

        Producto memory nuevoProducto = Producto(
            {

            id: _id,
            nombre: _nombre,
            cantidad: _cantidad

            }
        );
        
        productos.push(nuevoProducto); 

    }
    
    function agregarElemento(uint256 _id, string memory _nombre, uint256 _cantidad) public {

        Producto memory nuevoProducto = Producto(
            {
                id: _id,
                nombre: _nombre,
                cantidad: _cantidad
            }
        );

        productos.push(nuevoProducto);

    }

    function contarElementos() public view returns (uint256) {

        console.log("ejecutado por: 267992 - Oliver Alexis Saldana Ylquimiche ");

        return productos.length;
    
    }
}