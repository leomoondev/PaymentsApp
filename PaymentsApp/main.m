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
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *inputString = [InputCollector new];

        NSInteger totalAmount = arc4random_uniform(900)+ 100;
        NSString *paymentMethod = [inputString inputForPrompt:[NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total today is %ld Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: Apple Pay", (long)totalAmount]];
        
        int paymentOption = [paymentMethod intValue];
        
        
        
        PaymentGateway *paymentGateway = [PaymentGateway new];
        PaypalPaymentService *paypalPaymentService = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripePaymentService = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazonPaymentService = [[AmazonPaymentService alloc] init];
        ApplePayPaymentService *applePayPaymentService = [[ApplePayPaymentService alloc] init];
        
        switch(paymentOption) {
            case 1:
                paymentGateway.delegate = paypalPaymentService;
                //[paymentGateway processPaymentAmout:&totalAmount];

                NSLog(@"Payment was made by Paypal");
                
            case 2:
                paymentGateway.delegate = stripePaymentService;
                //[paymentGateway processPaymentAmout:&totalAmount];

                NSLog(@"Payment was made by Stripe");
            case 3:
                paymentGateway.delegate = amazonPaymentService;
                //[paymentGateway processPaymentAmout:&totalAmount];

                NSLog(@"Payment was made by Paypal");
            case 4:
                paymentGateway.delegate = applePayPaymentService;
                //[paymentGateway processPaymentAmout:&totalAmount];

                NSLog(@"Payment was made by Apple Pay");
        default:
                NSLog(@"Invalid Option. Please try it again.");
                break;
            
        }
        [paymentGateway processPaymentAmout:&totalAmount];
        
        
        
    }

    return 0;
}
