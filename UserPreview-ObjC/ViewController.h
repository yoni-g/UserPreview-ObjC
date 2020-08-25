//
//  ViewController.h
//  UserPreview-ObjC
//
//  Created by Yonathan Goriachnick on 25/08/2020.
//  Copyright © 2020 YGApps. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UICollectionView *usersCollectionView;
@property (strong, nonatomic)NSArray<NSString *> *userArr;

@end

