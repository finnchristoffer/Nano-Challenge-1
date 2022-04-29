import Foundation
import SwiftUI

class WorkoutViewModel: ObservableObject {
    
    @Published var workoutsArr: [Workout] = workoutsData
    @Published var variation: String = ""
    @Published var workoutsDay: String = ""
    
    
    func alertView() {
        
        
        let alert = UIAlertController(title: "Add New Workout Variation", message: "Add the workout variation and day that need to be included", preferredStyle: .alert)
        
        alert.addTextField { variation in
            variation.placeholder = "Insert workout variation..."
        }
        
        alert.addTextField { day in
            day.placeholder = "Insert workout day..."
        }
                
        let addWorkout = UIAlertAction(title: "Add", style: .default, handler: {(_) in
            self.variation = alert.textFields![0].text!
            self.workoutsDay = alert.textFields![1].text!
            self.workoutsArr.append(Workout(day: self.workoutsDay, bodyParts: "", image: "", routine: [self.variation]))
        })
        let cancelWorkout = UIAlertAction(title: "Cancel", style: .destructive, handler: {(_) in})
       
        alert.addAction(addWorkout)
        alert.addAction(cancelWorkout)
        
        UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: {})
    }
    
    func delete(at offsets: IndexSet) {
        self.workoutsArr.remove(atOffsets: offsets)
    }

}
