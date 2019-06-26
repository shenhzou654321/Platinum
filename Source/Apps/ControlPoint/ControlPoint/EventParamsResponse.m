//
//  ZEventParamsResponse.m
//  PlatinumDemo
//
//
//  Created by zhangyf on 17/6/7.
//
//
//

#import "EventParamsResponse.h"

@implementation EventParamsResponse
-(instancetype)initWithDeviceUUID:(NSString *)deviceUUID ServiceID:(NSString *)serviceID EventName:(NSString *)eventName EventValue:(NSString *)eventValue
{
    if (self = [super init]) {
        self.deviceUUID = deviceUUID;
        self.serviceID = serviceID;
        self.eventName = eventName;
        self.eventValue = eventValue;
    }
    return self;
}
@end

@implementation EventResultResponse

-(instancetype)initWithResult:(NSInteger)result DeviceUUID:(NSString *)deviceUUID UserData:(id)userData
{
    if (self = [super init]) {
        self.result = result;
        self.deviceUUID = deviceUUID;
        self.userData = userData;
    }
    return self;
}
@end

@implementation CurrentAVTransportActionResponse

-(instancetype)initWithResult:(NSInteger)result DeviceUUID:(NSString *)deviceUUID Actions:(NSArray<NSString *> *)actions UserData:(id)userData
{
    if (self = [super initWithResult:result DeviceUUID:deviceUUID UserData:userData]) {
        self.actions = actions;
    }
    return self;
}

@end

@implementation VolumResponse

-(instancetype)initWithResult:(NSInteger)result DeviceUUID:(NSString *)deviceUUID UserData:(id)userData Channel:(NSString *)channel Volume:(NSInteger)volume
{
    if (self = [super initWithResult:result DeviceUUID:deviceUUID UserData:userData]) {
        self.channel = channel;
        self.volume = volume;
    }
    return self;
}

@end

@implementation TransportInfoResponse

-(NSString *)description
{
    return [NSString stringWithFormat:@"cur_transport_status:%@-cur_transport_state:%@-cur_speed:%@",self.cur_transport_status,self.cur_transport_state,self.cur_speed];
}

@end

@implementation CurentPositionInfoResponse
{


}
@end
