//
//  DetailViewController.swift
//  retsukoTrivia
//
//  Created by Annia on 1/22/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var fact: FunFact?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let fact = fact {
            print(fact.name)
            factName.text = fact.name
            factDescription.text = fact.description
            
        }
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var factName: UILabel!
    
    @IBOutlet weak var factDescription: UITextView!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
