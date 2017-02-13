//
//  StripePaymentService.h
//  PaymentsApp
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface StripePaymentService : NSObject <PaymentDelegate>;

- (void)processPaymentAmout:(NSInteger *)totalPayment;
- (BOOL)canProcessPayment;
@end
