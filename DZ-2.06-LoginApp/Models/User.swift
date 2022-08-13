//
//  User.swift
//  DZ-2.06-LoginApp
//
//  Created by Genas1986 on 13.08.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: String
    
    static func getUserDate() -> User {
        User(
            login: "User",
            password: "Password",
            person: ""
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Гена",
            surname: "Сиваков",
            photo: "GS",
            bio: """
Сиваков Гена родился 29 июня 1986 года в подмосковном городе Балашиха.
В 2008 году закончил МГУПИ. В настоящее время трудится в компании Hyperline,
на должности конструктора. Собирается стать iOS разработчиком. Поживем увидим.
""",
            job: Company.getCompany())
    }
}

struct Company {
    let title: String
    let JobTitle: JobTitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "Hiperline",
            JobTitle: .fuckUp,
            department: .designDepartment
        )
    }
}

enum JobTitle: String {
    case supervisor = "Руководитель"
    case constructor = "Конструктор"
    case fuckUp = "Распиздяй"
}

enum Department: String {
    case marketing = "Маркетинг"
    case management = "Менеджмент"
    case designDepartment = "Конструкторский отдел"
}




