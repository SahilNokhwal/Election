//
//  Party.swift
//  Nokhwal_Assignment05
//
//  Created by Nokhwal,Sahil on 2/26/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import Foundation

class Party{
    
    var nameOfParty: String!
    
    var candidates:[String : Candidate] = [:]

    
    init(nameOfParty:String)
    {
        self.nameOfParty = nameOfParty
    }
    
    func displayOrder() ->[Candidate]{
        var array = Array(candidates.values)
        let candidate:[Candidate] = array.sort({$0.noVotes > $1.noVotes})
        
        return candidate
    }
    
    
    func getPercentage(candidateName:String)->Double{
        
        var votes = 0
        
        for candidate in candidates.keys
        {
            votes = votes + candidates[candidate]!.noVotes
        }
        
        var candidateVotes = candidates[candidateName]!.noVotes
        
        var percentageOfVotes:String = String(format: "%.02f",(Double(candidateVotes)/Double(votes)) * 100 )
        
        if(Double(percentageOfVotes) < 0)
        {
            return 0
           
        }
        else
        {
             return Double(percentageOfVotes)!
            
        }
    }
    
    
    func updateVote(name:String)
    {
        candidates[name]?.noVotes  = (candidates[name]?.noVotes)! + 1
    }
    
    
    func addCandidate(candidate:Candidate)
    {
        
        candidates[candidate.nameOfCandidate] = candidate
}


}

