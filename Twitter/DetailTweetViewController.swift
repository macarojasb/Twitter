//
//  detailTweetViewController.swift
//  Twitter
//
//  Created by Maca A. Rojas Bustamante on 3/1/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class DetailTweetViewController: UIViewController {
    
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileUsername: UILabel!
    @IBOutlet weak var tweetText: UILabel!
    @IBOutlet weak var tweetTime: UILabel!
    
      
    var data: Tweet!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let tweet = data
        
        if let user = tweet.user {
            profileImageView.setImageWithURL(user.profileUrl!)
            profileUsername.text = "@\(user.screenname!)"
        }
            
        let formatter = NSDateFormatter()
        formatter.timeZone = NSTimeZone(name: "EST")
        formatter.dateFormat = "MMM d HH:mm"
        
     
        tweetTime.text = formatter.stringFromDate(tweet.timeStamp!)
        tweetText.text = tweet.text
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
