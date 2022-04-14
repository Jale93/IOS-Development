//
//  MainViewModel.swift
//  Session2
//
//  Created by Jala Mammadli on 14.04.22.
//

import Foundation

class MainViewModel{
    private let carRepo = CarRepository()
    
    func getCars() -> [Car] {
        return self.carRepo.getCars()
    }
}
