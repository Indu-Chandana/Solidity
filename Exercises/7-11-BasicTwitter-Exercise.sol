// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

contract Twitter {
      
      mapping(address => string[]) public tweets; // this is public variable, thaat call tweets.
      // users address to string, string is a tweet

      // now creating tweet
      // memory -> we tell to store _tweet temporary in memory, string has gets lot of space thats why we store in temporary memory.
      function createTweet(string memory _tweet) public {
          // msg.sender = address
          // msg comes from blockchain, It can check user Details 
        //   tweets[msg.sender] = _tweet;
        tweets[msg.sender].push(_tweet);
      }

      function getTweet(address _owner, uint _i) public view returns (string memory) {
          // return (string memory) --> we have to store this string before return
        //   return tweets[_i];
        return tweets[_owner][_i];
      }

      function getAllTweets(address _owner) public view returns (string[] memory) {
          return tweets[_owner];
      }
}