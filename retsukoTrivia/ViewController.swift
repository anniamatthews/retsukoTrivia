
//  ViewController.swift
//  retsukoTrivia
//
//  Created by Annia on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    // Create individual Dinosaurs using Dinosaur model
    let profession = FunFact(name: "Profession",  description: "Retsuko is a 25-year-old red panda who works as an accountant in the accounting department of the trading firm where the series is set. Her age and occupation contribute to the relatability of her character, as many viewers can empathize with the challenges and pressures of navigating adulthood and the corporate world")
    let friends = FunFact(name: "Friends",  description: "Retsuko's social circle is as diverse as it gets. From her bubbly and supportive best friend Puko to the laid-back and carefree Fenneko, Retsuko is surrounded by a variety of personalities. Each friend brings a different dynamic to her life, offering both comedic relief and genuine camaraderie. The interactions between Retsuko and her friends add depth to the series, highlighting the importance of diverse friendships in navigating the ups and downs of adulthood.")
    let hobbies = FunFact(name: "Hobbies", description: "Retsuko has a deep love for karaoke and is a passionate singer. Her favorite genre is death metal, and she often frequents karaoke bars to unleash her inner frustrations through powerful and intense performances. This hobby becomes a humorous and therapeutic outlet for her, showcasing a different side of her personality outside the corporate world.")
    let loveLife = FunFact(name: "Love Life",  description: "Retsuko's love life is a rollercoaster of ups and downs. Throughout the series, she navigates the challenges of relationships, from awkward encounters to unexpected romantic interests. Whether it's dealing with office crushes or exploring the complexities of dating, Retsuko's romantic escapades add a relatable and humorous element to her character, showing that even in the chaotic world of Aggretsuko, love is never a straightforward journey.")
    
    var facts: [FunFact] = []
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Store Fun Fact Models
        facts = [profession, friends, hobbies, loveLife]
        
        
        
    }
    
    
    
    @IBAction func didTapFact(_ sender: UITapGestureRecognizer) {
        
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.fact = facts[0]
            } else if tappedView.tag == 1 {
                detailViewController.fact = facts[1]
            } else if tappedView.tag == 2 {
                detailViewController.fact = facts[2]
            } else if tappedView.tag == 3 {
                detailViewController.fact = facts[3]
            } else {
                print("no fun Fact was tapped, please check your selection.")
            }
        }
    }
    
    
    
    
    
    
    
    


}

