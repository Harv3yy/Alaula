//
//  MahinaViewController.swift
//  
//
//  Created by Haumana46 on 4/4/19.
//

import UIKit

struct Headline {
    
    var id : Int
    var title : String
    var text : String
    //var image : String
    
}

class HeadlineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headlineTitleLabel: UILabel!
    @IBOutlet weak var headlineTextLabel: UILabel!

    
}

class MahinaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var headlines = [
        Headline(id: 1, title: "Lorem Ipsum", text: "text"),
        Headline(id: 2, title: "Aenean condimentum", text: "text."),
        Headline(id: 3, title: "In ac ante sapien", text: "text."),
        ]
    // MARK: - Table view data source
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! HeadlineTableViewCell
        
        let headline = headlines[indexPath.row]
        cell.headlineTitleLabel?.text = headline.title
        cell.headlineTextLabel?.text = headline.text
        //cell.headlineImageView?.image = UIImage(named: headline.image)
        
        return cell
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


