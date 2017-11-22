//
//  ObjectCpp.cpp
//  Object
//
//  Created by tanhui on 2017/8/23.
//  Copyright © 2017年 tanhui. All rights reserved.
//

#include "ObjectCpp.h"
ObjectCpp::ObjectCpp(void* oc, interface call) {
    this->myOC = oc;
    this->myCall = call;
}
void ObjectCpp::function(void* parameter) {
    this->myCall(this->myOC,parameter);
}
ObjectCpp::~ObjectCpp(){
    std::cout<< "CPP Object released"<< std::endl;
}

