//
//  ViewController.swift
//  Nokhwal_Assignment05
//
//  Created by Nokhwal,Sahil on 2/26/16.
//  Copyright © 2016 Nokhwal,Sahil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PollFactory.createModel()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        let no = PollFactory.partyArray.count
        return no
    }
    
       func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return PollFactory.partyArray[section].nameOfParty
    }
    
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return PollFactory.partyArray[section].candidates.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("SahilCell", forIndexPath: indexPath)
        tableView.rowHeight = 115
        
        var candidate:[Candidate]=[]
        var candidateName:[String] = []
        var candidateImage:[String] = []
        var candidateVote:[String] = []
        
        let nameLBL:UILabel = cell.viewWithTag(11) as! UILabel
        let votesLBL:UILabel = cell.viewWithTag(12) as! UILabel
        let candidateIV: UIImageView = cell.viewWithTag(105) as! UIImageView
        
        
        candidate.appendContentsOf(PollFactory.partyArray[indexPath.section].displayOrder())
        
        
        for n in candidate{
            candidateName.append(n.nameOfCandidate)
            candidateVote.append(String(PollFactory.partyArray[indexPath.section].getPercentage(n.nameOfCandidate)))
            candidateImage.append(n.imageOfCandidate)
        }
        
        
        
        nameLBL.text = candidateName[indexPath.row]
        votesLBL.text = String(candidateVote[indexPath.row])
        candidateIV.image = UIImage(named: String(candidateImage[indexPath.row]))
        
        return cell
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var candidateIndex = 0
        var candidte : [Candidate]! = []
        var nameOfCandidate : [String] = []
        
        
        for var i = 0; i < PollFactory.partyArray.count; i++ {
            print(PollFactory.partyArray[1])
            candidte.appendContentsOf(PollFactory.partyArray[i]
                .displayOrder())
        }
        
        for n in candidte {
            nameOfCandidate.append(n.nameOfCandidate)
        }
        
       
        for var i = 0; i <= indexPath.section ; i++ {
            
            for var j = 0; j < PollFactory.partyArray[i].candidates.count ; j++ {
                
                if i == indexPath.section && j == indexPath.row {
                   
                    break
                }
                candidateIndex = candidateIndex + 1
                
            }
        }
        
               
        let name:String = nameOfCandidate[candidateIndex]
        PollFactory.partyArray[indexPath.section].updateVote(name)
        
        tableView.reloadData()
    }
   
    
}


