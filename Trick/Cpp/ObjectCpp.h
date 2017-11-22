//
//  ObjectCpp.hpp
//  Object
//
//  Created by tanhui on 2017/8/23.
//  Copyright © 2017年 tanhui. All rights reserved.
//

#ifndef ObjectCpp_hpp
#define ObjectCpp_hpp

#include <stdio.h>
#include <iostream>
#include "ObjectInterface.h"

class ObjectCpp {
    void* myOC;
    interface myCall;
public:
    ObjectCpp();
    ObjectCpp(void* oc ,interface call);
    ~ObjectCpp();
    void function(void* parameter);
};

#endif /* ObjectCpp_hpp */
