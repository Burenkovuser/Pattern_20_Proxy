//
//  FileDownloaderProxy.m
//  Proxy
//
//  Created by Vasilii on 17.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "FileDownloaderProxy.h"

@implementation FileDownloaderProxy

-(void) fastDownload
{
    if (!_isPremiumUser) {
        [self slowDownload];
        return; }
    if (!_downloader)
        _downloader = [[FileDownloader alloc] init];
    [self checkNetworkConnectivity]; [_downloader fastDownload];
}

-(void) slowDownload
{
    if (!_downloader)
        _downloader = [[FileDownloader alloc] init];
    [self checkNetworkConnectivity]; [_downloader slowDownload];
}

-(void) checkNetworkConnectivity
{
    NSLog(@"Checking network connectivity...");
}

@end

/* 1. Онзнаетпротиппользователя,идажееслидернулиметодfastDownloadно пользователь не премиум – будет вызван метод slowDownload.
 2. Он умеет проверять доступ к интернету (пусть это и просто выписка лога). 3. Онпроверяет,илитипобъектаFileDownloaderсоздан,иеслинет–создает
 его.
*/
