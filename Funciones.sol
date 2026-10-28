// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract Funciones{
    uint private contadorPrivado;
    uint internal contadorInternal;
    
    function getSaludo() public pure returns (string memory) {
        return "Hola mundo";
    }

    // private

    function addContadorPrivado() private {
        contadorPrivado += 1;
    }

    function incrementarContadorPrivado() public {
        addContadorPrivado();
    }

    function getContadorPrivado() public view returns (uint) {
        return contadorPrivado;
    }
    

    // internal

    function addContadorInternal() internal {
        contadorInternal += 1;
    }

    function incrementarContadorInternal() public {
        addContadorInternal();
    }

    function getContadorInternal() public view returns (uint) {
        return contadorInternal;
    }    
    
}


contract FuncionesDerivadas is Funciones {
    function incrementarContadorInternalHeredado() public {
        addContadorInternal();
    }

    function getContadorInternalHeredado() public view returns (uint) {
        return contadorInternal;
    }
}