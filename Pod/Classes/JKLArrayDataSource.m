//
// Created by Jacky on 19/02/2016.
//

#import "JKLArrayDataSource+Private.h"


@implementation JKLArrayDataSource

#pragma mark - Life Cycle

#pragma mark - Private Methods

#pragma mark - Private Properties

#pragma mark - Public Methods

#pragma mark - Public Properties

- (id <UITableViewDataSource>)tableViewDataSource {
    if (self.tableViewCellConfigureBlock) {
        return (id <UITableViewDataSource>) self;
    }

    return nil;
}

- (id <UICollectionViewDataSource>)collectionViewDataSource {
    if (self.collectionViewCellConfigureBlock) {
        return (id <UICollectionViewDataSource>) self;
    }

    return nil;
}

- (instancetype)initWithItems:(NSArray *)items
               cellIdentifier:(NSString *)cellIdentifier
           cellConfigureBlock:(TableViewCellConfigureBlock)tableViewCellConfigureBlock {
    self = [super init];
    if (self) {
        _items                       = [items copy];
        _cellIdentifier              = [cellIdentifier copy];
        _tableViewCellConfigureBlock = [tableViewCellConfigureBlock copy];
    }

    return self;
}

+ (instancetype)tableViewDataSourceWithItems:(NSArray *_Nullable)items
                                            cellIdentifier:(NSString *_Nullable)cellIdentifier
                                        cellConfigureBlock:(_Nullable TableViewCellConfigureBlock)tableViewCellConfigureBlock {
    return [[self alloc] initWithItems:items
                        cellIdentifier:cellIdentifier
                    cellConfigureBlock:tableViewCellConfigureBlock];
}

- (instancetype)   initWithItems:(NSArray *)items
                  cellIdentifier:(NSString *)cellIdentifier
collectionViewCellConfigureBlock:(CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock {
    self = [super init];
    if (self) {
        _items                            = [items copy];
        _cellIdentifier                   = [cellIdentifier copy];
        _collectionViewCellConfigureBlock = [collectionViewCellConfigureBlock copy];
    }

    return self;
}

+ (instancetype)collectionViewDataSourceWithItems:(NSArray *_Nullable)items
                                                      cellIdentifier:(NSString *_Nullable)cellIdentifier
                                    collectionViewCellConfigureBlock:(_Nullable CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock {
    return [[self alloc] initWithItems:items
                        cellIdentifier:cellIdentifier
      collectionViewCellConfigureBlock:collectionViewCellConfigureBlock];
}


@end