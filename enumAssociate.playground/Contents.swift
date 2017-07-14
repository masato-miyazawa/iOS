//: Playground - noun: a place where people can play

import UIKit

enum OvenState {
    case on(Double)
    case off
}

var ovenState = OvenState.on(450)

switch ovenState {
case let .on(temperature):
    print("The oven is on and set to \(temperature) degrees.")
case .off:
    print("The oven is off.")
}



class Photo:Equatable {
    let id: Int
    init(id: Int) {
        self.id = id
    }
    
    static func ==(lhs: Photo, rhs: Photo) -> Bool {
        return lhs.id == rhs.id
    }
}

let p1 = Photo(id: 1)
let p2 = Photo(id: 1)

print(p1 == p2)




extension Int {
    var doulbed: Int {
        return self * 2
    }
}





















