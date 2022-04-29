//
//  WorkoutDetailView.swift
//  Workout Apps Planner
//
//  Created by Finn Christoffer Kurniawan on 28/04/22.
//

import SwiftUI

struct WorkoutDetailView: View {
    
    @StateObject var viewModel = WorkoutViewModel()
    
    var workout: Workout
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                VStack(alignment: .leading) {
                    Text(workout.day)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.leading, 30)
                    Text(workout.bodyParts)
                    .fontWeight(.regular)
                    .padding(.leading, 30)
                }
                Spacer()
                Button(action: {
                    viewModel.alertView()
                }, label: {Image(systemName: "plus.circle")
                        .padding(.trailing,40)
                })
            }
            List {
                ForEach(viewModel.workoutsArr) { exercise in
                    ForEach(exercise.routine, id: \.self) { item in
                        if (exercise.day == workout.day){
                        Text(item)
                    }
                  }
              }.onDelete(perform: viewModel.delete)
            }
        }
    }
}
