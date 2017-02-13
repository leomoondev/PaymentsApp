//
//  main.m
//  PaymentsApp
//
//  Created by Leo Moon on 2017-02-12.
//  Copyright © 2017 leomoon. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *userInput = [InputCollector new];
        
        
        NSInteger paymentTotal = (NSInteger)(arc4random(900) + 100);
        NSString *paymentMethod = [userInput inputForPrompt:[NSString stringWithFormat:@"\nThank you for shopping at Acme.com. Your total today is: $%ld Please select your payment method:\n1: Paypal\n2: Stripe\n3: Amazon\n4: ApplePay", (long)paymentTotal]];
        
        
        int paymentMethodInt = [paymentMethod intValue];
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        
        if (paymentMethodInt == 1) {
            PaypalPaymentService *paypalPS = [PaypalPaymentService new];
            paymentGateway.delegate = paypalPS;
            
            NSLog(@"Payment method is Paypal");
            
        } else if (paymentMethodInt == 2) {
            StripePaymentService *stripePS = [StripePaymentService new];
            paymentGateway.delegate = stripePS;
            
            NSLog(@"Payment method is Stripe");
        } else if (paymentMethodInt == 3) {
            AmazonPaymentService *amazonPS = [AmazonPaymentService new];
            paymentGateway.delegate = amazonPS;
            
            NSLog(@"Payment method is Amazon");
        }
        
        [paymentGateway processPaymentAmout:&paymentTotal];
        
        NSLog(@"%d", paymentMethodInt);
        
        
    }
    return 0;

    return 0;
}


#import <Foundation/Foundation.h>
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
 }
