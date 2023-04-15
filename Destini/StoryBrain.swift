//
//  StoryBrain.swift
//  Destini
//
//  Created by Александр Вихарев on 15.04.2023.
//

import Foundation

struct StoryBrain {
    var storyNumber = 0
    let storiesArray = [Story(title: "Вы видите развилку на дороге и теперь Вам нужно решить куда дальше следовать",//0
                              choice1: "Пойти налево",
                              choice1distantion: 1,
                              choice2: "Пойти направо",
                              choice2distantion: 3),
                        Story(title: "Вы видите тигра, он явно зол и голоден. Очень голоден...", //1
                              choice1: "Убежать",
                              choice1distantion: 5,
                              choice2: "Попробовать напасть",
                              choice2distantion: 2 ),
                        Story(title: "Вы отчаянно боролись и даже взяли тигра \"на прогиб\", но он все-же съел Вас",//2
                              choice1: "Конец",
                              choice1distantion: 0,
                              choice2: "Конец",
                              choice2distantion: 0),
                        Story(title: "Вы нашли сундук, выглядит он очень \"дорого-богато\", но на нем табличка \"не открывать!!!\"", //3
                              choice1: "Открыть",
                              choice1distantion: 4,
                              choice2: "Уйти",
                              choice2distantion: 0),
                        Story(title: "Ого, столько золота! Жаль теперь придется платить налог Султану", //4
                              choice1: "Урааа, конец",
                              choice1distantion: 0,
                              choice2: "конец, ураааа",
                              choice2distantion: 0),
                        Story(title: "Тигр догнал и съел Вас. \n\n\n\nОчень жаль", //5
                              choice1: "Аааа, конец",
                              choice1distantion: 0,
                              choice2: "конец, аааа",
                              choice2distantion: 0)
    ]
    
    mutating func nextStory(userChoice: String ) {
        
        if userChoice == storiesArray[storyNumber].choice1 {
            storyNumber = storiesArray[storyNumber].choice1distantion
            
        } else if userChoice == storiesArray[storyNumber].choice2 {
            storyNumber = storiesArray[storyNumber].choice2distantion
        }
        
        
        
    }
    
    func getStoriesTitle() -> String {
        return storiesArray[storyNumber].title
    
    }
    
    func getChoice1() -> String {
        return storiesArray[storyNumber].choice1
        
    }
    
    func getChoice2() -> String {
        return storiesArray[storyNumber].choice2
    }
}





