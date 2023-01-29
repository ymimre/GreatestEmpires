//
//  EmpireDataSource.swift
//  Greatest Empires
//
//  Created by user229720 on 18.11.2022.
//

import Foundation

struct EmpireDataSource {
    
    private let empireArray: [Empire]
    
    init() {
        empireArray = [
            Empire(
                imageName: 	"uk",
                empireName: "British Empire",
                sizeOfEmpire: 35.5,
                foundingYear: 1603,
                collapseYear: 1997),
            Empire(
                imageName: "mongol",
                empireName: "Mongol Empire",
                sizeOfEmpire: 24.0,
                foundingYear: 1206,
                collapseYear: 1368),
            Empire(
                imageName: "rus",
                empireName: "Russian Empire",
                sizeOfEmpire: 22.8,
                foundingYear: 1721,
                collapseYear: 1917),
            Empire(
                imageName: "qing",
                empireName: "Qing Dynasty",
                sizeOfEmpire: 14.7,
                foundingYear: 1639,
                collapseYear: 1912),
            Empire(
                imageName: "spain",
                empireName: "Spanish Empire",
                sizeOfEmpire: 13.7,
                foundingYear: 1492,
                collapseYear: 1976),
            Empire(
                imageName: "france",
                empireName: "French Empire",
                sizeOfEmpire: 11.5,
                foundingYear: 1534,
                collapseYear: 1980),
            Empire(
                imageName: "abbasid",
                empireName: "Abbasid Caliphate",
                sizeOfEmpire: 11.1,
                foundingYear: 750,
                collapseYear: 1258),
            Empire(
                imageName: "umayyad",
                empireName: "Umayyad Caliphate",
                sizeOfEmpire: 11.1,
                foundingYear: 661,
                collapseYear: 750),
            Empire(
                imageName: "yuan",
                empireName: "Yuan Dynasty",
                sizeOfEmpire: 11.0,
                foundingYear: 1271,
                collapseYear: 1368),
            Empire(
                imageName: "hun",
                empireName: "Xiongnu Empire",
                sizeOfEmpire: 9.0,
                foundingYear: -300,
                collapseYear: 100),
        ]
    }
    
    func getNumberOfEmpires() -> Int {
        return empireArray.count
    }
    
    func getEmpire(for index: Int) -> Empire? {
        guard index < empireArray.count
        else {
            return nil
        }
        return empireArray[index]
    }
}
