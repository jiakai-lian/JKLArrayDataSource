//
// Created by Jacky on 19/02/2016.
//

#import "JKLArrayDataSource.h"

@interface JKLArrayDataSource ()

@property(nonatomic, copy) NSArray *_Nullable items;
@property(nonatomic, copy) NSString *_Nonnull cellIdentifier;

@property(nonatomic, copy) CellConfigureBlock _Nullable cellConfigureBlock;

@end