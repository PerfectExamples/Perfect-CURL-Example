//
//  main.swift
//  Perfect CURL Examples
//
//  Created by Jonathan Guthrie on 2016-09-27.
// 	Updated by Rockford Wei on 2018-01-30
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2018 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//


import PerfectCURL
import Foundation

/* ====================================================================
The following code demonstrates the fetching of a series of CURL requests

The first test is commented for explanation.
Other tests will be commented where different features are being demonstrated,
==================================================================== */


// Set the URL endpoint for the CURL request
do {
  let url = "https://helloacm.com"
  print("Test URL: \(url)")
  if let response = try CURLRequest(url)
    .promise()
    .wait() {
    print("get \(response.bodyBytes.count) bytes")
  } else {
    print("failure")
  }
}catch{
  print(error.localizedDescription)
}

print("====================================================================")

do {
  let url = "http://ip.jsontest.com/"
  print("Test URL: \(url)")
  if let json = try CURLRequest(url)
    .promise()
    .then(closure: { return try $0().bodyJSON })
    .wait() {
    print("get json: \(json)")
  } else {
    print("failure")
  }
}catch{
  print(error.localizedDescription)
}


print("====================================================================")

print("Using Swift 4.0 Decodable to test http://date.jsontest.com/:")

struct JSONTestReturn: Decodable {
  var time = ""
  var milliseconds_since_epoch = 0
  var date = ""
}

do {
  let url = "http://date.jsontest.com/"
  print("Test URL: \(url)")
  if let json = try CURLRequest(url)
    .promise()
    .then(closure: { return try $0().bodyJSON(JSONTestReturn.self) })
    .wait() {
    print("get json: \(json)")
  } else {
    print("failure")
  }
}catch{
  print(error.localizedDescription)
}


