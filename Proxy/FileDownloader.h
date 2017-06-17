//
//  FileDownloader.h
//  Proxy
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FileDownloader : NSObject

-(void) slowDownload;
-(void) fastDownload;

@end
