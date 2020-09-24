////
////  VPNRequest.m
////  JSVPN
////
////  Created by 舒永超 on 2019/10/21.
////  Copyright © 2019 Sicent. All rights reserved.
////
//
//#import "VPNRequest.h"
//#import "NSString+DES.h"
//#import <AFNetworking.h>
//
//@implementation VPNRequest
//
//+(void)postDataWithAction:(NSString *)methodName
//               paramaters:(NSDictionary *)params
//                  success:(void (^)(VPNApiResponseModel * _Nonnull))requestSuccess
//                  failure:(void (^)(NSError * _Nonnull))requestError {
//    
//    NSString *requestUrl = @"http://68.168.138.169:8080";
//    
//    if ([NSString isEmptyString:methodName]) {
//        NSAssert(NO, @"方法名不能为空");
//    }else {
//        requestUrl = [NSString stringWithFormat:@"%@/%@",requestUrl, methodName];
//    }
//    
//    __block NSString *tempRequestUrl = requestUrl;
//    __block NSDictionary *tempParams = params;
//    
//    NSDictionary *requestDic = @{@"data" : [NSString convertEmptyToString:[NSString desEncrypt:[params mj_JSONString]]]};
//    
//    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:requestUrl parameters:requestDic error:nil];
//    NSMutableDictionary *headerFields = @{@"platform" : @"ios"}.mutableCopy;
//    NSString *userId = [VPNUserManager sharedManager].user.userId;
//    if (![NSString isEmptyString:userId]) {
//        [headerFields setObject:userId forKey:@"User-ID"];
//    }
//    request.allHTTPHeaderFields = headerFields;
//    if ([methodName isEqualToString:@"client/update"]) {
//        request.timeoutInterval = 5.0;
//    } else {
//        request.timeoutInterval = 10.0;
//    }
//    
//    AFURLSessionManager *manager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
//    
//    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
//    
//    NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request uploadProgress:nil downloadProgress:nil completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
//        if (error) {
//            if (requestError) {
//                
//                requestError(error);
//                
//                VPNLog(@"  request error :%@\nparams:%@\nerror: %@\n\n", tempRequestUrl, tempParams, error);
//            }
//        } else {
//            if (requestSuccess) {
//                
//                NSString *data = [[NSString alloc] initWithData:responseObject
//                                                       encoding:NSUTF8StringEncoding];
//                NSString *result = [NSString desDecrypt:data];
//                
//                VPNApiResponseModel *responseModel = [VPNApiResponseModel mj_objectWithKeyValues:[result mj_JSONObject]];
//                
//                requestSuccess(responseModel);
//                
//                VPNLog(@"  request success :%@\nparams:%@\nresponse: %@\n\n", tempRequestUrl, tempParams, result);
//            }
//        }
//    }];
//    
//    [dataTask resume];
//}
//
//@end
