//
//  Person.swift
//  HomeWorkLesson2.3
//
//  Created by Богдан Олейник on 08.01.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let image: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Bogdan",
            surname: "Oleinik",
            image: "Photo"
        )
    }
}

struct AboutMe {
    let aboutMe: String
    let education: String
    let hobbies: String
    
    var aboutPerson: String {
        "\(aboutMe), \(education). \(hobbies)"
    }
        
        static func getAboutMe() -> AboutMe {
            AboutMe(
                aboutMe: "23 года, живу в Москве",
                education: "летом закончил университет по направлению экономическая безопасность",
                hobbies: "Через 2 месяца после работы по специальности понял, что это совсем не мое и решил заняться тем, что кажется очень сложным но при этом невероятно интересным. Много общался с другом веб-дизайнером и понял, что в сфере IT работают очень крутые и интересные люди. Попробовал веб, но всегда посещала мысль о разработке собственного приложения и вот я оказался здесь)"
            )
        }
    }





