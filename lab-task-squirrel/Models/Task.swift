//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local pizza spot!",
                 description: "Where is your favorite local pizza spot?"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go when you want to be with nature?"),
            Task(title: "Your favorite cafe",
                 description: "Where do you go when you are craving coffee?"),
            Task(title: "Your favorite beach",
                 description: "Where do you go when you want to go swimming?")
        ]
    }
}
