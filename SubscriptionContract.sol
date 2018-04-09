pragma solidity 0.4.21;

contract subscription{
    address public owner;
    uint public refund;
    address public biller;

    function getAddress() public{
        owner = msg.sender;
    }
    
    

    struct billerInfo{
       string subscriptionName;
       uint amount;
    }
    
    function getBillerAddress(address _biller) public{
        biller = _biller;
    }
    
    function deposit() public payable {
        
    }
    
    function Balance() constant returns(uint){
        
        return address(this).balance;
    }
    
    function refundAmount(uint _amount) {
        refund = _amount;
        require(msg.sender == owner);
        owner.transfer(refund);
        
        
    }

    function FullRefund() public {
        owner.transfer(Balance());
        require(msg.sender == owner);
    }
    
}
