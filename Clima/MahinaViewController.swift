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
    var image : String
    
}

class HeadlineTableViewCell: UITableViewCell {
    
    @IBOutlet weak var headlineTitleLabel: UILabel!
    @IBOutlet weak var headlineTextLabel: UILabel!

    @IBOutlet weak var headlineImageView: UIImageView!
    
}

class MahinaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath) as! HeadlineTableViewCell
        
        let headline = headlines[indexPath.row]
        cell.headlineTitleLabel?.text = headline.title
        cell.headlineTextLabel?.text = headline.text
        cell.headlineImageView?.image = UIImage(named: headline.image)
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    var headlines = [
        Headline(id: 1, title: "Hilo", text: "text.", image:"lono"),
        Headline(id: 2, title: "Hoaka", text: "text.", image:""),
        Headline(id: 3, title: "Ku Kahi", text: "text.",image:""),
        Headline(id: 4, title: "Ku Lua", text: "text.",image:""),
        Headline(id: 5, title: "Ku Kolu", text: "text.",image:""),
        Headline(id: 6, title: "Ku Pau", text: "text.",image:""),
        Headline(id: 7, title: "Ole Ku Kahi", text: "text.",image:""),
        Headline(id: 8, title: "Ole Ku Lua", text: "text.",image:""),
        Headline(id: 9, title: "Ole Ku Kolu", text: "text.",image:""),
        Headline(id: 10, title: "Ole Ku Pau", text: "text.",image:""),
        Headline(id: 11, title: "Huna", text: "text.",image:""),
        Headline(id: 12, title: "Mohalu", text: "text.",image:""),
        Headline(id: 13, title: "Hua", text: "text.",image:""),
        Headline(id: 14, title: "Akua", text: "text.",image:""),
        Headline(id: 15, title: "Hoku", text: "text.",image:""),
        Headline(id: 16, title: "Mahealani", text: "text.",image:""),
        Headline(id: 17, title: "Kulu", text: "text.",image:""),
        Headline(id: 18, title: "La Au Ku Kahi", text: "text.",image:""),
        Headline(id: 19, title: "La Au Ku Lua", text: "text.",image:""),
        Headline(id: 20, title: "La Au Ku Pau", text: "text.",image:""),
        Headline(id: 21, title: "Ole Ku Kahi", text: "text.",image:""),
        Headline(id: 22, title: "Ole Ku Lua", text: "text.",image:""),
        Headline(id: 23, title: "Ole Ku Pau", text: "text.",image:""),
        Headline(id: 24, title: "Kaloa Ku Kahi", text: "text.",image:""),
        Headline(id: 25, title: "Kaloa Ku Lua", text: "text.",image:""),
        Headline(id: 26, title: "Kaloa Ku Pau", text: "text.",image:""),
        Headline(id: 27, title: "Kane", text: "text.",image:""),
        Headline(id: 28, title: "Lono", text: "text.",image:""),
        Headline(id: 29, title: "Mauli", text: "text.",image:""),
        Headline(id: 30, title: "Muku", text: "text.",image:""),
        ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    // MARK: - Table view data source
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       
            return 150
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


