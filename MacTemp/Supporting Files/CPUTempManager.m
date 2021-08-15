//
//  CPUTempManager.m
//  MacTemp
//
//  Created by Andrey Rusinovich on 13.08.2021.
//

#import "CPUTempManager.h"
#import "smc.h"

double calculate() {
    SMCOpen();
    double temperature = SMCGetTemperature(SMC_KEY_CPU_TEMP);
    SMCClose();
    return temperature;
}

@implementation CPUTempManager

+ (double)temperature
{
    return calculate();
}

@end
