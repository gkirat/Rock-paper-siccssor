// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract practice{
    
        uint public stone=3;
        uint public paper=1;
        uint public scissor=2;    //learn scissor spelling
        uint p1i;  //player 1 input = p1i
        uint p2i;
        string public winnerp;

        struct playersp{ //current players that are playing
        address  player1;
        address  player2;
        }
        playersp public currentmatchp; //which players are playing the current match

        struct Detailsofplay{
            address playeradd;
            uint won;
        }

        Detailsofplay[] public detailsofplay;
        
        
        function Player1(uint x)public {
            // address player1=msg.sender;
            // require(msg.sender!=Player2,"Player 1 input");
            require(x<=3 && x>0,"Enter valid response");
            // player1=msg.sender;   
            p1i=x;
            Detailsofplay memory tempdetails;
            tempdetails.playeradd=msg.sender;
            detailsofplay.push(tempdetails);

            currentmatchp =playersp(msg.sender,address(0));



            // for(uint i=0;i<detailsofplay.length;i++){
            //     if(msg.sender!=detailsofplay[i].playeradd){
            // detailsofplay.push(tempdetails);
            //     }
            // }
        }

        function Player2(uint y)public {
            // address player2=msg.sender;
            // require(msg.sender!=Player1,"Player 2 input");
            require(y<=3 && y>0,"Enter valid response");
           // player2=msg.sender;
            p2i=y;
            Detailsofplay memory tempdetails;
            tempdetails.playeradd=msg.sender;
            detailsofplay.push(tempdetails);

            currentmatchp =playersp(player1,msg.sender);

            // for(uint i=0;i<detailsofplay.length;i++){
            //     if(msg.sender!=detailsofplay[i].playeradd){
            // detailsofplay.push(tempdetails);
            //     }
            // }
        }

        function winner()public {
            //require(msg.sender==player1 || msg.sender==player2);
            require(p1i!=0 && p2i !=0,"Enter both the inputs");
             if(p1i==3 && p2i==1 || p1i==1 && p2i==2 || p1i==2 && p2i==3){
                    for(uint i=0;i<detailsofplay.length;i++){
                        // if(player2==detailsofplay[i].playeradd){
                        //     detailsofplay[i].won+=1;
                        // }
                    }
                winnerp =  "player2";
            }
             else if(p1i==3 && p2i==2 || p1i==1 && p2i==3 || p1i==2 && p2i==1){
                 for(uint i=0;i<detailsofplay.length;i++){
                        // if(player1==detailsofplay[i].playeradd){
                        //     detailsofplay[i].won+=1;
                        // }
                    }
                winnerp= "player1";
            }
             else{
                winnerp= "draw";
            }
        }    
        address zero=address(0);

    
}





contract practice2{
    
        uint public stone=0;
        uint public paper=1;
        uint public scissor=2;    //learn scissor spelling
        address public player1;
        address public player2;
        uint p1i;  //player 1 input = p1i
        uint p2i;
        
        


        function Player1(uint x)public  {
            require(msg.sender!=player2,"Player 1 input");
            player1=msg.sender;   
            p1i=x;
        }

        function Player2(uint y)public {
            require(msg.sender!=player1,"Player 2 input");
            player2=msg.sender;
            p2i=y;
        }
// function winner()public view returns(address,string memory){
        function winner()public view returns(string memory){
            string memory play1="player 1";
            string memory play2="player 2";
            string memory ifdraw="draw";
            if(p1i==0 && p2i==1){
                // return player2;
            }
             if(p1i==0 && p2i==2){
                // return player1;
                return play1;
            }
             if(p1i==1 && p2i==0){
                // return player1;
                return play1;
            }
             if(p1i==1 && p2i==2){
                // return player2;
                return play2;
            }
             if(p1i==2 && p2i==0){
                // return player2;
                return play2;
            }
             if(p1i==2 && p2i==1){
                // return player1;
                return play1;
            }
             if(p1i==0 && p2i==0){
                return ifdraw;
            }
             if(p1i==1 && p2i==1){
                return ifdraw;
            }
             if(p1i==2 && p2i==2){
                return ifdraw;
            }
        }




       


   
}









     
