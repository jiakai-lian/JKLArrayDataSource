//
// Created by Jacky on 19/02/2016.
//

#import "JKLArrayDataSource+UITableViewDataSource.h"

#import "JKLArrayDataSource+Private.h"

@implementation JKLArrayDataSource (UITableViewDataSource)

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];

    if(self.cellConfigureBlock)
    {
        self.cellConfigureBlock(cell,self.items[(NSUInteger)indexPath.row], indexPath);
    }

    return cell;
}


@end