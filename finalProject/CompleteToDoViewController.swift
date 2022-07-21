//
//  CompleteToDoViewController.swift
//  toDoList2022V2
//
//  Created by Scholar on 6/23/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    var selectedToDo : ToDoCD?

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }
    
    @IBAction func completeTapped(_ sender: Any) {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let theToDo = selectedToDo {
          context.delete(theToDo)
          navigationController?.popViewController(animated: true)
        }
      }
    }
}
