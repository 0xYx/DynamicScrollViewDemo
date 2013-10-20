//
//  CollectionView.m
//  DynamicScrollViewDemo
//
//  Created by john song on 13-10-19.
//  Copyright (c) 2013年 john song. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionCell.h"
static NSString *cellIdentifier = @"CollectionCell";
CGFloat _random() { return (float)rand() / (float)RAND_MAX;}
@interface CollectionViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (nonatomic, strong)IBOutlet UICollectionView *collectionView;
@end

@implementation CollectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_collectionView registerClass:[CollectionCell class] forCellWithReuseIdentifier:cellIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UICollectionView DataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    CollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    CGFloat red = _random();
    CGFloat green = _random();
    CGFloat blue = _random();
    cell.backgroundColor = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    return cell;
}

@end
