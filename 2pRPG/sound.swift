//
//  sound.swift
//  2pRPG
//
//  Created by Mehdi Silini on 23/05/2016.
//  Copyright © 2016 Mehdi Silini. All rights reserved.
//

import Foundation
import AVFoundation


var btnSound1: AVAudioPlayer!
var btnSound2: AVAudioPlayer!
var btnSound3: AVAudioPlayer!
var btnSound4: AVAudioPlayer!
var btnSound5: AVAudioPlayer!
var btnSound6: AVAudioPlayer!
var btnSound7: AVAudioPlayer!
var btnSound8: AVAudioPlayer!
var btnSound9: AVAudioPlayer!
var btnSound10: AVAudioPlayer!
var btnSound11: AVAudioPlayer!

func prepareSound() -> [AVAudioPlayer]{
    let path1 = Bundle.main.path(forResource: "knife1", ofType: "wav")
    let path2 = Bundle.main.path(forResource: "knife2", ofType: "wav")
    let path3 = Bundle.main.path(forResource: "knife3", ofType: "wav")
    let path4 = Bundle.main.path(forResource: "knife4", ofType: "wav")
    let path5 = Bundle.main.path(forResource: "knife5", ofType: "wav")
    let path6 = Bundle.main.path(forResource: "knife6", ofType: "wav")
    let path7 = Bundle.main.path(forResource: "win1", ofType: "wav")
    let path8 = Bundle.main.path(forResource: "win2", ofType: "wav")
    let path9 = Bundle.main.path(forResource: "ambient", ofType: "wav")
    let path10 = Bundle.main.path(forResource: "fight", ofType: "wav")
    let path11 = Bundle.main.path(forResource: "parry", ofType: "wav")
    let soundUrl1 = URL(fileURLWithPath: path1!)
    let soundUrl2 = URL(fileURLWithPath: path2!)
    let soundUrl3 = URL(fileURLWithPath: path3!)
    let soundUrl4 = URL(fileURLWithPath: path4!)
    let soundUrl5 = URL(fileURLWithPath: path5!)
    let soundUrl6 = URL(fileURLWithPath: path6!)
    let soundUrl7 = URL(fileURLWithPath: path7!)
    let soundUrl8 = URL(fileURLWithPath: path8!)
    let soundUrl9 = URL(fileURLWithPath: path9!)
    let soundUrl10 = URL(fileURLWithPath: path10!)
    let soundUrl11 = URL(fileURLWithPath: path11!)
    
    do {
        try btnSound1 = AVAudioPlayer(contentsOf: soundUrl1)
        btnSound1.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound2 = AVAudioPlayer(contentsOf: soundUrl2)
        btnSound2.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound3 = AVAudioPlayer(contentsOf: soundUrl3)
        btnSound3.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound4 = AVAudioPlayer(contentsOf: soundUrl4)
        btnSound4.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound5 = AVAudioPlayer(contentsOf: soundUrl5)
        btnSound5.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound6 = AVAudioPlayer(contentsOf: soundUrl6)
        btnSound6.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound7 = AVAudioPlayer(contentsOf: soundUrl7)
        btnSound7.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound8 = AVAudioPlayer(contentsOf: soundUrl8)
        btnSound8.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound9 = AVAudioPlayer(contentsOf: soundUrl9)
        btnSound9.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound10 = AVAudioPlayer(contentsOf: soundUrl10)
        btnSound10.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound11 = AVAudioPlayer(contentsOf: soundUrl11)
        btnSound11.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    
    let sounds: [AVAudioPlayer] = [btnSound1,btnSound2,btnSound3,btnSound4,btnSound5,btnSound6,btnSound7,btnSound8,btnSound9,btnSound10,btnSound11]

    return sounds
}
