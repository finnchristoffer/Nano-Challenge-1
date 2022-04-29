//
//  Workout.swift
//  Workout Apps Planner
//
//  Created by Finn Christoffer Kurniawan on 28/04/22.
//

import Foundation
import SwiftUI

struct Workout: Identifiable {
    // variable ID is being set to the returned unique identifier generated from the method UUID ()
    var id = UUID()
    
    // variable names with their respective area
    var day: String
    var bodyParts: String
    var image: String
    var routine: [String]
}

var workoutsData =  [
    Workout(day: "Monday", bodyParts: "Chest", image: "push-ups", routine: ["Warmup", "Push-ups", "Cool Down"]),
    Workout(day: "Tuesday", bodyParts: "Back", image: "shoulder", routine: ["Warmup", "Pull-ups", "Cool Down"]),
    Workout(day: "Wednesday", bodyParts: "Shoulder", image: "pull-ups", routine: ["Warmup", "Hold Ropes", "Cool Down"]),
    Workout(day: "Thursday", bodyParts: "Abs", image: "abs-workout", routine: ["Warmup", "Sit Up", "Cool Down"]),
    Workout(day: "Friday", bodyParts: "Legs", image: "leg-workout", routine: ["Warmup", "Squad", "Cool Down"]),
    Workout(day: "Saturday", bodyParts: "Biceps", image: "biceps", routine: ["Warmup", "Biceps Curl", "Cool Down"]),
    Workout(day: "Sunday", bodyParts: "Rest", image: "rest", routine: ["Warmup", "Pushups", "Cool Down"])
]
