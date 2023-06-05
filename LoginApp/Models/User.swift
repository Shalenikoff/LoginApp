//
//  User.swift
//  LoginApp
//
//  Created by Кирилл Шалеников on 03.06.2023.
//
struct User {
    let login: String
    let password: String
    
    let personsInfo: Person
    
    static func getPersonsInfo() -> User {
        User(
            login: "SWIFTBOOK",
            password: "12345",
            personsInfo: Person.getPerson()
        )
    }
}
    


struct Person {
    let name: String
    let surname: String
    let age: String
    let image: String
    let discription: String
    let skills: String
    let work: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Swiftbook",
               surname: "School",
               age: "9",
               image: "Swift",
               discription: "The most intresting and effective online school of swift programming language. It has got the №1 community and the №1 educational programm for anyone, who want to be a real professional on swift",
               skills: "We can learn how to programm in iOS, macOS, iPadOS",
               work: "In breafcase of swiftbook there are: \n 1) Junior educational programm \n 2) Middle educational programm \n 3) Courses on various topics \n 4) personal forum \n 5) iOS Incubator \n 6) Beautiful web-site with documentation")
    }
}





//                User(
//                    userName: "SHALENIKOFF",
//                    userPassword: 12345,
//                    userPersonInfo: Person.(personName: "Kirill",
//                                            personSurname: "Shalenikov",
//                                            personsAge: 24,
//                                            personsImage: "Myself",
//                                            personsDiscription: "The student of 32th online stream in SwiftBook. Magister of Bauman Moscow State University. Not a millioner yet, but give me a time!) \n I want to be a programmer because I see it very interestig, perspective and creative profession. In addition I want to make an app, which can help people to solve their promlems",
//                                            personsSkills: "I have different skills, but here you can see top of them: \n - Project managing \n - Innovative manufacture organisation \n - Business development on IT ",
//                                            personsWork: "Now I'm work in the top 50 information security company in Russia as a project manager for 3 years after graduating my university")
//                    )
