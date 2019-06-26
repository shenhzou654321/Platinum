//
//  DeviceInfoModel.m
//  PlatinumDemo
//
//
//  Created by zhangyf on 17/6/7.
//
//
//

#import "DeviceInfoModel.h"

@implementation DeviceInfoModel
-(instancetype)initWithName:(NSString *)name andUUID:(NSString *)uuid
{
    if (self = [super init]) {
        self.name = name;
        self.uuid = uuid;
    }
    return self;
}
@end

@implementation ServerDeviceModel


@end

@implementation RenderDeviceModel

-(instancetype)initWithName:(NSString *)name UUID:(NSString *)uuid Manufacturer:(NSString *)manufacturer ModelName:(NSString *)modelName ModelNumber:(NSString *)modelNumber SerialNumber:(NSString *)serialNumber DescriptionURL:(NSString *)descriptionURL
{
    if (self = [super init]) {
        self.manufacturer = manufacturer;
        self.modelName = modelName;
        self.modelNumber = modelNumber;
        self.serialNumber = serialNumber;
        self.descriptionURL = descriptionURL;
        if([name length ] >0){
            self.name = name;
        }
        
        if([uuid length] > 0){
            self.uuid = uuid;
        }
        
        
    }
    return self;
}

@end
