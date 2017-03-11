//
//  PollFactory.swift
//  Nokhwal_Assignment05
//
//  Created by Nokhwal,Sahil on 2/26/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import Foundation

class PollFactory
{
    static var partyArray: [Party] = []
    
    static func createModel(){
        
        let democraticParty : Party = Party(nameOfParty :"Democratic Party")
        
        let hillaryClinton:Candidate = Candidate(nameOfCandidate: "Hillary Clinton", imageOfCandidate: "clinton.jpg", noVotes: 0)
        let bernieSanders:Candidate = Candidate(nameOfCandidate: "Bernie Sanders", imageOfCandidate: "ber.jpg", noVotes: 0)
       
        
        let tedCruz:Candidate = Candidate(nameOfCandidate: "Ted Cruz", imageOfCandidate: "ted.jpg", noVotes: 0)
        let johnKasich:Candidate = Candidate(nameOfCandidate: "John Kasich", imageOfCandidate: "kasich.jpg", noVotes: 0)
        let benCarson:Candidate = Candidate(nameOfCandidate: "Ben Carson", imageOfCandidate: "ben.jpg", noVotes: 0)
        let republicanParty : Party = Party(nameOfParty :"Republican Party")
       
        partyArray.append(democraticParty)
        partyArray.append(republicanParty)
        democraticParty.addCandidate(hillaryClinton)
        democraticParty.addCandidate(bernieSanders)
        republicanParty.addCandidate(benCarson)
        republicanParty.addCandidate(tedCruz)
        republicanParty.addCandidate(johnKasich)
        
        
        
    }
}