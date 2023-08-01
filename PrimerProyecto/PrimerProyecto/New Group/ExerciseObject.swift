//
//  ExerciseObj.swift
//  PrimerProyecto
//
//  Created by Vanessa Garcia on 30/06/23.
//

import Foundation

    class ExcerciseObj {
        var category : [Category]?
       /// var title: String?
        
        init(category: [Category]?) {
            self.category = category
        
        }
        
    }

    class Category {
        var name : String?
        var exercises : [Exercise]?
        
        init(name: String?, exercises: [Exercise]?) {
            self.name = name
            self.exercises = exercises
        }
    }

    class Exercise {
        var name: String?
        var description: String?
        var cover : String?
        var repeticion : Float?
        
        init(name: String?, description: String?, cover: String?, repeticion: Float?) {
            self.name = name
            self.description = description
            self.cover = cover
            self.repeticion = repeticion
        }
        
    }
