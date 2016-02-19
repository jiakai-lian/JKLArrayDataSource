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
    return (id <UITableViewDataSource>) self;
}

- (instancetype)initWithItems:(NSArray *)items
               cellIdentifier:(NSString *)cellIdentifier
           cellConfigureBlock:(CellConfigureBlock)cellConfigureBlock {
    self = [super init];
    if (self) {
        _items              = [items copy];
        _cellIdentifier     = [cellIdentifier copy];
        _cellConfigureBlock = [cellConfigureBlock copy];
    }

    return self;
}

+ (instancetype)sourceWithItems:(NSArray *)items
                 cellIdentifier:(NSString *)cellIdentifier
             cellConfigureBlock:(CellConfigureBlock)cellConfigureBlock {
    return [[self alloc] initWithItems:items
                        cellIdentifier:cellIdentifier
                    cellConfigureBlock:cellConfigureBlock];
}


@end