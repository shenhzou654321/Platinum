//
//  DeviceInfoModel.h
//  PlatinumDemo
//
//
//  Created by zhangyf on 17/6/7.
//
//
//

#import <Foundation/Foundation.h>

@interface DeviceInfoModel : NSObject
//设备uuid
@property(nonatomic, copy)NSString * uuid;
//设备名称
@property(nonatomic, copy)NSString * name;
-(instancetype)initWithName:(NSString *)name andUUID:(NSString *)uuid;
@end


@interface ServerDeviceModel : DeviceInfoModel

@end

@interface RenderDeviceModel : DeviceInfoModel
//生产商
@property (nonatomic, retain) NSString *manufacturer;
//型号名
@property (nonatomic, retain) NSString *modelName;
//型号编号
@property (nonatomic, retain) NSString *modelNumber;
//设备生产串号
@property (nonatomic, retain) NSString *serialNumber;
//设备地址
@property (nonatomic, copy) NSString * descriptionURL;


-(instancetype)initWithName:(NSString *)name UUID:(NSString *)uuid Manufacturer:(NSString *)manufacturer ModelName:(NSString *)modelName ModelNumber:(NSString *)modelNumber SerialNumber:(NSString *)serialNumber DescriptionURL:(NSString *)descriptionURL;
@end
