//
//  ViewController.swift
//  Session_1
//
//  Created by Jala Mammadli on 11.04.22.
//

import UIKit

class ViewController: UIViewController {
    
    private let vm = MainViewModel()
    
    let cars = vm.getCars()

    var mutatingStringText = "test1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("viewDidLoad")
        self.view.backgroundColor = .white
//        print("self.view.frame.width \(self.view.frame.width)")
//        print("self.view.frame.height \(self.view.frame.height)")
        
        let label = UILabel()
        label.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        label.text = "Test1"
//        label.textColor = .cyan
        label.textColor = UIColor.init(red: 0.4, green: 0.8, blue: 0.7, alpha: 1)
        label.backgroundColor = .lightGray
        self.view.addSubview(label)
        self.mutatingStringText = self.process()
        self.mutatingStringText = self.processAdd(text: self.mutatingStringText)
//        print(self.mutatingStringText)
        
        var listIntegers = [1,2,3,4,5,6]
        
        //forEach
        var sum = 0
        listIntegers.forEach { number in
            sum += number
        }
//        print(sum)
        
        //map
        let numberStructString = listIntegers.map{ numer in
            return NumberStruct(displayTitle: "\(numer)", value: numer)
            
        }
        
        //filter
        let listNumbersOdds = listIntegers.filter { number in
            return number % 2 == 1
        }
//        print(listNumbersOdds)
        
        //reduce
        let sumReduced = listIntegers.reduce(0) { partialResult, next in
            partialResult + next
        }
//        print(sumReduced)
        
        //complex
        
        let sumReducedCollection = listIntegers.filter { number in
            number >= 3
        }.reduce([NumberStruct]()){partialResult, number in
            var lastArray = partialResult
            lastArray.append(NumberStruct(displayTitle: "\(number)", value: number))
            return lastArray
        }
//        print(sumReducedCollection)
        
        let instance = SingletonStruct.shared
        
        var sum5 = instance.add(value1: 2, value2: 3)
//        print("sum: \(sum5)")
//        print("Unread notification count : \(instance.getUnreadNotifications())")
        instance.addUnreadNotification(number: 4)
//        print("Unread notification count after add : \(instance.getUnreadNotifications())")

        let childInstance = ViewControllerChild()
//        print("Unread notification count from child: \(childInstance.checkUnreadNotificationsSum())")
        instance.readAll()
//        print("Read All notifications")
//        print("Unread notification count from child: \(instance.getUnreadNotifications())")
//        print("Unread notification count from child: \(childInstance.checkUnreadNotificationsSum())")
        
        let car = Car.Builder()
            .setPassengerSize(5)
            .setFuelType(EngineFuel.petrol)
            .setColor(UIColor.white)
            .build()
//        print(car.passengerSize)
        
        let carFactory = CarFactory.build(fuelType: EngineFuel.diesel, color: UIColor.lightGray)
        print(carFactory)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    func process() -> String {
        return "test2"
    }
    func processAdd(text: String) -> String {
        return self.mutatingStringText + text
    }
}
    struct NumberStruct {
        let displayTitle: String
        let value: Int
    }
class SingletonStruct {
    static let shared: SingletonStruct = SingletonStruct()
    private var unreadNotificationsSum = 0
    
    private init(){
        
    }
    func add(value1: Int,value2: Int) -> Int {
        return value1 + value2
    }
    func readAll(){
        self.unreadNotificationsSum = 0
    }
    func getUnreadNotifications() -> Int {
        return self.unreadNotificationsSum
    }
    func addUnreadNotification(number: Int){
        self.unreadNotificationsSum += number
    }
}
class ViewControllerChild {
    func checkUnreadNotificationsSum() -> Int {
        return SingletonStruct.shared.getUnreadNotifications()
    }
}

