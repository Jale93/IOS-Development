//
//  CarRepository.swift
//  Session2
//
//  Created by Jala Mammadli on 14.04.22.
//

import Foundation
import UIKit

class Car {
    var passengerSize: Int
    var fuelType: EngineFuel
    var color: UIColor
    
    init(
        passengerSize: Int,
        fuelType: EngineFuel,
        color: UIColor
    ){
        self.passengerSize = passengerSize
        self.fuelType = fuelType
        self.color = color
    }
    init(){
        self.passengerSize = 4
        self.fuelType = .petrol
        self.color = UIColor.black
    }
    func setPassengerSize(_ size: Int) -> Car{
        self.passengerSize = size
        return self
    }
    func setFuelType(_ type: EngineFuel) -> Car{
        self.fuelType = type
        return self
    }
    func setColor(_ color: UIColor) -> Car{
        self.color = color
        return self
    }
    class Builder{
        private let car: Car = Car()
        func setPassengerSize(_ size: Int) -> Builder{
            self.car.passengerSize = size
            return self
        }
        func setFuelType(_ type: EngineFuel) -> Builder{
            self.car.fuelType = type
            return self
        }
        func setColor(_ color: UIColor) -> Builder{
            self.car.color = color
            return self
        }
        func build() -> Car{
            return self.car
        }
    }
}

class CarFactory{
    var passengerSize: Int
    var fuelType: EngineFuel
    var color: UIColor
    
    private init(){
        self.passengerSize = 4
        self.fuelType = .petrol
        self.color = UIColor.black
    }
    static func build(fuelType: EngineFuel,color: UIColor) -> CarFactory{
        let carFactory = CarFactory()
        carFactory.fuelType = fuelType
        carFactory.color = color
        return carFactory
    }
    
}

enum EngineFuel {
    case petrol, diesel
}

protocol CarRepositoryProtocol {
var tires: [Tyre] {get}
func getCars() -> [Car]
}
class CarRepository: AbstractCarRepository,CarRepositoryProtocol {
private var cars = [Car]()
var tires:[Tyre]
override init() {
    self.tires = [Tyre]()
    self.tires.append(Tyre.init(size: 18))
    self.cars.append(
        Car.Builder()
        .setColor(UIColor.white)
        .build()
    )
    self.cars.append(
        Car.Builder()
            .setColor(UIColor.cyan)
            .setFuelType(EngineFuel.diesel)
            .setPassengerSize(10)
            .build()
    )
}

func getCars() -> [Car]{
    return self.cars
}
override func drive(){
    super.drive()
    print("drive child")
}
}

struct Tyre {
var size: Int
}
open class AbstractCarRepository {
func drive(){
    print("drive")
}
}
extension CarRepository{
func driveFast(){
    print("drive fast")
}
}
