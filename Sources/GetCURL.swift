//
//  GetCURL.swift
//  Perfect-CURL
//
//  Created by Jonathan Guthrie on 2016-10-03.
//
//

import PerfectLib
import PerfectCURL
import cURL

func getCURL(endpoint: String, args: [String], header: String = "Accept: application/json") -> String {

	var url = endpoint
	if args.count > 0 {
		url.append("?")
		url.append(args.joined(separator: "&"))
	}

	let curlObject = CURL(url: url)

	curlObject.setOption(CURLOPT_HTTPHEADER, s: header)
	curlObject.setOption(CURLOPT_USERAGENT, s: "PerfectAPI2.0")

	var header = [UInt8]()
	var body = [UInt8]()

	var perf = curlObject.perform()
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

	curlObject.close()
	return UTF8Encoding.encode(bytes: body)
}
