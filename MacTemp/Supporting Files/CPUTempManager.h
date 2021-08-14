//
//  CPUTempManager.h
//  MacTemp
//
//  Created by Andrey Rusinovich on 13.08.2021.
//

#import <Foundation/Foundation.h>

double calculate(void);

NS_ASSUME_NONNULL_BEGIN

@interface CPUTempManager : NSObject

+ (double)temperature;

@end

NS_ASSUME_NONNULL_END
