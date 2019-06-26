//
//  PltMediaInterface.h
//  Platinum
//
//  Created by zhangyf on 17/6/7.
//
//
#import <Foundation/Foundation.h>
#import "EventParamsResponse.h"
#import "DeviceInfoModel.h"

//投屏回调接口
@protocol ZM_DMRProtocolDelegate <NSObject>
@optional
//添加渲染器
-(void)onDMRAdded;
//移除渲染器
-(void)onDMRRemoved;
//没有存在的DMR
-(void)noDMRBeSelected;
//
-(void)getCurrentAVTransportActionResponse:(CurrentAVTransportActionResponse *)response;

-(void)getTransportInfoResponse:(TransportInfoResponse *)response;

-(void)getPositionInfoResponse:(CurentPositionInfoResponse*)response;

-(void)previousResponse:(EventResultResponse *)response;

-(void)nextResponse:(EventResultResponse *)response;

-(void)DMRStateViriablesChanged:(NSArray <EventParamsResponse *> *)response;

-(void)playResponse:(EventResultResponse *)response;

-(void)pasuseResponse:(EventResultResponse *)response;

-(void)stopResponse:(EventResultResponse *)response;

-(void)setAVTransponrtResponse:(EventResultResponse *)response;

-(void)setVolumeResponse:(EventResultResponse *)response;

-(void)getVolumeResponse:(VolumResponse *)response;
@end


//DMR 遥控器 方法

@interface PltMediaInterface : NSObject
+(instancetype) shareDMRControler;

@property (nonatomic, strong)id <ZM_DMRProtocolDelegate>delegate;

//控制器
-(void)start;
-(void)restart;
-(void)stop;
-(BOOL)isRunning;
//DMR
-(NSArray <RenderDeviceModel *> *)getActiveRenders;
-(void)chooseRenderWithUUID:(NSString *)uuid;
-(RenderDeviceModel *)getCurrentRender;
-(void)renderPlay;
//设置位置偏移量
-(void)getCurrentPostion;
-(void)setcurpos;
-(void)renderPause;
-(void)renderStop;
-(void)renderSetAVTransportWithURI:(NSString *)uriStr metaData:(NSString *)didl;
-(void)renderSetVolume:(int)volume;
// 获取当前动作 OnGetCurrentTransportActionsResult
-(void)getCurrentTransportAction;
//获取当前信息 回调 OnGetTransportInfoResult
-(void)getTransportInfo;
//
@end

