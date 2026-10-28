// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract VariablesYEstructurasdeControl {

    // Se cambia de string a address para que coincida con msg.sender
    address private owner;

    constructor() {
        owner = msg.sender; 
    } 

    // Variables globales

    function getOwner() public view returns (address) {
        return owner;
    }

    // Variables globales
    function getSender() public view returns (address) {
        // Variable global que devuelve la dirección del remitente de la llamada actual.
        return msg.sender;
    }

    function getSaludo() public view returns (string memory){
        require(msg.sender == owner);
        return "No se que poner aca";
    }

    function esParImpar(uint256 _numero) public pure returns (string memory) {
        if (_numero % 2 == 0) {
            return unicode"El número es par";
        } else {
            return unicode"El número es impar";
        }
    }

    function sumOneToFor(uint256 _n) public pure returns (uint256) {
        uint suma = 0;

        for (uint256 i=1; i<=_n; i++) {
            suma += i;
        }
        return suma;   
    }

    function sumOneToWhile(uint256 _n) public pure returns (uint256) {
        uint suma = 0;
        uint i = 1;

        while (i <= _n) {
            suma += i;
            i++;
        }

        return suma;
    }
}