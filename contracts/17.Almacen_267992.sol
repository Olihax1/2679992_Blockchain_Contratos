// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
import "hardhat/console.sol";

contract Almacen_267992 {

    struct Producto {
        uint256 id;          
        string nombre;       
        uint256 cantidad;
        bool estado;    
    }

    Producto[] public productos;

    address public dirContrato = 0xB57ee0797C3fc0205714a577c02F7205bB89dF30;

    modifier logEjecucion() {
        console.log("Ejecutado por: 267992 - Oliver Alexis Saldana Ylquimiche");
        _;
    }

    constructor() logEjecucion() {}

    function registrarProducto(uint256 _id, string memory _nombre, uint256 _cantidad, bool _estado) public logEjecucion {

        require(_cantidad > 0, "La cantidad debe ser mayor a cero");

        Producto memory nuevoProducto = Producto(
            {
            id: _id,
            nombre: _nombre,
            cantidad: _cantidad,
            estado: _estado 
            }
        );
        
        productos.push(nuevoProducto); 
    }
    
    function agregarElemento(uint256 _id, string memory _nombre, uint256 _cantidad, bool _estado) public logEjecucion {
        
        require(_cantidad > 0, "La cantidad debe ser mayor a cero");

        for (uint256 i = 0; i < productos.length; i++) {
            require(productos[i].id != _id, "El ID ya existe");
        }

        Producto memory nuevoProducto = Producto(
            {
                id: _id,
                nombre: _nombre,
                cantidad: _cantidad,
                estado: _estado
            }
        );

        productos.push(nuevoProducto);
    }

    function contarElementos() public view logEjecucion returns (uint256) {
        console.log("Cantidad de elementos: ", productos.length);
        return productos.length;
    }
}