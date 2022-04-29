//
//  ContentView.swift
//  Workout Apps Planner
//
//  Created by Finn Christoffer Kurniawan on 27/04/22.
//

import SwiftUI

struct ContentView: View {
        
    let workouts = workoutsData
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                ZStack {
                    Image("fitness-workout")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 300)
                    
                    //Vertical Stack - object stack vertically
                
                VStack{
                    
                    Spacer()
                    
                Text("Full Body Workout")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("For Biginners")
                    .fontWeight(.regular)
                    .foregroundColor(.white)
            }
                .padding()
                .frame(width: 380)
                .background(Color.black.opacity(0.4))
        }
                .frame(width: 370, height: 300)
                .cornerRadius(20)
                .clipped()
                .shadow(radius: 8)
                //.padding(.top, 20)
                .padding()
                
                Text("Weekly Plan")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding()
                
                //Stack where the inner line element are aranged/stack horizontally
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack (spacing: 30){
                        
                        ForEach(workouts) { workout in
                            //day card
                            NavigationLink(destination: WorkoutDetailView(workout: workout)) {
                                ZStack {
                                    Image(workout.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                        .frame(height: 220)
                                    
                                    VStack{
                                        
                                        Spacer()
                                        
                                        Text(workout.day)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        Text(workout.bodyParts)
                                        .fontWeight(.regular)
                                        .foregroundColor(.white)
                                }
                                    .padding()
                                    .frame(width: 200)
                                    .background(Color.black.opacity(0.3))
                                }
                                .frame(width: 200, height: 220)
                                .clipped()
                                .cornerRadius(20)
                            .shadow(radius: 8)
                            }

                        }
                    }
                    .padding()
                }
                .offset(x: 0, y: -30)
                
                Spacer()
            }
            .navigationBarTitle("Home Workout")
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
