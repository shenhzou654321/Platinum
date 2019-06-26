//
//  DLNASDK.m
//  DLNASDK
//
//  Created by leeco on 2019/6/25.
//  Copyright © 2019 zsw. All rights reserved.
//

#import "DLNASDK.h"

#import <Neptune/Neptune.h>

#import "PltMediaInterface.h"

@interface DLNASDK()<ZM_DMRProtocolDelegate>

@end

@implementation DLNASDK
- (id)init
{
    if ((self = [super init])) {


    }
    return self;
}


- (void)configure{

    
    NSString * uri = @"https://www.apple.com/105/media/us/iphone-x/2017/01df5b43-28e4-4848-bf20-490c34a926a7/films/feature/iphone-x-feature-tpl-cc-us-20170912_1280x720h.mp4";
    NSString *m_Didl = @"<DIDL-Lite xmlns=\"urn:schemas-upnp-org:metadata-1-0/DIDL-Lite/\" xmlns:dc=\"http://purl.org/dc/elements/1.1/\" xmlns:upnp=\"urn:schemas-upnp-org:metadata-1-0/upnp/\" xmlns:dlna=\"urn:schemas-dlna-org:metadata-1-0/\"><item id=\"0/童话侠.mp4\" parentID=\"0\" restricted=\"1\"><dc:title>童话侠</dc:title><dc:creator>Unknown</dc:creator><upnp:genre>Unknown</upnp:genre><res size=\"14367790\" protocolInfo=\"http-get:*:video/mp4:DLNA.ORG_PN=MPEG4_P2_SP_AAC;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01500000000000000000000000000000\">https://www.apple.com/105/media/us/iphone-x/2017/01df5b43-28e4-4848-bf20-490c34a926a7/films/feature/iphone-x-feature-tpl-cc-us-20170912_1280x720h.mp4</res><upnp:class>object.item.videoItem</upnp:class></item></DIDL-Lite>";
    
    PltMediaInterface * face = [PltMediaInterface shareDMRControler];
    [face start];
    
    dispatch_queue_t   queue = dispatch_queue_create("com.queue", DISPATCH_QUEUE_SERIAL);
    
    dispatch_async(queue, ^{
        sleep(3);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSArray * renders = [face getActiveRenders];
            
            NSLog(@"zhengju:%@",renders);
            
            
            RenderDeviceModel * renderDevice0 = [renders firstObject];
            [face chooseRenderWithUUID:renderDevice0.uuid];
            
            RenderDeviceModel * renderDevice = [face getCurrentRender];
            
            NSLog(@"zhengju:%@",renderDevice.modelName);
            
            [face renderSetAVTransportWithURI:uri metaData:m_Didl];
            
//            [face stop];
        });
        
    });

}
@end
