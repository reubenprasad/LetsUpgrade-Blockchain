pragma solidity >= 0.5.0 < 0.7.0;

contract ProductTracker {

  struct productDetail {
        string name;
        uint warrantyPeriod;
        uint price;
        address ownerAddress;
    }

   mapping(uint => productDetail) public product;

   function addProduct(uint _pId, string memory _name, uint _wPeriod, uint _price) public payable {

        product[_pId] = productDetail(_name, _wPeriod, _price, msg.sender);
    }

}
