//
//  ATouchDelegate.h
//  Pods
//
//  Created by abyss on 2017/8/16.
//
//

typedef void (^ATouchBlock)(id sender);

@protocol ATouchDelegate <NSObject>
@property (nonatomic, copy) ATouchBlock tap;
@end
