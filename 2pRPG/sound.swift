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
    let path1 = NSBundle.mainBundle().pathForResource("knife1", ofType: "wav")
    let path2 = NSBundle.mainBundle().pathForResource("knife2", ofType: "wav")
    let path3 = NSBundle.mainBundle().pathForResource("knife3", ofType: "wav")
    let path4 = NSBundle.mainBundle().pathForResource("knife4", ofType: "wav")
    let path5 = NSBundle.mainBundle().pathForResource("knife5", ofType: "wav")
    let path6 = NSBundle.mainBundle().pathForResource("knife6", ofType: "wav")
    let path7 = NSBundle.mainBundle().pathForResource("win1", ofType: "wav")
    let path8 = NSBundle.mainBundle().pathForResource("win2", ofType: "wav")
    let path9 = NSBundle.mainBundle().pathForResource("ambient", ofType: "wav")
    let path10 = NSBundle.mainBundle().pathForResource("fight", ofType: "wav")
    let path11 = NSBundle.mainBundle().pathForResource("parry", ofType: "wav")
    let soundUrl1 = NSURL(fileURLWithPath: path1!)
    let soundUrl2 = NSURL(fileURLWithPath: path2!)
    let soundUrl3 = NSURL(fileURLWithPath: path3!)
    let soundUrl4 = NSURL(fileURLWithPath: path4!)
    let soundUrl5 = NSURL(fileURLWithPath: path5!)
    let soundUrl6 = NSURL(fileURLWithPath: path6!)
    let soundUrl7 = NSURL(fileURLWithPath: path7!)
    let soundUrl8 = NSURL(fileURLWithPath: path8!)
    let soundUrl9 = NSURL(fileURLWithPath: path9!)
    let soundUrl10 = NSURL(fileURLWithPath: path10!)
    let soundUrl11 = NSURL(fileURLWithPath: path11!)
    
    do {
        try btnSound1 = AVAudioPlayer(contentsOfURL: soundUrl1)
        btnSound1.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound2 = AVAudioPlayer(contentsOfURL: soundUrl2)
        btnSound2.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound3 = AVAudioPlayer(contentsOfURL: soundUrl3)
        btnSound3.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound4 = AVAudioPlayer(contentsOfURL: soundUrl4)
        btnSound4.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound5 = AVAudioPlayer(contentsOfURL: soundUrl5)
        btnSound5.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound6 = AVAudioPlayer(contentsOfURL: soundUrl6)
        btnSound6.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound7 = AVAudioPlayer(contentsOfURL: soundUrl7)
        btnSound7.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound8 = AVAudioPlayer(contentsOfURL: soundUrl8)
        btnSound8.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound9 = AVAudioPlayer(contentsOfURL: soundUrl9)
        btnSound9.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound10 = AVAudioPlayer(contentsOfURL: soundUrl10)
        btnSound10.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    do {
        try btnSound11 = AVAudioPlayer(contentsOfURL: soundUrl11)
        btnSound11.prepareToPlay()
    } catch let err as NSError {
        print(err.debugDescription)
    }
    
    let sounds: [AVAudioPlayer] = [btnSound1,btnSound2,btnSound3,btnSound4,btnSound5,btnSound6,btnSound7,btnSound8,btnSound9,btnSound10,btnSound11]

    return sounds
}
