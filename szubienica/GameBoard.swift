//
//  GameBoard.swift
//  szubienica
//
//  Created by Bartek Lanczyk on 16.09.2016.
//  Copyright © 2016 miltenkot. All rights reserved.
//

import UIKit

class GameBoard: UIViewController {
 
    @IBOutlet weak var HangManOutlet: MainDeadMan!
    
    var guesses = 6
    var target = ""
    var badchars = ""
    var attempt = ""
    @IBAction func addLetter(_ sender: UIButton) {
        let letter = sender.currentTitle!
        
        if((badchars.range(of: letter)) != nil||attempt.range(of: letter) != nil){
            print("Ta litera już była")
        }
        let loc = target.range(of: letter)
        if(loc != nil){
            print("poprawna litera to \(letter)")
            let location:Range<String.Index> = target.range(of: letter)!
           // let index: Int = target.distance(from: target.startIndex, to: location.lowerBound)
        attempt.replaceSubrange(location, with: "\(letter)")
            
            attemptsLabel.text = attempt
    
         

            
            
            
            
        }
        else {
            HangManOutlet?.cout += 1
            HangManOutlet?.setNeedsDisplay()
            print("Nie ma takiej litery")
            guesses -= 1
            badchars += letter
          
            
        }
        
    }
    @IBOutlet weak var attemptsLabel: UILabel!
    let wordlist = ["AGRREST","BBIGOS","CZZARA","OOBUWIE"]
    override func viewDidLoad() {
        super.viewDidLoad()
         target =
        "\(wordlist[Int(arc4random_uniform(UInt32(wordlist.count)))])"
    
        let lenght = target.characters.count
        
        for _ in 0..<lenght{
            attempt += "-"
        }
        attemptsLabel.text = attempt
        
        print(target)
        
        
        
     
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
