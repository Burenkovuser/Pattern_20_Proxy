//
//  FileDownloader.m
//  Proxy
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "FileDownloader.h"

@implementation FileDownloader

-(id) init
{
    self = [super init]; NSLog(@"Downloader created"); return self;
}

-(void) slowDownload
{
    NSLog(@"Sloooooowly downloading...");
}

-(void) fastDownload
{
    NSLog(@"Shuuuuuh, already downloaded...");
}

@end

/* объект умеет скачивать быстро и медленно. При том, ему все равно какой пользователь и есть ли коннект к интернету.
*/
