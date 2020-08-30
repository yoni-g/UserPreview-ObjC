//
//  ViewController.m
//  UserPreview-ObjC
//
//  Created by Yonathan Goriachnick on 25/08/2020.
//  Copyright © 2020 YGApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _searchBar.placeholder = @"Search for users";
    _userArr = @[@"Yoni",@"Joe",@"Mosses"];
    [_usersCollectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"userCell"];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section{
    return _userArr.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                           cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"userCell" forIndexPath:indexPath];
    
    UILabel *label = [UILabel alloc];
    NSString *userName = [self.userArr objectAtIndex:indexPath.row];
    label.text = userName;
    label.backgroundColor = [UIColor whiteColor];
    NSLog(@"%@", userName);
    [cell.backgroundView addSubview:label];
    cell.backgroundColor = [UIColor systemTealColor];
    
    return cell;
}



@end
