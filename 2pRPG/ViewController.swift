//
//  ViewController.swift
//  2pRPG
//
//  Created by Mehdi Silini on 22/05/2016.
//  Copyright © 2016 Mehdi Silini. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var joueur1: Player!
    var joueur2: Player!
    
    @IBOutlet weak var hpPlayer1Label: UILabel!

    @IBOutlet weak var hpPlayer2Label: UILabel!
    
    @IBOutlet weak var informationLabel: UILabel!
    
    @IBOutlet weak var player1Image: UIImageView!
    
    @IBOutlet weak var player2Image: UIImageView!
    
    @IBOutlet weak var atkButton1: UIButton!
    
    @IBOutlet weak var atkButton2: UIButton!
    
    @IBOutlet weak var replayButton: UIButton!
    
    @IBOutlet weak var replayLabel: UILabel!
    
    @IBOutlet weak var soundButton: UIButton!
    
    let sounds = prepareSound()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        joueur1 = Player(startattack: 10, starthp: 100, name: "Player 1")
        joueur2 = Player(startattack: 10, starthp: 100, name: "Player 2")
        hpPlayer1Label.textColor = UIColor.greenColor()
        hpPlayer2Label.textColor = UIColor.greenColor()
        updateLabel(hpPlayer1Label, text: "\(joueur1.hp) HP")
        updateLabel(hpPlayer2Label, text: "\(joueur2.hp) HP")
    }
    override func viewDidAppear(animated: Bool) {
        sounds[8].volume = 0.30
        sounds[9].volume = 0.50
        playSound(8)
        playSound(9)
    }
    
    @IBAction func ButtonPressed(btn: UIButton!) {
        if btn.tag == 0 {
            atkButton1.hidden = true
            joueur1.setRandAtk(5, highest: 30)
            
            if joueur2.attemptAtk(joueur1.AtkPower) != true {
                updateLabel(informationLabel, text: "\(joueur1.name) attack fail !")
                playSound(10)
            } else {
                let randN = Int(arc4random_uniform(5))
                playSound(randN)
                updateLabel(informationLabel, text: "\(joueur1.name) attack \(joueur2.name) for \(joueur1.AtkPower) HP")
            }
            updateLabel(hpPlayer2Label, text: "\(joueur2.hp) HP")
            if joueur2.isAlive {
                joueur1.performAwin()
                performWin(1)
            } else {
                atkButton2.hidden = false
            }
        } else if btn.tag == 1 {
            atkButton2.hidden = true
            let randN = Int(arc4random_uniform(5))
            playSound(randN)
            joueur2.setRandAtk(5, highest: 30)
            if joueur1.attemptAtk(joueur2.AtkPower) != true {
                updateLabel(informationLabel, text: "\(joueur2.name) attack fail !")
                playSound(10)
            } else {
                let randN = Int(arc4random_uniform(5))
                playSound(randN)
                updateLabel(informationLabel, text: "\(joueur2.name) attack \(joueur1.name) for \(joueur2.AtkPower) HP")
            }
            updateLabel(hpPlayer1Label, text: "\(joueur1.hp) HP")
            if joueur1.isAlive {
                joueur2.performAwin()
                performWin(2)
            } else {
                atkButton1.hidden = false
            }
        } else {
            performReplay()
        }
    }

    @IBAction func replayButtonPressed(sender: AnyObject) {
        performReplay()
    }

    func updateLabel(label: UILabel, text: String) {
        label.text = text
    }
    
    func performReplay() -> Bool {
        if player2Image.hidden {
            player2Image.hidden = false
        }
        if player1Image.hidden {
            player1Image.hidden = false
        }
        if hpPlayer1Label.hidden {
            hpPlayer1Label.hidden = false
        }
        if hpPlayer2Label.hidden {
            hpPlayer2Label.hidden = false
        }
        if atkButton1.hidden {
            atkButton1.hidden = false
        }
        if atkButton2.hidden {
            atkButton2.hidden = false
        }
        replayLabel.hidden = true
        replayButton.hidden = true
        joueur1 = Player(startattack: 10, starthp: 100, name: "Player 1")
        joueur2 = Player(startattack: 10, starthp: 100, name: "Player 2")
        updateLabel(informationLabel, text: "Fight !")
        updateLabel(hpPlayer1Label, text: "\(joueur1.hp) HP")
        updateLabel(hpPlayer2Label, text: "\(joueur2.hp) HP")
        hpPlayer1Label.textColor = UIColor.greenColor()
        hpPlayer2Label.textColor = UIColor.greenColor()
        playSound(9)
        return true
    }
    func performWin(player: Int) -> Bool {
        atkButton1.hidden = true
        atkButton2.hidden = true
        if player == 1 {
            playSound(7)
            player2Image.hidden = true
            hpPlayer2Label.hidden = true
            hpPlayer1Label.textColor = UIColor.yellowColor()
            updateLabel(hpPlayer1Label, text: "WIN !")
            updateLabel(informationLabel, text: "\(joueur1.name) Win !")
        } else {
            playSound(6)
            player1Image.hidden = true
            hpPlayer1Label.hidden = true
            hpPlayer2Label.textColor = UIColor.yellowColor()
            updateLabel(hpPlayer2Label, text: "WIN !")
            updateLabel(informationLabel, text: "\(joueur2.name) Win !")
        }
        atkButton1.hidden = true
        atkButton2.hidden = true
        replayButton.hidden = false
        replayLabel.hidden = false
        return true
    }
    
    @IBAction func soundButtonPressed(sender: AnyObject) {
        let nosoundImage: UIImage = UIImage(named: "sound1.png")!
        let soundImage: UIImage = UIImage(named: "sound2.png")!
        if sounds[8].playing {
            sounds[8].stop()
            sounds[8].currentTime = 0
            self.soundButton.setImage(soundImage, forState: .Normal)
        } else {
            playSound(8)
            self.soundButton.setImage(nosoundImage, forState: .Normal)
        }
    }
    
    func playSound(n: Int) {
        if sounds[0].playing {
            sounds[0].stop()
        } else if sounds[1].playing {
            sounds[1].stop()
        } else if sounds[2].playing {
            sounds[2].stop()
        } else if sounds[3].playing {
            sounds[3].stop()
        } else if sounds[4].playing {
            sounds[4].stop()
        } else if sounds[5].playing {
            sounds[5].stop()
        } else if sounds[6].playing {
            sounds[6].stop()
        } else if sounds[7].playing {
            sounds[7].stop()
        } else if sounds[10].playing {
            sounds[10].stop()
        }
        print(n)
        sounds[0].currentTime = 0
        sounds[1].currentTime = 0
        sounds[2].currentTime = 0
        sounds[3].currentTime = 0
        sounds[4].currentTime = 0
        sounds[5].currentTime = 0
        sounds[6].currentTime = 0
        sounds[7].currentTime = 0
        sounds[10].currentTime = 0
        sounds[n].play()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

