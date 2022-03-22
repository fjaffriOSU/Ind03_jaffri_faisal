//
//  Utility.swift to load all the data
//  Ind03_jaffri_faisal
//
//  Created by Faisal Jaffri on 3/21/22.
//
import UIKit
import Foundation


// An array of touple that contains state name, nickname and area
var stateInfo:  [(String, String, String)] =
[
    ("Arkansas", "The Natural State", "52,068"),
    ("Alaska", "The Last Frontier", "571,951"),
    ("Arizona", "The Grand Canyon State", "113,635"),
    ("Alabama", "Yellowhammer State", "50,744"),
    ("California", "The Golden State", "155,959"),
    ("Colorado", "The Centennial State", "103,718"),
    ("Connecticut", "The Constitution State", "4,845"),
    ("Delaware", "The First State", "1,954"),
    ("Florida", "The Sunshine State", "53,927"),
    ("Georgia", "The Peach State", "57,906"),
    ("Hawaii", "The Aloha State", "6,423"),
    ("Idaho", "The Gem State", "82,747"),
    ("Illinois", "Prairie State", "55,584"),
    ("Indiana", "The Hoosier State", "35,867"),
    ("Iowa", "The Hawkeye State", "55,869"),
    ("Kansas", "The Sunflower State", "81,815"),
    ("Kentucky", "The Bluegrass State", "39,728"),
    ("Louisiana", "The Pelican State", "43,562"),
    ("Maine", "The Pine Tree State", "30,862"),
    ("Maryland", "The Old Line State", "9,774"),
    ("Massachusetts", "The Bay State", "7,840"),
    ("Michigan", "The Great Lakes State", "56,804"),
    ("Minnesota", "The North Star State", "79,610"),
    ("Mississippi", "The Magnolia State", "46,907"),
    ("Missouri", "The Show Me State", "68,886"),
    ("Montana", "The Treasure State", "145,552"),
    ("Nebraska", "The Cornhusker State", "76,872"),
    ("Nevada", "The Silver State", "109,826"),
    ("Wyoming", "The Equality or Cowboy State", "97,100"),
    ("New Hampshire", "The Granite State", "8,968"),
    ("New Jersey", "The Garden State", "7,417"),
    ("New Mexico", "The Land of Enchantment", "121,356"),
    ("New York", "The Empire State", "47,214"),
    ("North Carolina", "The Tar Heel State", "48,711"),
    ("North Dakota", "The Peace Garden State", "68,976"),
    ("Ohio", "The Buckeye State", "40,948"),
    ("Oklahoma", "The Sooner State", "68,667"),
    ("Oregon", "The Beaver State", "95,997"),
    ("Pennsylvania", "The Keystone State", "44,817"),
    ("Rhode Island", "The Ocean State", "1,045"),
    ("South Carolina", "The Palmetto State", "30,109"),
    ("South Dakota", "Mount Rushmore State", "75,885"),
    ("Tennessee", "The Volunteer State", "41,217"),
    ("Texas", "The Lone Star State", "261,797"),
    ("Utah", "The Beehive State", "82,144"),
    ("Vermont", "The Green Mountain State", "9,250"),
    ("Virginia", "The Old Dominion State", "39,594"),
    ("Washington", "The Evergreen State", "66,544"),
    ("West Virginia", "The Mountain State", "24,078"),
    ("Wisconsin", "The Badger State", "54,310")

]


//A class that creates a state object which contains metadate about each of the states
class State{
    var stateName:String
    var stateNickname:String
    var stateFlag: UIImage
    var stateMap: UIImage
    var area: String
    
    init(stateName:String,stateNickname:String,stateFlag:UIImage,stateMap:UIImage,area:String ){
        self.stateName = stateName
        self.stateNickname = stateNickname
        self.stateFlag = stateFlag
        self.stateMap = stateMap
        self.area = area
    }
}
