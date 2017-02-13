//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void)processPaymentAmout:(NSInteger *)totalPayment {
    
    if ([self.delegate canProcessPayment]) {
        [self.delegate processPaymentAmout:totalPayment];
    } else {
        NSLog(@"Sorry, the payment cannot be processed at this time");
    }
    
    
    
}
@end
