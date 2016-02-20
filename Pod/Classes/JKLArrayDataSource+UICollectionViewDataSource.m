//
// Created by jiakai lian on 20/02/2016.
//

#import "JKLArrayDataSource+UICollectionViewDataSource.h"

#import "JKLArrayDataSource+Private.h"

@implementation JKLArrayDataSource (UICollectionViewDataSource)

- (NSInteger)collectionView:(UICollectionView *)collectionView
     numberOfItemsInSection:(NSInteger)section {
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView
                  cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:self.cellIdentifier
                                                                           forIndexPath:indexPath];
    if (self.collectionViewCellConfigureBlock) {
        self.collectionViewCellConfigureBlock(cell, self.items[(NSUInteger) indexPath.row], indexPath);
    }

    return cell;
}


@end