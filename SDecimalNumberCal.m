//
//  SDecimalNumberCal.m
//  Decimal
//
//  Created by song on 2019/12/11.
//  Copyright © 2019 song. All rights reserved.
//

#import "SDecimalNumberCal.h"

@implementation SDecimalNumberCal

- (NSString *)formatStringToNumber:(NSString *)stringNum scale:(short)scale {
	NSDecimalNumberHandler * handler;
	if (scale == -1) {
		handler = [NSDecimalNumberHandler defaultDecimalNumberHandler];
	} else {
		handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
	}
	NSDecimalNumber * strDec = [NSDecimalNumber decimalNumberWithString:stringNum locale:[NSLocale currentLocale]];
	NSAssert(strDec != [NSDecimalNumber notANumber], @"strDec is not a NSDecimalNumber");
	NSDecimalNumber * res = [strDec decimalNumberByAdding:[NSDecimalNumber zero] withBehavior:handler];
	return [res stringValue];
}


- (NSString *)add:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale {
	NSDecimalNumberHandler * handler;
	if (scale == -1) {
		handler = [NSDecimalNumberHandler defaultDecimalNumberHandler];
	} else {
		handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
	}
	NSDecimalNumber * firstDec = [NSDecimalNumber decimalNumberWithString:firstStringNumber locale:[NSLocale currentLocale]];
	NSAssert(firstDec != [NSDecimalNumber notANumber], @"firstDec is not a NSDecimalNumber");
	NSDecimalNumber * secondDec = [NSDecimalNumber decimalNumberWithString:secondStringNumber locale:[NSLocale currentLocale]];
	NSAssert(secondDec != [NSDecimalNumber notANumber], @"secondDec is not a NSDecimalNumber");
	return [[firstDec decimalNumberByAdding:secondDec withBehavior:handler] stringValue];
}

- (NSString *)subtracting:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale {
	NSDecimalNumberHandler * handler;
	if (scale == -1) {
		handler = [NSDecimalNumberHandler defaultDecimalNumberHandler];
	} else {
		handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
	}
	NSDecimalNumber * firstDec = [NSDecimalNumber decimalNumberWithString:firstStringNumber locale:[NSLocale currentLocale]];
	NSAssert(firstDec != [NSDecimalNumber notANumber], @"firstDec is not a NSDecimalNumber");
	NSDecimalNumber * secondDec = [NSDecimalNumber decimalNumberWithString:secondStringNumber locale:[NSLocale currentLocale]];
	NSAssert(secondDec != [NSDecimalNumber notANumber], @"secondDec is not a NSDecimalNumber");
	return [[firstDec decimalNumberBySubtracting:secondDec withBehavior:handler] stringValue];
}

- (NSString *)multiplyingBy:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale {
	NSDecimalNumberHandler * handler;
	if (scale == -1) {
		handler = [NSDecimalNumberHandler defaultDecimalNumberHandler];
	} else {
		handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
	}
	NSDecimalNumber * firstDec = [NSDecimalNumber decimalNumberWithString:firstStringNumber locale:[NSLocale currentLocale]];
	NSAssert(firstDec != [NSDecimalNumber notANumber], @"firstDec is not a NSDecimalNumber");
	NSDecimalNumber * secondDec = [NSDecimalNumber decimalNumberWithString:secondStringNumber locale:[NSLocale currentLocale]];
	NSAssert(secondDec != [NSDecimalNumber notANumber], @"secondDec is not a NSDecimalNumber");
	return [[firstDec decimalNumberByMultiplyingBy:secondDec withBehavior:handler] stringValue];
}

- (NSString *)dividingBy:(NSString *)firstStringNumber to:(NSString *)secondStringNumber scale:(short)scale {
	NSDecimalNumberHandler * handler;
	if (scale == -1) {
		handler = [NSDecimalNumberHandler defaultDecimalNumberHandler];
	} else {
		handler = [NSDecimalNumberHandler decimalNumberHandlerWithRoundingMode:NSRoundPlain scale:scale raiseOnExactness:NO raiseOnOverflow:NO raiseOnUnderflow:NO raiseOnDivideByZero:YES];
	}
	NSDecimalNumber * firstDec = [NSDecimalNumber decimalNumberWithString:firstStringNumber locale:[NSLocale currentLocale]];
	NSAssert(firstDec != [NSDecimalNumber notANumber], @"firstDec is not a NSDecimalNumber");
	NSDecimalNumber * secondDec = [NSDecimalNumber decimalNumberWithString:secondStringNumber locale:[NSLocale currentLocale]];
	NSAssert(secondDec != [NSDecimalNumber notANumber], @"secondDec is not a NSDecimalNumber");
	NSAssert(secondDec != [NSDecimalNumber zero], @"secondDec can't be a zero DecimalNumber");
	return [[firstDec decimalNumberByDividingBy:secondDec withBehavior:handler] stringValue];
}

@end
