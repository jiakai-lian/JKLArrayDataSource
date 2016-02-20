//
// Created by Jacky on 19/02/2016.
//

#import <Foundation/Foundation.h>

typedef void (^TableViewCellConfigureBlock)(UITableViewCell *_Nonnull cell, _Nonnull id item, NSIndexPath *_Nonnull indexPath);
typedef void (^CollectionViewCellConfigureBlock)(UITableViewCell *_Nonnull cell, _Nonnull id item, NSIndexPath *_Nonnull indexPath);

NS_ASSUME_NONNULL_BEGIN

@interface JKLArrayDataSource : NSObject

@property(nonatomic, weak, readonly) id <UITableViewDataSource>      tableViewDataSource;
@property(nonatomic, weak, readonly) id <UICollectionViewDataSource> collectionViewDataSource;

- (instancetype)initWithItems:(NSArray *)items
               cellIdentifier:(NSString *)cellIdentifier
           cellConfigureBlock:(TableViewCellConfigureBlock)tableViewCellConfigureBlock;
+ (instancetype _Nonnull)tableViewDataSourceWithItems:(NSArray *_Nullable)items
                                                     cellIdentifier:(NSString *_Nullable)cellIdentifier
                                                 cellConfigureBlock:(_Nullable TableViewCellConfigureBlock)tableViewCellConfigureBlock;

- (instancetype)   initWithItems:(NSArray *)items
                  cellIdentifier:(NSString *)cellIdentifier
collectionViewCellConfigureBlock:(CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock;
+ (instancetype _Nonnull)collectionViewDataSourceWithItems:(NSArray *_Nullable)items
                                                               cellIdentifier:(NSString *_Nullable)cellIdentifier
                                             collectionViewCellConfigureBlock:(_Nullable CollectionViewCellConfigureBlock)collectionViewCellConfigureBlock;

@end

NS_ASSUME_NONNULL_END