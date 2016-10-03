//
//  main.swift
//  Perfect CURL Examples
//
//  Created by Jonathan Guthrie on 2016-09-27.
//	Copyright (C) 2015 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//


import PerfectLib
import PerfectCURL
import cURL

/* ====================================================================
The following code demonstrates the fetching of a series of CURL requests

The first test is commented for explanation.
Other tests will be commented where different features are being demonstrated,
==================================================================== */


// Set the URL endpoint for the CURL request
let curlObject = CURL(url: "https://helloacm.com")

// Printing to the console the URL. Debug only!
print("Test URL: \(curlObject.url)")

// It is always good practice to supply a User Agent.
// Many services will reject the request, even if authenticated, if no user agent is supplied.
curlObject.setOption(CURLOPT_USERAGENT, s: "PerfectAPI2.0")

// Reading the CURL request response:
// Container variables
var header = [UInt8]()
var body = [UInt8]()

// Perform the request
var perf = curlObject.perform()

// Operates in a chunked read while the CURL request is operational, either in wait or read state.
// As data arrives it is pushed into the header and/or body bytes arrays.
while perf.0 {
	if let h = perf.2 {
		header.append(contentsOf: h)
	}
	if let b = perf.3 {
		body.append(contentsOf: b)
	}
	perf = curlObject.perform()
}
if let h = perf.2 {
	header.append(contentsOf: h)
}
if let b = perf.3 {
	body.append(contentsOf: b)
}
let _ = perf.1

// Closing the CURL request.
curlObject.close()

// Decoding the result.
let hstr1 = UTF8Encoding.encode(bytes: header)
let bstr1 = UTF8Encoding.encode(bytes: body)

print("Header:")
print(hstr1)

print("====================================================================")


// This will return JSON
let curlObject2 = CURL(url: "http://ip.jsontest.com/")

print("Test URL: \(curlObject2.url)")

// Informing remote server that JSON data is expected
curlObject.setOption(CURLOPT_HTTPHEADER, s: "application/json")
curlObject.setOption(CURLOPT_USERAGENT, s: "PerfectAPI2.0")

header = [UInt8]()
body = [UInt8]()

perf = curlObject2.perform()

while perf.0 {
	if let h = perf.2 {
		header.append(contentsOf: h)
	}
	if let b = perf.3 {
		body.append(contentsOf: b)
	}
	perf = curlObject2.perform()
}
if let h = perf.2 {
	header.append(contentsOf: h)
}
if let b = perf.3 {
	body.append(contentsOf: b)
}
let _ = perf.1

curlObject2.close()

// Decoding the result.
let hstr2 = UTF8Encoding.encode(bytes: header)

print("Header:")
print(hstr2)

// The following decodes the body array to a string, but then converts it as JSON to a [String:Any] object
print("Body:")
do {
	let str = UTF8Encoding.encode(bytes: body)
	let decoded = try str.jsonDecode() as? [String:Any]
	print(decoded)
} catch {
	print("Decode error: \(error)")
}

print("====================================================================")

// The next example uses a function, "getCURL", to return the body of the response as a string for further processing.

print("Body of http://date.jsontest.com/:")
do {
	let str = getCURL(endpoint: "http://date.jsontest.com/", args: [])
	let decoded = try str.jsonDecode() as? [String:Any]
	print(decoded)
} catch {
	print("Decode error: \(error)")
}


