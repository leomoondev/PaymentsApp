//
//  AmazonPaymentService.m
//  PaymentsApp
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void)processPaymentAmout:(NSInteger *)totalPayment {
    
    NSLog(@"Payment was made by Amazon");
}

- (BOOL)canProcessPayment {
    
    int paymentServiceOption = arc4random_uniform(1)+0;
    if (paymentServiceOption == 1) {
        return true;
    }
    else {
        return false;
    }
}

@end
