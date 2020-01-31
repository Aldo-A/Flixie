//
//  DetailedViewController.swift
//  Flixie
//
//  Created by Aldo Almeida on 1/29/20.
//  Copyright © 2020 Aldo Almeida. All rights reserved.
//

import UIKit
import AlamofireImage

class DetailedViewController: UIViewController {

    var movies:[String:Any]!
    
    @IBOutlet weak var backView: UIImageView!
    @IBOutlet weak var frontView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        titleLabel.text=movies["title"] as? String
        titleLabel.sizeToFit()
        aboutLabel.text=movies["overview"] as? String
        aboutLabel.sizeToFit()
        
        let baseURL="https://image.tmdb.org/t/p/w185"
        let pathURL=movies["poster_path"] as! String
        let posterURL=URL(string: baseURL + pathURL)
        frontView.af_setImage(withURL: posterURL! )
        
        let backURL=movies["backdrop_path"] as! String
        let backDropURL=URL(string: "https://image.tmdb.org/t/p/w780" + backURL)
        backView.af_setImage(withURL: backDropURL! )
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
