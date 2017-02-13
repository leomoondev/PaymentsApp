//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Hyung Jip Moon on 2017-02-12.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

- (BOOL)canProcessPayment;
- (void)processPaymentAmout:(NSInteger *)totalPayment;

@end

@interface PaymentGateway : NSObject

@property (strong) id <PaymentDelegate> delegate;
- (void)processPaymentAmout:(NSInteger *)totalPayment;


@end
