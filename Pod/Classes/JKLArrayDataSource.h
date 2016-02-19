//
// Created by Jacky on 19/02/2016.
//

#import <Foundation/Foundation.h>

typedef void (^CellConfigureBlock)(UITableViewCell * _Nonnull cell, _Nonnull id item,  NSIndexPath * _Nonnull indexPath);

@interface JKLArrayDataSource : NSObject

@property(nonatomic, weak, readonly) id <UITableViewDataSource> tableViewDataSource;

- (instancetype _Nonnull)initWithItems:( NSArray * _Nullable )items
               cellIdentifier:( NSString * _Nullable )cellIdentifier
           cellConfigureBlock:(_Nullable CellConfigureBlock)cellConfigureBlock;
+ (instancetype _Nonnull)sourceWithItems:( NSArray * _Nullable )items
                 cellIdentifier:( NSString * _Nullable )cellIdentifier
             cellConfigureBlock:(_Nullable CellConfigureBlock)cellConfigureBlock;

@end