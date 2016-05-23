//
//  Player.swift
//  2pRPG
//
//  Created by Mehdi Silini on 22/05/2016.
//  Copyright © 2016 Mehdi Silini. All rights reserved.
//

import Foundation

class Player {
    private var _name: String = "Player"
    private var _hp: Int = 100
    private var _AtkPower: Int = 15
    private var _wincount: Int = 0
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var AtkPower: Int {
        get {
            return _AtkPower
        }
    }
    
    var name: String {
        get {
            return _name
        }
    }
    
    var wincount: Int {
        get {
            return _wincount
        }
    }
    
    var isWinning: Bool {
        get {
            if wincount >= 3 {
                return true
            } else {
                return false
            }
        }
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return true
            } else {
                return false
            }
        }
    }
    
    init(startattack: Int, starthp: Int, name: String) {
        self._AtkPower = startattack
        self._hp = starthp
        self._name = name
    }
    
    func performAwin() -> Bool {
        self._wincount += 1
        return true
    }
    
    func attemptAtk(attackpwr: Int) -> Bool {
        let randfail = arc4random_uniform(6)
        if randfail != 0 {
            self._hp -= attackpwr
            return true
        } else {
            return false
        }
    }
    
    func setRandAtk(lowest: Int, highest: Int) -> Bool {
        let randatk = Int(arc4random_uniform(UInt32(highest) - UInt32(lowest)) + UInt32(lowest))
        self._AtkPower = randatk
        return true
    }
}