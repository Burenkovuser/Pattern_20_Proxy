//
//  FileDownloaderProxy.h
//  Proxy
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FileDownloader.h"

@interface FileDownloaderProxy : NSObject
{
    @private FileDownloader *_downloader;
}

@property (nonatomic) bool isPremiumUser;

-(void) slowDownload;
-(void) fastDownload;

@end
