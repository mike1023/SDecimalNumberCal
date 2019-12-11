//
//  SDecimalNumberCal.h
//  Decimal
//
//  Created by song on 2019/12/11.
//  Copyright © 2019 song. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SDecimalNumberCal : NSObject


- (NSString *)formatStringToNumber:(NSString *)stringNum scale:(short)scale;
- (NSString *)add:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale;
- (NSString *)subtracting:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale;
- (NSString *)multiplyingBy:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale;
- (NSString *)dividingBy:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale;

@end

NS_ASSUME_NONNULL_END
