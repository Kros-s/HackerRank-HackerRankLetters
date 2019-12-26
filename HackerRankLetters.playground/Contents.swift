import UIKit

var hackerRank = "hackerrank"
var hackerRank2 = "hsackdsadsdaerrdsadank"
var cosarara = "rhbaasdndfsdskgbfefdbrsdfhuyatrjtcrtyytktjjt"


extension String {
    
    private func toDictionary(word: String) -> [Character: Int] {
        var dictionary: [Character: Int] = [:]
        word.forEach { dictionary[$0, default: 0] += 1 }
        return dictionary
    }
    
    func containsWordInOrder(_ word: String) -> Bool {
        var modifiedString = self
        return word.reduce(true) { (res, character) in
            guard res, let charIndex = modifiedString.firstIndex(of: character), let nextIndex = modifiedString.index(charIndex, offsetBy: 1, limitedBy: endIndex) else { return false }
            modifiedString = String(modifiedString[nextIndex..<modifiedString.endIndex])
            return true
        }
    }
    
    func containsWord(_ word: String) -> Bool {
        let currentWord = toDictionary(word: self)
        let comparativeWord = toDictionary(word: word)
        return comparativeWord.reduce(true) { (res, character) in
            let (key, value) = character
            
            guard let currentWordValue = currentWord[key], res, currentWordValue >= value else { return false }
            return true
        }
    }
}


let knarrekcah = "knarrekcah"
let hackerrank = "hackerrank"
let hackeronek = "hackeronek"
let abcdefghijklmnopqrstuvwxyz = "abcdefghijklmnopqrstuvwxyz"
let rhackerank = "rhackerank"
let ahankercka = "ahankercka"
let hacakaeararanaka = "hacakaeararanaka"
let hhhhaaaaackkkkerrrrrrrrank = "hhhhaaaaackkkkerrrrrrrrank"
let crackerhackerknar = "crackerhackerknar"
let hhhackkerbanker = "hhhackkerbanker"


knarrekcah.containsWordInOrder(hackerRank)
hackerrank.containsWordInOrder(hackerRank)
hackeronek.containsWordInOrder(hackerRank)
abcdefghijklmnopqrstuvwxyz.containsWordInOrder(hackerRank)

rhackerank.containsWordInOrder(hackerRank)

ahankercka.containsWordInOrder(hackerRank)
hacakaeararanaka.containsWordInOrder(hackerRank)
hhhhaaaaackkkkerrrrrrrrank.containsWordInOrder(hackerRank)
crackerhackerknar.containsWordInOrder(hackerRank)
hhhackkerbanker.containsWordInOrder(hackerRank)

