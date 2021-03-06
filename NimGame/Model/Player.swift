//
//  Player.swift
//  NimGame
//
//  Created by imac on 14/11/2016.
//  Copyright © 2016 laurent. All rights reserved.
//

import Foundation

class Player {
    private var _name:String
    private var _score:Int
    
    var name:String {
        get{
            return self._name
        }
        set(newValue) {
            self._name = newValue
        }
    }
    var score: Int {
        get {
            return self._score
        }
        set(newValue){
            self._score = newValue
        }
    }
    
    init() {
        _name = ""
        _score = 0
    }
    
    init(name:String) {
        self._name = name
        self._score = 0
        var playersDictonary = SettingsManager.instance.playerList
        if playersDictonary[name] != nil {
            self._score = playersDictonary[name]!
        }
        playersDictonary[name] = _score
        SettingsManager.instance.playerList = playersDictonary
    }
    
    init(name:String, score:Int) {
        self._name = name
        self._score = score
    }
    
    func win(){
        self._score += 10
    }
    
    

}
