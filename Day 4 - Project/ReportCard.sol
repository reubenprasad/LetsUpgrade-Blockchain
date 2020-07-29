pragma solidity >=0.4.22 <0.7.0;

contract ReportCard{
    string public Name;
    string public RollNo;
    string public Batch;
    uint public S1Marks;
    uint public S2Marks;
    uint public S3Marks;
    uint public S4Marks;
    string public status;
    
    function setDetails(string _Name,string _RollNo,string _Batch,uint _S1Marks,uint _S2Marks,uint _S3Marks,uint _S4Marks,string _status)public{
    Name = _Name;
    RollNo = _RollNo;
    Stream = _Batch;
    Sub1Marks = _S1Marks;
    Sub2Marks = _S2Marks;
    Sub3Marks = _S3Marks;
    Sub4Marks = _S4Marks;
    status = _status;
    }
    
    
    function getDetails()public view returns(string,string,string,uint,uint,uint,uint,string){
        return(Name,RollNo,Stream,Sub1Marks,Sub2Marks,Sub3Marks,Sub4Marks,status);
    }
}