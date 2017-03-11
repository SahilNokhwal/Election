//
//  Candidate.swift
//  Nokhwal_Assignment05
//
//  Created by Nokhwal,Sahil on 2/26/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import Foundation

class Candidate{
    var nameOfCandidate:String = ""
    var imageOfCandidate:String = ""
    var noVotes:Int = 0
    
    
    init(nameOfCandidate:String, imageOfCandidate:String, noVotes:Int)
    {
        self.nameOfCandidate = nameOfCandidate
        self.imageOfCandidate = imageOfCandidate
        self.noVotes = noVotes
    }
}
