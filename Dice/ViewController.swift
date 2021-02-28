//
//  ViewController.swift
//  Dice
//
//  Created by CodeMobiles2 on 18/1/2564 BE.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    @IBOutlet weak var dice3: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    @IBOutlet weak var tabButton: UILabel!
    @IBOutlet weak var recent: UIButton!
    @IBOutlet weak var runDice: UIButton!
    @IBOutlet weak var clearDice: UIButton!
    @IBOutlet weak var marking: UILabel!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    @IBOutlet weak var statusLabel: UILabel!
    
    var diceCheat = 0
    var dicePoint = 0
    var diceRecord = 0

    let diceOne = UIImage(named: "DiceOne")
    let diceTwo = UIImage(named: "DiceTwo")
    let diceThree = UIImage(named: "DiceThree")
    let diceFour = UIImage(named: "DiceFour")
    let diceFive = UIImage(named: "DiceFive")
    let diceSix = UIImage(named: "DiceSix")
    
//    let myDice: [UIImage?] = [
//        UIImage(named: "DiceOne"),
//        UIImage(named: "DiceTwo"),
//        UIImage(named: "DiceThree"),
//        UIImage(named: "DiceFour"),
//        UIImage(named: "DiceFive"),
//        UIImage(named: "DiceSix")
//    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceCheat = 0
        
        rollButton.setTitle("ROLL", for: .normal)
        rollButton.setTitleColor(.white, for: .normal)
        rollButton.titleLabel?.font = UIFont(name: "Noteworthy", size: 30)
        rollButton.layer.cornerRadius = 10
        
        tabButton.isUserInteractionEnabled = true
        let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(cheater))
        tabButton.addGestureRecognizer(guestureRecognizer)
        
        recent.titleLabel?.font = UIFont(name: "Noteworthy", size: 15)
        recent.layer.cornerRadius = 5
        
        runDice.titleLabel?.font = UIFont(name: "Noteworthy", size: 15)
        runDice.layer.cornerRadius = 5
        
        clearDice.titleLabel?.font = UIFont(name: "Noteworthy", size: 15)
        clearDice.layer.cornerRadius = 5
        
        statusLabel.font = UIFont(name: "Noteworthy", size: 30)
        statusLabel.text = ""
        
        
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func rollButton(_ sender: UIButton){
        
        diceRecord += 1
        
        if diceCheat == 0 {
//            let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
            let diceArray = [
                ["image":#imageLiteral(resourceName: "DiceOne"), "number": 1],
                ["image":#imageLiteral(resourceName: "DiceTwo"), "number": 2],
                ["image":#imageLiteral(resourceName: "DiceThree"), "number": 3],
                ["image":#imageLiteral(resourceName: "DiceFour"), "number": 4],
                ["image":#imageLiteral(resourceName: "DiceFour"), "number": 5],
                ["image":#imageLiteral(resourceName: "DiceSix"), "number": 6]
            ]
            
            let d1 = diceArray[Int.random(in: 0...5)]
            let d2 = diceArray[Int.random(in: 0...5)]
            let d3 = diceArray[Int.random(in: 0...5)]
            
            self.dice1.image = (d1["image"] as? UIImage)!
            self.dice2.image = (d2["image"] as? UIImage)!
            self.dice3.image = (d3["image"] as? UIImage)!
            
            dicePoint = (d1["number"] as! Int) + (d2["number"] as! Int) + (d3["number"] as! Int)
            statusLabel.text = "\(dicePoint)"
            print(dicePoint)
            
            
        } else {
            
            let godMode = Int.random(in: 1...6)
            print("Cheat step : \(godMode)")
            
            switch godMode {
            case 1:
                var diceCheatArray = [
                    ["image":#imageLiteral(resourceName: "DiceSix"), "number": 6],
                    ["image":#imageLiteral(resourceName: "DiceFour"), "number": 4],
                    ["image":#imageLiteral(resourceName: "DiceOne"), "number": 1]
                ]
                diceCheatArray.shuffle()
            
                self.dice1.image = diceCheatArray[0]["image"] as? UIImage
                self.dice2.image = diceCheatArray[1]["image"] as? UIImage
                self.dice3.image = diceCheatArray[2]["image"] as? UIImage
                
                dicePoint = (diceCheatArray[0]["number"] as! Int) + (diceCheatArray[1]["number"] as! Int) + (diceCheatArray[2]["number"] as! Int)
                statusLabel.text = "\(dicePoint)"
                print(dicePoint)
                
            case 2:
                var diceCheatArray = [
                    ["image":#imageLiteral(resourceName: "DiceFour"), "number": 4],
                    ["image":#imageLiteral(resourceName: "DiceFour"), "number": 4],
                    ["image":#imageLiteral(resourceName: "DiceThree"), "number": 3]
                ]
                diceCheatArray.shuffle()
            
                self.dice1.image = diceCheatArray[0]["image"] as? UIImage
                self.dice2.image = diceCheatArray[1]["image"] as? UIImage
                self.dice3.image = diceCheatArray[2]["image"] as? UIImage
                
                dicePoint = (diceCheatArray[0]["number"] as! Int) + (diceCheatArray[1]["number"] as! Int) + (diceCheatArray[2]["number"] as! Int)
                statusLabel.text = "\(dicePoint)"
                print(dicePoint)

            case 3:
                var diceCheatArray = [
                    ["image":#imageLiteral(resourceName: "DiceThree"), "number": 3],
                    ["image":#imageLiteral(resourceName: "DiceThree"), "number": 3],
                    ["image":#imageLiteral(resourceName: "DiceFive"), "number": 5]
                ]
                diceCheatArray.shuffle()
            
                self.dice1.image = diceCheatArray[0]["image"] as? UIImage
                self.dice2.image = diceCheatArray[1]["image"] as? UIImage
                self.dice3.image = diceCheatArray[2]["image"] as? UIImage
                
                dicePoint = (diceCheatArray[0]["number"] as! Int) + (diceCheatArray[1]["number"] as! Int) + (diceCheatArray[2]["number"] as! Int)
                statusLabel.text = "\(dicePoint)"
                print(dicePoint)
                
            case 4:
                var diceCheatArray = [
                    ["image":#imageLiteral(resourceName: "DiceOne"), "number": 1],
                    ["image":#imageLiteral(resourceName: "DiceFive"), "number": 5],
                    ["image":#imageLiteral(resourceName: "DiceFive"), "number": 5]
                ]
                diceCheatArray.shuffle()
            
                self.dice1.image = diceCheatArray[0]["image"] as? UIImage
                self.dice2.image = diceCheatArray[1]["image"] as? UIImage
                self.dice3.image = diceCheatArray[2]["image"] as? UIImage
                
                dicePoint = (diceCheatArray[0]["number"] as! Int) + (diceCheatArray[1]["number"] as! Int) + (diceCheatArray[2]["number"] as! Int)
                statusLabel.text = "\(dicePoint)"
                print(dicePoint)
                
            case 5:
                var diceCheatArray = [
                    ["image":#imageLiteral(resourceName: "DiceThree"), "number": 3],
                    ["image":#imageLiteral(resourceName: "DiceSix"), "number": 6],
                    ["image":#imageLiteral(resourceName: "DiceTwo"), "number": 2]
                ]
                diceCheatArray.shuffle()
            
                self.dice1.image = diceCheatArray[0]["image"] as? UIImage
                self.dice2.image = diceCheatArray[1]["image"] as? UIImage
                self.dice3.image = diceCheatArray[2]["image"] as? UIImage
                
                dicePoint = (diceCheatArray[0]["number"] as! Int) + (diceCheatArray[1]["number"] as! Int) + (diceCheatArray[2]["number"] as! Int)
                statusLabel.text = "\(dicePoint)"
                print(dicePoint)
                
            case 6:
                var diceCheatArray = [
                    ["image":#imageLiteral(resourceName: "DiceFour"), "number": 4],
                    ["image":#imageLiteral(resourceName: "DiceTwo"), "number": 2],
                    ["image":#imageLiteral(resourceName: "DiceFive"), "number": 5]
                ]
                diceCheatArray.shuffle()
            
                self.dice1.image = diceCheatArray[0]["image"] as? UIImage
                self.dice2.image = diceCheatArray[1]["image"] as? UIImage
                self.dice3.image = diceCheatArray[2]["image"] as? UIImage
                
                dicePoint = (diceCheatArray[0]["number"] as! Int) + (diceCheatArray[1]["number"] as! Int) + (diceCheatArray[2]["number"] as! Int)
                statusLabel.text = "\(dicePoint)"
                print(dicePoint)
                
            default:
                diceCheat = 0
            }
            diceCheat = 0
            marking.alpha = 0.4
        }
        
        print("Godmode : \(diceCheat)")
    }
    
    @IBAction func recentButton(_ sender: UIButton) {
        
        print("Dice Record : \(diceRecord)")
        
        var d1Record = dice1.image
        var d2Record = dice2.image
        var d3Record = dice3.image
        
        print(dice1.image!)
        print(dice2.image!)
        print(dice3.image!)
        
    }
    
    @IBAction func runButton(_ sender: UIButton) {
        
        self.statusLabel.text = "CHECK DICE"
        self.loading.startAnimating()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.dice1.image = UIImage(named: "DiceOne")
            self.dice2.image = UIImage(named: "DiceOne")
            self.dice3.image = UIImage(named: "DiceOne")
            self.statusLabel.text = ".CHECK DICE."
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.dice1.image = UIImage(named: "DiceTwo")
                self.dice2.image = UIImage(named: "DiceTwo")
                self.dice3.image = UIImage(named: "DiceTwo")
                self.statusLabel.text = "..CHECK DICE.."
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.dice1.image = UIImage(named: "DiceThree")
                    self.dice2.image = UIImage(named: "DiceThree")
                    self.dice3.image = UIImage(named: "DiceThree")
                    self.statusLabel.text = "...CHECK DICE..."
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.dice1.image = UIImage(named: "DiceFour")
                        self.dice2.image = UIImage(named: "DiceFour")
                        self.dice3.image = UIImage(named: "DiceFour")
                        self.statusLabel.text = "ARE"
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            self.dice1.image = UIImage(named: "DiceFive")
                            self.dice2.image = UIImage(named: "DiceFive")
                            self.dice3.image = UIImage(named: "DiceFive")
                            self.statusLabel.text = "YOU"
                            
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                self.dice1.image = UIImage(named: "DiceSix")
                                self.dice2.image = UIImage(named: "DiceSix")
                                self.dice3.image = UIImage(named: "DiceSix")
                                self.statusLabel.text = "READY ?"
                            
                                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                    self.dice1.image = UIImage(named: "DiceOne")
                                    self.dice2.image = UIImage(named: "DiceOne")
                                    self.dice3.image = UIImage(named: "DiceOne")
                                    self.statusLabel.text = "GOOD LUCK"
                                    
                                    self.loading.stopAnimating()
                                    
                                    
                                
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        self.dice1.image = UIImage(named: "DiceOne")
        self.dice2.image = UIImage(named: "DiceOne")
        self.dice3.image = UIImage(named: "DiceOne")
        statusLabel.text = ""
        
    }
    
    
    @objc func cheater() {
        
        if diceCheat == 1{
            diceCheat = 0
            marking.alpha = 0.4
            
        } else {
            
            diceCheat = 1
            marking.alpha = 1
        }
        
        print("Godmode : \(diceCheat)")
        
    }
    
    
    

}

