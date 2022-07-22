//
//  AffirmationsViewController.swift
//  finalProject
//
//  Created by Nguyen Phung on 7/21/22.
//

import UIKit

class AffirmationsViewController: UIViewController {
    
    let affirmation = [
            "My pain is manageable",
            "I am at home in my body",
            "My body is healing",
            "I relax and allow my mind to be at peace",
            "I am most accountable",
            "I am grateful for another day of life",
            "I am in the right place, during the right time, doing the right thing",
            "I prioritize my well-being",
            "I trust myself to make the right decisions",
            "I am safe and supported",
            "I love and accept myself",
            "I cherish my body",
            "I relax and allow this time for my body to rejuvenate",
            "My mind is stronger than my body",
            "I will conquer this pain",
            "My body is a powerful force of strength, resilience, and perseverance",
            "My body shows up for me each and every day, and it deserves my wholehearted love",
            "My body is truly beautiful",
            "I lovingly nurture my mind, body, and spirit",
            "My health is a blessing that I choose to appreciate everyday",
            "I am healthy, well, and vibrant",
            "I choose to respect and honor my body just as it is",
            "No matter what, my body is always worthy of love and respect",
            "I am perfect, whole, and complete, just the way I am",
            "Every single part of me vibrates at the frequency of total self-love",
            "I prioritize my total well-being: mind, body, and spirit",
            "I am worthy, strong, powerful, and always enough"
        ]
    
    @IBOutlet weak var labelPlace: UILabel!
    
    override func viewDidLoad() {
        self.navigationItem.leftBarButtonItem = nil
        self.navigationItem.hidesBackButton = true
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextAff(_ sender: Any) {
        let randomInt = Int.random(in:0..<28)
                let affirmationLabel = affirmation[randomInt]
                labelPlace.text = affirmationLabel
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
