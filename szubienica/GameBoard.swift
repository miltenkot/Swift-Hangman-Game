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
    struct  IndexName {
        static var incrementValue = 1
    }
    @IBAction func addLetter(_ sender: UIButton) {
        let letter = sender.currentTitle!
        
        if((badchars.range(of: letter)) != nil||attempt.range(of: letter) != nil){
            print("Ta litera już była")
        }
       let loc = target.range(of: letter)
        if(loc != nil){
            let loc = Range(uncheckedBounds: (lower: target.startIndex, upper: target.endIndex))
            let lettersInCase = target.rangesOfString(searchString: letter, options: NSString.CompareOptions.caseInsensitive, searchRange:loc )
            
            for i in lettersInCase{
                
                attempt.replaceSubrange(i, with: "\(letter)")
            }

            
          
            
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
extension String {
    public func rangesOfString(searchString:String, options: NSString.CompareOptions = [], searchRange:Range<Index>? = nil ) -> [Range<Index>] {
        if let range = range(of: searchString, options: options, range:searchRange) {
            
            //let nextRange = range.lowerBound.advancedBy(1)..<self.endIndex
            let nextRange = Range(uncheckedBounds: (lower: index(range.lowerBound, offsetBy: 1), upper: endIndex))
            return [range] + rangesOfString(searchString: searchString, searchRange: nextRange)
        } else {
            return []
        }
    }
}



