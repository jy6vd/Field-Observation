//
//  fieldOberservationViewController.swift
//  Field Observation
//
//  Created by Jonathan Yee on 5/2/19.
//  Copyright © 2019 Jonathan Yee. All rights reserved.
//

import UIKit

class fieldOberservationViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var desc: UITextView!
    
    let dateFormatter = DateFormatter()
    
    var subject: subject?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        if let subject = subject{
            image.image = UIImage.init(named: subject.classification.rawValue)
            name.text = subject.title
            desc.text = subject.description
            date.text = dateFormatter.string(from: subject.date)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
