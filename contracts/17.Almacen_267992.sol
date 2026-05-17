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
}