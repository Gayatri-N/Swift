//
//  ViewController.m
//  MQTTExample
//
//  Created by Gayatri Nagarkar on 1/2/18.
//  Copyright © 2018 Gayatri Nagarkar. All rights reserved.
//

#import "ViewController.h"
#import "MQTTClient.h"

@interface ViewController () <MQTTSessionDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MQTTSession *session = [[MQTTSession alloc] init];
    
    session.userName = @"myname";
    session.password = @"secret";
    
    session.delegate = self;
    
    [session connectToHost:@"192.168.0.1" port:1883 usingSSL:NO];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)newMessage:(MQTTSession *)session
              data:(NSData *)data
           onTopic:(NSString *)topic
               qos:(MQTTQosLevel)qos
          retained:(BOOL)retained
               mid:(unsigned int)mid {
    
}

- (BOOL)newMessageWithFeedback:(MQTTSession *)session
                          data:(NSData *)data
                       onTopic:(NSString *)topic
                           qos:(MQTTQosLevel)qos
                      retained:(BOOL)retained
                           mid:(unsigned int)mid {
    return YES;
}

- (void)session:(MQTTSession*)session newMessage:(NSData*)data onTopic:(NSString*)topic {
    
}

- (void)handleEvent:(MQTTSession *)session event:(MQTTSessionEvent)eventCode error:(NSError *)error {
    
}

- (void)session:(MQTTSession*)session handleEvent:(MQTTSessionEvent)eventCode {
    
}

- (void)connected:(MQTTSession *)session {
    
}

- (void)connected:(MQTTSession *)session sessionPresent:(BOOL)sessionPresent {
    
}

- (void)connectionRefused:(MQTTSession *)session error:(NSError *)error {
    
}

- (void)connectionClosed:(MQTTSession *)session {
    
}

- (void)connectionError:(MQTTSession *)session error:(NSError *)error {
    
}

- (void)protocolError:(MQTTSession *)session error:(NSError *)error {
    
}

- (void)messageDelivered:(MQTTSession *)session msgID:(UInt16)msgID {
    
}

- (void)messageDelivered:(MQTTSession *)session
                   msgID:(UInt16)msgID
                   topic:(NSString *)topic
                    data:(NSData *)data
                     qos:(MQTTQosLevel)qos
              retainFlag:(BOOL)retainFlag {
    
}

- (void)subAckReceived:(MQTTSession *)session msgID:(UInt16)msgID grantedQoss:(NSArray<NSNumber *> *)qoss {
    
}

- (void)unsubAckReceived:(MQTTSession *)session msgID:(UInt16)msgID {
    
}

- (void)sending:(MQTTSession *)session type:(MQTTCommandType)type qos:(MQTTQosLevel)qos retained:(BOOL)retained duped:(BOOL)duped mid:(UInt16)mid data:(NSData *)data {
    
}

- (void)received:(MQTTSession *)session type:(MQTTCommandType)type qos:(MQTTQosLevel)qos retained:(BOOL)retained duped:(BOOL)duped mid:(UInt16)mid data:(NSData *)data {
    
}

- (BOOL)ignoreReceived:(MQTTSession *)session type:(MQTTCommandType)type qos:(MQTTQosLevel)qos retained:(BOOL)retained duped:(BOOL)duped mid:(UInt16)mid data:(NSData *)data {
    
    return YES;
}

- (void)buffered:(MQTTSession *)session
          queued:(NSUInteger)queued
       flowingIn:(NSUInteger)flowingIn
      flowingOut:(NSUInteger)flowingOut {
    
}

- (void)buffered:(MQTTSession *)session
       flowingIn:(NSUInteger)flowingIn
      flowingOut:(NSUInteger)flowingOut {
    
}

@end
