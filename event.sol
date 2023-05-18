// SPDX-License-Identifier: unlicense

pragma solidity >=0.5.0 <0.9.0;

contract EventContract{
    struct Event{
        address organizer;
        string name;
        uint date;
        uint price;
        uint ticketCount;
        uint ticketRemain;

    }
    mapping (uint=>Event)public events;
    mapping (address=>mapping(uint=>uint))public tickets;

    uint public nextId;

    function createEvent(string memory name,uint date,uint price, uint ticketCount)external
    {
        require(date>block.timestamp,"Event can be organised for future date");
        require(ticketCount>0,"Event can be organised only if you create more than 0 tickets");
        
        events[nextId]= Event(msg.sender,name,date,price,ticketCount,ticketCount);
        nextId++;
    }

    function buyTickets(uint id, uint quantity) external payable{
      require ( events[id].date!=0,"This event does not exist");
      require(events[id].date>block.timestamp, "Event has taken place already");
      Event storage _event = events[id];
      require(msg.value==(_event.price*quantity),"Ether is not enough");
      require(_event.ticketRemain>=quantity,"Tickets not available");
       _event.ticketRemain -= quantity;
      tickets[msg.sender][id]+=quantity;
      

        
    }
    
    
}
