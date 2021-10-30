//
//  Question.swift
//  PersonalQuiz
//
//  Created by Kirill Korotaev on 29.10.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions()-> [Question] {
        [
           Question(
               title: "Какую пищу предпочитаете?",
               type: .single,
               answers: [
                   Answer(title: "Стейк", type: .dog),
                   Answer(title: "Рыба", type: .cat),
                   Answer(title: "Морковь", type: .rabbit),
                   Answer(title: "Мармеладки", type: .fox)
               ]
           ),
           Question(
               title: "Что вам нравиться больше?",
               type: .multiple,
               answers: [
                   Answer(title: "Есть", type: .dog),
                   Answer(title: "Спать", type: .cat),
                   Answer(title: "Обниматься", type: .rabbit),
                   Answer(title: "Очень много спать", type: .fox)
                   
               ]
           ),
           Question(
               title: "На сколько сыроежек вы любите Кирилла Коротаева?",
               type: .ranged,
               answers: [
                   Answer(title: "Нисколько", type: .cat),
                   Answer(title: "Кто это?", type: .rabbit),
                   Answer(title: "Люблю всех", type: .dog),
                   Answer(title: "Бесконечно", type: .fox)
                   
               ]
           ),
       ]
    }
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

struct Answer {
    let title: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case fox = "🦊"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, которые вам нравяться и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .fox:
            return "Ваша сила в том, что вы самая лучшая Лисичка. Вас нужно любить и обнимать ❤️"
        }
    }
}
