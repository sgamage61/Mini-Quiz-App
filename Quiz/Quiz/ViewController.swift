//
//  ViewController.swift
//  Quiz
//
//  Created by Suvin Gamage on 7/6/17.
//  Copyright © 2017 Suvin Gamage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Question: UILabel!
    @IBOutlet var Button1: UIButton!
    @IBOutlet var Button2: UIButton!
    @IBOutlet var Button3: UIButton!
    @IBOutlet var Button4: UIButton!
    @IBOutlet var correctorincorrect: UILabel!
    
    @IBOutlet var next: UIButton!
    var CorrectAnswer = String()
    var askedQuestions = [Int]()
    var points = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        hide()
        RandomQuestions()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func end(){
        unhide()
        correctorincorrect.text = "You scored \(points) points"
    }
    func RandomQuestions(){
        hide()
        var RandomNumber = Int(arc4random() % 9)
        RandomNumber += 1
        while askedQuestions.indexOf(RandomNumber) != nil && askedQuestions.count < 9{
            RandomNumber = Int(arc4random() % 9)
            RandomNumber += 1
        }
        if askedQuestions.count >= 9{
            end()
            RandomNumber = 11
            next.hidden = true
        }
        askedQuestions.append(RandomNumber)
        
        switch(RandomNumber){
        case 1:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "Who is the GOAT of basketball?"
            Button1.setTitle("Michael Jordan",forState: UIControlState.Normal)
            Button2.setTitle("Kobe Bryant",forState: UIControlState.Normal)
            Button3.setTitle("Lebron James",forState: UIControlState.Normal)
            Button4.setTitle("Magic Johnson",forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
        case 2:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "What state is nicknamed the Garden State?"
            Button1.setTitle("New Jersey",forState: UIControlState.Normal)
            Button2.setTitle("Vermont",forState: UIControlState.Normal)
            Button3.setTitle("Connecticut",forState: UIControlState.Normal)
            Button4.setTitle("New Hampshire",forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
        case 3:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "What is the capital of New Jersey?"
            Button1.setTitle("Jersey City",forState: UIControlState.Normal)
            Button2.setTitle("Trenton",forState: UIControlState.Normal)
            Button3.setTitle("Newark",forState: UIControlState.Normal)
            Button4.setTitle("New Brunswick",forState: UIControlState.Normal)
            CorrectAnswer = "2"
            break
        case 4:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "Who won the 2017 NBA Finals?"
            Button1.setTitle("Cleveland Cavaliers",forState: UIControlState.Normal)
            Button2.setTitle("Boston Celtics",forState: UIControlState.Normal)
            Button3.setTitle("Golden State Warriors",forState: UIControlState.Normal)
            Button4.setTitle("San Antonio Spurs",forState: UIControlState.Normal)
            CorrectAnswer = "3"
            break
        case 5:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "Who was the MVP of the 2016-2017 NBA regular season?"
            Button1.setTitle("Kawhi Leonard",forState: UIControlState.Normal)
            Button2.setTitle("James Harden",forState: UIControlState.Normal)
            Button3.setTitle("Lebron James",forState: UIControlState.Normal)
            Button4.setTitle("Russell Westbrook",forState: UIControlState.Normal)
            CorrectAnswer = "4"
            break
        case 6:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "Who was the MVP of the 2017 NBA Finals"
            Button1.setTitle("Kevin Durant",forState: UIControlState.Normal)
            Button2.setTitle("Lebron James",forState: UIControlState.Normal)
            Button3.setTitle("Stephen Curry",forState: UIControlState.Normal)
            Button4.setTitle("Kyrie Irving",forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
        case 7:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "Who won the 2017 NCAA Basketball Tournament?"
            Button1.setTitle("UNC",forState: UIControlState.Normal)
            Button2.setTitle("Kentucky",forState: UIControlState.Normal)
            Button3.setTitle("Duke",forState: UIControlState.Normal)
            Button4.setTitle("Gonzaga",forState: UIControlState.Normal)
            CorrectAnswer = "1"
            break
        case 8:
            Question.text = "Did North Carolina go Republican or Democrat in the 2016 election"
            Button1.setTitle("Republican",forState: UIControlState.Normal)
            Button2.setTitle("Democrat",forState: UIControlState.Normal)
            Button3.hidden = true
            Button4.hidden = true
            CorrectAnswer = "1"
            break
        case 9:
            Button3.hidden=false
            Button4.hidden=false
            Question.text = "How many states are there in America?"
            Button1.setTitle("21",forState: UIControlState.Normal)
            Button2.setTitle("50",forState: UIControlState.Normal)
            Button3.setTitle("49",forState: UIControlState.Normal)
            Button4.setTitle("51",forState: UIControlState.Normal)
            CorrectAnswer = "2"
            break
        case 10:
            Button3.hidden=true
            Button4.hidden=true
            Question.text = "Where is Giants Stadium located?"
            Button1.setTitle("New York",forState: UIControlState.Normal)
            Button2.setTitle("New Jersey",forState: UIControlState.Normal)
            CorrectAnswer = "2"
            break
            
            
            
        default:
            break
        }
    }
    
    func hide(){
        correctorincorrect.hidden = true
        next.hidden = true
    }
    func unhide(){
        correctorincorrect.hidden = false
        next.hidden = false
    }
    
    
    

    @IBAction func Button1pressed(sender: AnyObject) {
        unhide()
        if (CorrectAnswer == "1"){
            points += 1
            correctorincorrect.text = "You are correct!"
        }else{
            correctorincorrect.text = "You are incorrect"
        }
    }

    @IBAction func Button2pressed(sender: AnyObject) {
        unhide()
        if (CorrectAnswer == "2"){
            points += 1
            correctorincorrect.text = "You are correct!"
        }else{
             correctorincorrect.text = "You are incorrect"
        }
    }
    @IBAction func Button3pressed(sender: AnyObject) {
        unhide()
        if (CorrectAnswer == "3"){
            points += 1
            correctorincorrect.text = "You are correct!"
        }else{
             correctorincorrect.text = "You are incorrect"
        }
    }
    @IBAction func Button4pressed(sender: AnyObject) {
        unhide()
        if (CorrectAnswer == "4"){
            points += 1
            correctorincorrect.text = "You are correct!"
        }else{
             correctorincorrect.text = "You are incorrect"
        }
    }
    @IBAction func nextQuestion(sender: AnyObject) {
    RandomQuestions()
    }
}

