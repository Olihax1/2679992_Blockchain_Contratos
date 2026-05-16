// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract EjercicioMensajeria{

    address public owner;

    struct Mensaje {
        address from;
        address to;
        string contenido;
        uint256 timestamp;
    }

    Mensaje[] public historial;

    event NuevoMensaje(address indexed from, address indexed to, string contenido, uint256 timestamp);

    constructor(){

        owner = msg.sender;

    }

    function enviarMensaje(address _to, string memory _contenido) public {

        require(msg.sender == owner, "Solo el propietario puede enviar mensajes");

        Mensaje memory mensajeParaGuardar = Mensaje({
            from: owner,
            to: _to,
            contenido: _contenido,
            timestamp: block.timestamp
        });

        historial.push(mensajeParaGuardar);

        emit NuevoMensaje(msg.sender, _to, _contenido, block.timestamp);
    }
}