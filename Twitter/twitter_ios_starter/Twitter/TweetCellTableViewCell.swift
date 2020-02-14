//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Wiliam Kwon on 2/24/19.
//  Copyright © 2019 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

    @IBOutlet weak var profileimageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var tweetContent: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var favButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    var favorited:Bool = false
    var tweetId:Int = -1
    
    @IBAction func favButton(_ sender: Any) {
        let toBeFavorited = !favorited
        if (toBeFavorited) {
            TwitterAPICaller.client?.favoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(true)
            }, failure: {(error) in
                print("Favorite did not succeed: \(error)")
            
        })
        
    }else {
            TwitterAPICaller.client?.unfavoriteTweet(tweetId: tweetId, success: {
                self.setFavorite(false)
            }, failure: {(error) in
                    print("Unfavorite did not succeed: \(error)")
                    
                })

            }
        
    }
    
    
    func setFavorite(_ isFavorited: Bool )  {
        favorited = isFavorited
        if (favorited){
            favButton.setImage(UIImage(named: "favor-icon-red"), for: UIControl.State.normal)
            
        }
        else {
            favButton.setImage(UIImage(named: "favor-icon"), for: UIControl.State.normal)
        }
        
    }
    @IBAction func retweetButton(_ sender: Any) {
        TwitterAPICaller.client?.retweet(tweetId: tweetId, success: {
            self.setRetweeted(true)
        }, failure: { (error) in
            print ("Error is retweeting: \(error)")
        })
    }
    func setRetweeted(_ isRetweeted:Bool)  {
        if (isRetweeted) {
            retweetButton.setImage(UIImage(named: "retweet-icon-green"), for:
            UIControl.State.normal)
            retweetButton.isEnabled = false
            
        } else{
            retweetButton.setImage(UIImage(named: "retweet-icon"), for :
                UIControl.State.normal)
                retweetButton.isEnabled = true
            
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}