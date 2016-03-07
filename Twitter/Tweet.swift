//
//  Tweet.swift
//  Twitter
//
//  Created by Maca A. Rojas Bustamante on 2/23/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class Tweet: NSObject {
    
    var user: User?
    var tweetID: NSNumber?
    
    var text: String?
    var timeStamp: NSDate?
    
    var favoritesCount: Int = 0
    var retweetCount: Int = 0

  
    
    init(dictionary: NSDictionary){
        
        user = User(dictionary: (dictionary["user"] as? NSDictionary)!)
        tweetID = dictionary["id"] as? Int
        text = dictionary["text"] as? String
        favoritesCount = (dictionary["favourites_count"] as? Int) ?? 0
        retweetCount = (dictionary["retweet_count"] as? Int) ?? 0


        
        let timestampString = dictionary["created_at"] as? String
        
        if let timestampString = timestampString{
            let formatter = NSDateFormatter()
            formatter.timeZone = NSTimeZone(name: "EST")
            formatter.dateFormat = "EEE MMM d HH:mm:ss Z y"
            timeStamp = formatter.dateFromString(timestampString)
        }
    }
    
    
    class func tweetsWithArray(dictionaries: [NSDictionary]) -> [Tweet]{
        
        var tweets = [Tweet]()
        
        for dictionary in dictionaries{
            let tweet = Tweet(dictionary: dictionary)
            tweets.append(tweet)
        }
        return tweets
    }
    
    
}
