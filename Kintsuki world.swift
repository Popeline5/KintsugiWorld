//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(
                   title: "What is Kintsugi World?",
                   choice1: "Acceptance of change ", choice1Destination: 1,
                   choice2: "An embracing of the flawed or imperfect", choice2Destination: 1
               ),
               Story(
                   title: "What would you like to repair in this World?",
                   choice1: "Social issue", choice1Destination: 2,
                   choice2: "Environmental issue", choice2Destination: 2
               ),
               Story(
                   title: "What would be gold?",
                   choice1: "Creativity", choice1Destination: 4,
                   choice2: "Cooperation", choice2Destination: 3
               ),
               Story(
                   title: "Cooperation is the process of groups of organisms working or acting together for common, mutual, or some underlying benefit, as opposed to working in competition for selfish benefit.",
                   choice1: "The", choice1Destination: 0,
                   choice2: "End", choice2Destination: 0
               ),
               Story(
                   title: "Creativity is a phenomenon whereby something somehow new and somehow valuable is formed.",
                   choice1: "The", choice1Destination: 0,
                   choice2: "End", choice2Destination: 0
               )

    ]
    
    var storyNumber = 0;
    
    mutating func nextStory(_ userAnswer: String) {
        if userAnswer == stories[storyNumber].choice1 {
            storyNumber = stories[storyNumber].choice1Destination
                  }
        else {
            storyNumber = stories[storyNumber].choice2Destination
            
        }
        
    }
    
    func changeText() -> String {
          return  stories[storyNumber].title
        }
    
    func changeChoice1() -> String {
       return stories[storyNumber].choice1 }
    
    func changeChoice2() -> String {
       return stories[storyNumber].choice2 }
    
    
}
