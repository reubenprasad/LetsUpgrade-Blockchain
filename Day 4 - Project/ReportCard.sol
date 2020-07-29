pragma solidity >=0.4.22 <0.7.0;

contract ReportCard{
    struct studentDetails{
    string  Name;
    string  Batch;
    uint  S1Marks;
    uint  S2Marks;
    uint  S3Marks;
    uint  S4Marks;
    string  status;
    }
    
    mapping(uint => studentDetails) student;

    function setDetails(uint _RollNo,string memory _Name,string memory _Batch,uint _S1Marks,uint _S2Marks,uint _S3Marks,uint _S4Marks,string memory _status)public{
   

     student[_RollNo] = studentDetails(_Name, _Batch, _S1Marks, _S2Marks, _S3Marks, _S4Marks, _status);
    }
    
    
    function getDetails(uint _RollNo)public view returns(string memory _Name,string memory _Batch,uint _S1Marks,uint _S2Marks,uint _S3Marks,uint _S4Marks,string memory _status){
      
        _Name = student[_RollNo].Name;
        _Batch = student[_RollNo].Batch;
        _S1Marks = student[_RollNo].S1Marks;
        _S2Marks = student[_RollNo].S2Marks;
        _S3Marks = student[_RollNo].S3Marks;
        _S4Marks = student[_RollNo].S4Marks;
        _status = student[_RollNo].status;
        
    }
}