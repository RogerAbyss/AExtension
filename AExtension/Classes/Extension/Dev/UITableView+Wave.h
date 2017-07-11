#define kBOUNCE_DISTANCE  4.f
#define kWAVE_DURATION   .5f

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,WaveAnimation) {
    LeftToRightWaveAnimation = -1,
    RightToLeftWaveAnimation = 1
};


@interface UITableView (Wave)

- (void)reloadDataAnimateWithWave:(WaveAnimation)animation;

@end
