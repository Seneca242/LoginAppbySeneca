//
//  Model.swift
//  LoginAppbySeneca
//
//  Created by Дмитрий Дмитрий on 17.07.2021.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> User {
        User(
            login: "Seneca",
            password: "Password",
            person: Person.getPersonInfo()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let biography: String
    let photo: String
    
    static func getPersonInfo() -> Person {
        Person(
            name: "Lucius",
            surname: "Seneca",
            biography: "Lucius Annaeus Seneca the Younger (/ˈsɛnɪkə/; c. 4 BC – AD 65), usually known as Seneca, was a Roman Stoic philosopher, statesman, dramatist, and in one work, satirist, from the post-Augustan age of Latin literature.  Seneca was born in Cordoba in Hispania, and raised in Rome, where he was trained in rhetoric and philosophy. His father was Seneca the Elder, his elder brother was Lucius Junius Gallio Annaeanus, and his nephew was the poet Lucan. In AD 41, Seneca was exiled to the island of Corsica under emperor Claudius, but was allowed to return in 49 to become a tutor to Nero. When Nero became emperor in 54, Seneca became his advisor and, together with the praetorian prefect Sextus Afranius Burrus, provided competent government for the first five years of Nero's reign. Seneca's influence over Nero declined with time, and in 65 Seneca was forced to take his own life for alleged complicity in the Pisonian conspiracy to assassinate Nero, in which he was likely to have been innocent. His stoic and calm suicide has become the subject of numerous paintings.  As a writer Seneca is known for his philosophical works, and for his plays, which are all tragedies. His prose works include a dozen essays and one hundred twenty-four letters dealing with moral issues. These writings constitute one of the most important bodies of primary material for ancient Stoicism. As a tragedian, he is best known for plays such as his Medea, Thyestes, and Phaedra. Seneca's influence on later generations is immense - during the Renaissance he was a sage admired and venerated as an oracle of moral, even of Christian edification; a master of literary style and a model for dramatic art.",
            photo: "Photo"
        )
    }
}
