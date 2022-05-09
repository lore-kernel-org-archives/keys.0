Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2CB46BF
	for <keys@linux.kernel.org>; Mon,  9 May 2022 11:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1652094696; x=1683630696;
  h=from:to:subject:date:message-id:mime-version;
  bh=rrWDPtzsm4R4Q2pcPbJuR3UJz5BNz24HPvVq9jWan90=;
  b=T+phWMkEBKK26xtYistyaNN7fBhfdEkyyqzWGBsCP58rRShRfkaY/P+s
   +wcv2rHuLqIOWmzYfzFkhLr6oVB3nTw1gjVm8If64C+y6/gLjZIqGZxra
   RAqFc00hYDE0/S67Pfi4E7CItWSapDzR4qU2SlwnFPrXnNH0drqEqcTT7
   9sUqMOpqR16/yAQyZ/AKp7hRWaqMsVNPLd4zXHk+ygdZcWNdjNfoxNfVE
   feTdVDFpqHvrDWuCrQqdjg7egENto92wQbtPo9R8sYhnW0juOi89PikaS
   ORD2ZK150vFHgtZkRGgtCyc94T1TUNTn9Hqz0a2JIhBPy1SBuSqLQrQck
   Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="268682105"
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; 
   d="asc'?scan'208";a="268682105"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 May 2022 04:11:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,211,1647327600"; 
   d="asc'?scan'208";a="591888311"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga008.jf.intel.com with ESMTP; 09 May 2022 04:11:35 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Mon, 9 May 2022 04:11:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Mon, 9 May 2022 04:11:35 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 9 May 2022 04:10:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCXnjVO4yTHE7UWqWiAqkb1uWXLShaJ3vozm7n0Yi4rmP8koVS/MP5N6nSnrWuNvyLy2qeM6X+2vDvB+nyZ5Ui3bmEpvr2s1XjR75IeUOrA2lW+VYyGET1CpQVKJsl8IapTotSuMx/Lvu0ncIppctgsyeybd0ZF+0ivvBPrr6NOsbZ+MOqceDR4TdnfbeSgk77TnjzZp+HrKZIom/wME9BQOxLw/uXHtGTOxqr7jkIZC+9i9S0jUldA/oKH4R010H9x1PBiEAm2/0a7THWGiof4Y7legHl0VFeTozGG3oho4/8FTIxId7J//uHly9VdYMEXSw7GCq0lsB3LEISmK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dsYtK6zFyXNF5GRIvQWTcVhK1M/rQdGPo+3YVK5ZhnE=;
 b=LpHPljXsbxqIVD0rd/+30voYmBuPLUyBTfO5Ajwnve5hC2CaWnepjXPB2hEnikv2zpD5X33szNz9/we3iFLEJe0ilav8Nurjqk9BibJt3fUnPGGs86IskLYnV6Z+/Xoj/3a7ylMaeV1++AEVHp97BwMZDkpNCG0NDrsOCaram3mQDVRxcyqb0RiSfd68iJvyxyD37i3eEn5l1n34CF7v95RmdfNKBECQw0Ek/xDa0odaOntX9iBAs7qQsG67NbIoYgivY0RhfC3fal3v2zUj0WeirYA2q+w+qExWF0vE8CqnIWLlZfBnca53khYo6Gkq2EOP1aLZGUcSGmPxxAVTmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB5987.namprd11.prod.outlook.com (2603:10b6:208:372::8)
 by SA1PR11MB5898.namprd11.prod.outlook.com (2603:10b6:806:229::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23; Mon, 9 May
 2022 11:10:57 +0000
Received: from MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::d9a2:bed7:a188:a582]) by MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::d9a2:bed7:a188:a582%7]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 11:10:57 +0000
From: "Greenman, Gregory" <gregory.greenman@intel.com>
To: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Submitting a key for the new iwlwifi driver maintainer
Thread-Topic: Submitting a key for the new iwlwifi driver maintainer
Thread-Index: AQHYY5V1/TDtv6bfPkyM1YCE+oDckw==
Date: Mon, 9 May 2022 11:10:57 +0000
Message-ID: <d36fb02004e851a4edf6ca4719688675c3293193.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator:
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3a90b164-0efb-48e3-39eb-08da31ac97ea
x-ms-traffictypediagnostic: SA1PR11MB5898:EE_
x-microsoft-antispam-prvs: <SA1PR11MB589832D97C495BD342F484368BC69@SA1PR11MB5898.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A4PSE4OFNRivak8hA0ayh5UufDDn0Ujvpo6gam2T2HKN7KbyXximOuRYM0Ofw2KaTDRcy1p3ilF/9UyiPGYaKjOqoXznavd207oCYsHdjPLKh86Fhvg43Ls8zQ2/zA0a939Qm/lhtKHHk4xbCE9lfUx7puDyGOWuc/trnceY7/OGg31+ptjNugNkX3OVNYO7UIl1B3OxY/gh+qQEfIPxTK0Xlf6RxoOERListBpqSdmOZoe9igqlaKyC0R3tp8B03eohJWkRsdOEdyjV7uNchw33n7by0CG7Qg/YWfTb3m4fjyHq005re5Oet09leEzfNaNBGdCWD0+D25+EV4m5PLIXJOMvOhNMewhV0Ldw25EeIFFI47/ey3ie3610rGa9Ged9TV2kWogaFwxQGIhKYW/GDU70YXYldt/ASMw7VEMqnwVqOcJdbfPqptxrzvMAzljuzFUgXhxFpYJCXR5iILeRguArT2i1WD+g4M3elKJhlsavQio7bbi41gMbx8+zIoYcX8mpEcD8RzOtvqKKe2ieu4NE6xksgA3LHQk0b3lqsJIdIhSwSGJyB21pZ8ROM8PW308B1DGCu58Fef69Evt2/sesi9tiYUcR9blFAVRo2tqKowep4vWGtTU2Q3LHsiTJ2KlezXFjY2EwWV8HYmFTa2Fv9fUz19XOgRuLkUBr8YP2ceDTHKkQ269JfY9iufAB+MW4BCigT6rq4IDZj1hIcmD6mAS6yQNK59BZeTLqrBMTpv8WmM/ME27lhuoXJ2aqbRyW0eJDR/nd6+mKVIw3tnTTTCZ/pRNadIDehMY=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN0PR11MB5987.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(122000001)(2616005)(99936003)(4744005)(82960400001)(2906002)(26005)(6512007)(6506007)(186003)(6486002)(966005)(8676002)(71200400001)(91956017)(66556008)(76116006)(66446008)(66476007)(66946007)(64756008)(86362001)(8936002)(38070700005)(38100700002)(6916009)(36756003)(5660300002)(508600001)(316002)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFdJNjNEUDhoN21MZjZhRksrQVUyRDFQU1BrK24xdWRtelhrb2NUcUhXbG1X?=
 =?utf-8?B?SE50eDJCNnRyY2paMHYwYUdMaTBaOWpkVXpNdVdZMklQNDRiaGtXVzFpV0N2?=
 =?utf-8?B?NXlIZTRJdzhYS2J5c3hSK2c5QnRiSTVYQ1dVRjZ0VUFMbE44c0Y2UlQ4OVRV?=
 =?utf-8?B?dm91ZXczdHFtZFdOQlROeTYrNTYwMEJqTllHN2llTktWRXcrRnprQzRTMlNv?=
 =?utf-8?B?d2pqOGFhZjNldzcyUGVHSW1TcUlpS2E3SkE3K2ZiYWFHN2oyVkZYUVluclVJ?=
 =?utf-8?B?QytJM2JqZGMxSFV5RUR2dmROb0wzaklrVllTcG5WT3ROSGNBOWRSbGZFc1ZX?=
 =?utf-8?B?VWFLbXVhZUdmSVY3L3JudFc2bHN2TThseE1hd1FHWEZVb0NDRmRpTE1tSnZO?=
 =?utf-8?B?U3N2blRBYnJwWnNvVi9MK1lES2ttamRVeUxraGo4UjhleTZxWTE3dFFLbmNM?=
 =?utf-8?B?TUNpdDNwazl4VDh2L3Nqa1JXTWMxT3kweEdpVzRrS3hsVnRCVlJIbnNsTW8z?=
 =?utf-8?B?VENDNzI4MWFEaWJndUNkL2RTM0dFYUxiSk5oQ2dGN0lIVVJrNktjL0FSZU1Q?=
 =?utf-8?B?TnorRmoxYldnOTI1VEQzeEUvYlRsWXpBWm5PK1BZK3BKVXpGL1MxVU9oRy8y?=
 =?utf-8?B?UzRIQUdaeTdNVk9rTWdOQitpbTU0TWNJOWFpc3hNVDdXaUJQeE9rRXYwd1pW?=
 =?utf-8?B?bUxkcVZSRWtvQ1dyb2ZTSGN6c2pha2Q1Nm9GUFd5QWcrenFyQUQzN1YxQW03?=
 =?utf-8?B?RTdKcWdDeWlKc1dMZ2FYVFI5YlRrSzEvK0pDOFg3UUIyenI5R3hvWEc0WEZN?=
 =?utf-8?B?OXUrVHBtSllDTnFSNVdCbk1EZTFDcTVJUERkQi9hV2luMVd6RXloaGhUM2tx?=
 =?utf-8?B?NWEybDdjSGZnaXIzbzF2N0tNZmo1WmRTeEFuZC9VMkg2d0NBSmlXa2NBYXpX?=
 =?utf-8?B?Q3JYSXRLVFpXN1pSbmh1bkd2SmNGbEdzK0g1akJsRm5uS1VoZHZqSno2MVZV?=
 =?utf-8?B?c0xIMFJEWkI0SG8wcGZGM2JlS21GOGQxVCtaaG4wSDlSYjdnWFErRHZKZE1M?=
 =?utf-8?B?bnV2YXFYeS9vNWpuTE55WGoyY2RWYU80VEZlMVl3QU1jVUhxTHBRT2Y0UUQ1?=
 =?utf-8?B?cjE3K24yRmpnMFFzd2k2R2IreVIrVjIvL2dQL2oxaHdVdnRTeCs5VDQvTmg2?=
 =?utf-8?B?RlNHaDR5TjFKZitndEcyZzY2R0NLWDgyS3NCSkllb1M5c0kwZGw2RlBUWGlT?=
 =?utf-8?B?WjRMekJXOTZ4blQ0ME40Q0pLdERKMER1UFNPUG1ydENPenVXSHNRSk9KNTFK?=
 =?utf-8?B?SXdkTUtWVGRFdzZGbWtNVXdxOGxIRjVHYnBvSlRjSzRoVW8rTFQyaHBqQzRD?=
 =?utf-8?B?ajhhMWZpaVJ1R3dPeFdjRVBsZE5sdEhtUWZQUmRKYngvYi9XV0ZWRW0wdVMv?=
 =?utf-8?B?QXc2TnN6YkJSWWx2OTl4T25RekxLUm03WFRSM2EyT1BJaVE3aFRjaFJYckJp?=
 =?utf-8?B?UWpoUW5sYXE2VmFNMk50dGFhNTZiNkp3cDNlUkRqUmxoOGhOQXJwSExXT1Qw?=
 =?utf-8?B?RTVCdWdneC9RVTVaYkZocFJkb2NSRERpeElYNE5NVUtFTGpjTnZuSkQvelJR?=
 =?utf-8?B?RjE4QmxUejluYlVKL2w0ZEZrT0hWTXZyYlNLem5kc1NEMElzMWxHcmRBRnpr?=
 =?utf-8?B?ZExoVHRiUzVvNFBjeWR1cHJvL3EwQWxQRmx0YlhXTkhlOXJickVhZEs1bGhS?=
 =?utf-8?B?SjkzWTBnUlBOd1hUbXRSVCtuWk4rdzRSazRXeWtPWWVxbm0zWjczRUdXa1M3?=
 =?utf-8?B?UGtnUGhRMlZHdU04THdNNjE3R3M4Ympzb1N0VWVIU0hRWkJhVmxNT1lNS2FR?=
 =?utf-8?B?UWxnOTgzb3U5cU1OTUhGK3o5ZmRxV1VYeFo3ck5TNlNqOWtHOXlOWFhLNmQw?=
 =?utf-8?B?OGtiVG9vc1J2Z3VibkdCalJqNk92MEJWSWlBRXgyTmlSaG5pdWtFVkhWWk1m?=
 =?utf-8?B?VGVQMnNBRFhoeng5S3BGaUxaZ3BmSGRFbGVCOEVYejhEdE82UEw1dElFU2FU?=
 =?utf-8?B?RmR5c21oSTllTC9XYU9vTTBzSmFMMmZHSUc0enFvRGhlTjEwOW9aVUd6dHRP?=
 =?utf-8?B?WVJGMkVSdW5sTkFMRk1BQ1U3QWpFQXZKY0NUK3JxaXhSYWNaTkgwYk1oS0tQ?=
 =?utf-8?B?V0U0aXdqR3NLcU15dWJCa1hUUVpaOExQTjZqQlhwaVRTZzl1emJBMS9zdFUy?=
 =?utf-8?B?c2N2YmJiR2l3K0FRWWUzV0tkUXA0d3Q3cGVwR2ZObElSa3pPSXI4dzlyUFBY?=
 =?utf-8?B?YnNBdi9hMkhQazdtQzRPSDJwTmFBSmdWOXA5bXpVeU40alVmVGhSUStJV0NX?=
 =?utf-8?Q?XUkZcUFrXcpqyVIL5XdRgDIVLjk7Nvm0cgchI?=
Content-Type: multipart/mixed;
	boundary="_002_d36fb02004e851a4edf6ca4719688675c3293193camelintelcom_"
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB5987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a90b164-0efb-48e3-39eb-08da31ac97ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2022 11:10:57.8879
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OSv0jrMe+CeToLL/D+34986au9zJvwJwd4ySLN+b+HJJ7Gh4ZJ+bFkiHzEKNUCNRCaejikF/kyPgoLeNk2HupxJfyZCko11lpxFK2JPn7cs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5898
X-OriginatorOrg: intel.com

--_002_d36fb02004e851a4edf6ca4719688675c3293193camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <09AEA36E0714E745A78218BDACDD6227@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

SGVsbG8hDQoNCkknbSB0aGUgbmV3IG1haW50YWluZXIgb2YgaXdsd2lmaSBkcml2ZXIuIEknZCBs
aWtlIHRvIHN1Ym1pdCBteSBQR1Aga2V5DQp0byB0aGUga2V5cmluZy4NCg0KVGhlIGtleSBpcyBh
dHRhY2hlZC4gSXQgaXMgc2lnbmVkIGJ5IEpvaGFubmVzIEJlcmcgLSB0aGUgc2lnbmF0dXJlIGNh
bg0KYmUgZm91bmQgaGVyZTogaHR0cHM6Ly9wLnNpcHNvbHV0aW9ucy5uZXQvOWNjODY1YTAwMTc1
ZTM4MS50eHQNCg0KVGhlIE1BSU5UQUlORVJTIGZpbGUgaXMgYWxyZWFkeSB1cGRhdGVkIGluIHdp
cmVsZXNzLmdpdCB0cmVlIGhlcmU6DQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC93aXJlbGVzcy93aXJlbGVzcy5naXQvdHJlZS9NQUlOVEFJTkVSUw0KDQpU
aGFuayB5b3UgaW4gYWR2YW5jZSwNCkdyZWdvcnkNCg==

--_002_d36fb02004e851a4edf6ca4719688675c3293193camelintelcom_
Content-Type: application/pgp-keys; name="gregory.greenman.asc"
Content-Description: gregory.greenman.asc
Content-Disposition: attachment; filename="gregory.greenman.asc"; size=3927;
	creation-date="Mon, 09 May 2022 11:10:57 GMT";
	modification-date="Mon, 09 May 2022 11:10:57 GMT"
Content-ID: <754123911278394AAE0E1ED041B8840F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkdKQ3Rtb0JFQUNpaTFU
eUVyR0pHWXNWYXNBM0kwQkVZcmY3b2pIZXpERmJtMmd1aTJlSkJuU3hTbjBDCnBJc2Npa1VVVGpn
TVpFaTJySHpDTyt1WkNvazJtZWliMzV1WjBSbTFteXRiR1BIbVd1cklVNzI2V2lubDg0TnMKWk55
UG04eTNTekU0Wml3RHdYdTRNN3ozWVJWQ0l0TXlGZ3R1Lzd6Q25CYVVCWGxXT1dwOUNJTi9jK1pM
YXh5TQpSK3pmZC90STFOZ3FGMVBUUGJKSThtaGkyUnJjTGZ2am16ajNyaWdOYk9CQ2Nqc2w2Yi9V
VEdtM0lFR0ZLNEhyCmRTUkNyUW8xVmhYR1hsMWxlazhhK2RDTDRDSHUzWTNhcURGT1JEVU9qT2NZ
MFJoYmIzS2JkTFJXZCtQRWJYUlcKV0dZOWdXWHJJTDVhRlpsWmxzM1JPNDlES1ZRL244TXRiMUZm
MHhFeGhaM29tWWdZZVAzWXVMeHRnZUxRaXFWcgpjWmhucy9jdXl2UjRya0JZaStkZTJCMGVtVHVr
TWRaUGtDb3BtTWVuL1BvU09VRU5Ba2ZDaXBXZ3ZwM2tteVFaCmtEK2JKODMxMTh5dXBLU3Vzc09x
WFpHWVVuTjFMYjVGb2wzbmFjam5NWFMzcGV5dzlPZkgrYklhR1NVeW13S2UKTEFVeVI2L1Z0NlNt
MjNJc3pDaXBkK25VblRtSUNLVTJjc0dXYUdmL1ZqbU9Bb0h0czIybXNDOEFUbW81dmRlcAp5dy8y
RUYwV0MyM0tyNVhLT2FKWVlJVGdMMENPUHlESHJQNkVtdDNFRVRJeGVNSjNEbXRVSENtU28xSVVK
R201CnRucjZoUDhuYUs4aXRYNDVtYzU3U3RBdlpCWEo2Z3hwR3lhaDBMTWVBWWJDVkwyTzhWOGpE
bjhOQ1FBUkFRQUIKdEMxSGNtVm5iM0o1SUVkeVpXVnViV0Z1SUR4bmNtVm5iM0o1TG1keVpXVnVi
V0Z1UUdsdWRHVnNMbU52YlQ2SgpBamNFRXdFSUFDRUZBbUpDdG1vQ0d3TUZDd2tJQndJR0ZRZ0pD
Z3NDQkJZQ0F3RUNIZ0VDRjRBQUNna1FDRENDCllBNXpkenprWHcvK0xsaVNlV3JDQ0dGaEZNSFhQ
K2VTUzBKTDdrRWVVNFBqRVRoVFA5Ky9RYk00azg0am9BUTQKTXZDaWNOZTJseWdoSUk5ZFVmMDRn
SytiRnhmMlFhRndyMmNoaU5CanFuTVBpZGQyZzRMNFhYNnlSTWhUWnY4bwptTjVTMitNa2xzdDNF
K1hKcC9YbENmWHRkc1JWSFFKWkZkM0FMRTAxZlR5VGY2ZDhFcUdFVVcwWWEvRTZEajRXCmJIMVBu
SzBBbDBCQ2U4NjJlY1dnWnp3NGVuc0JUclhyL2E0NEVsWEQvYng5TnBtRC9jMjRGRHdvUldrZUxE
YjMKNmZ3WU8wdHdFMDJLRldaRVdkR21LR2htSk0va1BtanhLdTlSV2crQ3JWMFNVZVJPa3cvNzNH
WFJ2eVBxVlJXZQpmQWVlWjRNaFZKVXlXZ2wrWUhyZS90TTNPMC9GSUY4ZlJNbnQxZU9VNk5iZXR5
b1J4bmkvbU5GVEZqUEFubkNTCkh5M3drbHlqZzNjdVpCZG5SdHBmT0xVQks0MXVUdDZ5Rlc1WWdO
VGt5eXE4VGNlL0N6VUtJcyswMHhsNk9SRDcKelUra21HVCtOZ0VCTzJnNHZBWWp0a3ZRbjg5Zzhr
TjRNWUM4RjVTRXBEMXgwUnJSWFpEM0Q1Z0NrTXFkdjdlQwpIL3VQUHdsTm1LL0RMRUVOZlVFdGQv
akJ0WmZTWC9odXpuQ1lkT2thdW1uTy96d1pXZ1E2VWszSDU1bkNVaDlmCnN3aVQwK2dHN1F0Y0NQ
WHlnblIrUmd1aE0rK3EraXUwOEJLWEpHL2UyZFEyVkJINmFJdjhKcEtyak9wRURaNVcKSTBtR2pY
dTc0TzFUVEF3dHp2WG1RMndPcS9KN1VsSVFVTHd1WGw2K0l2OW8rV1lWcExBVGdndTVBZzBFWWtL
MgphZ0VRQU1BNlA2NXh1aTQ4ZHhieGFnSElOYWpXbS8zeTd0dm5Wd21jR0tOaStxS1RLa2M1S0da
SzlBZXJIcFRMClBybTJ5VUJ1amNPdmc0UnJTcUhzZDAweThhVFR3QUF3VWs4MHA3YmFTZ0VjTWtm
Z2h5N0p6cDdpUHBhRnNmYmoKdkEySUZVRW1nNk12K1NLU21ZT0FzNy9zcWN3Ly8ycGRxRXpOdjlw
NDRSSG9vYmlDelpyWS9Nc1lBWCsvRk1HQgpiQm1vRFhtMEYrOVFQd2swOFEvZUxWNDRXdm9FTWJJ
UnVKWkxHTnVpaGh4YUd5VkhvSDd4czBpdFZyQkZXTEZtCmFCYWt5anBNSUc3ZXRlWGp5N3VpYmZt
c2VhOFYyazg4eHBJVWFOR05KQzVRTWEvL0dMMktBQ0hSczU3RTdWYnoKVUVLV0hqTDNSQi9PNTYv
V0x5NmQ0T1RZcjZOOEVmOXZobUpyTTZHejVqbEgzWk9DVGVMZThOSmpySDQxdkRWTgpLLzN5Z01B
bWtUT3ZqU241YjBPWXdiSUNDcVRoUW52L2h4NUZ4UlVrdklMTWJxUHV4S1VCaVozV1czK044QXdX
CktrOSswVlhYODZiZEJDSnVScXAxS3NvSHFIWVhHWklVUTVZRkU4dHRxV2lqcU80Ui9UbUtPUllu
SElkTkVSMDgKRWhibW1KS290aVZHeVNPdUdOQ0tXQ2J5UndaaFZtOXJScDVuOU5nZHUrOGg5aXVX
S1pDVlcrZkR3bS9rNTJ2cApEdjhxZkc1cTJmYzdvbnl6eHNEOUFqOTlqUitKVHl5MXJNUE9kTXNQ
T2tRSEp4cWVXRUdYVEhWMW5qY1dBS1oxCmVCZWhobG13SkFFV2JHaGV1UFpjSDFibk1HZ1NUZnBV
MDA2K2MvcjFmS0VCeEhrTEFCRUJBQUdKQWg4RUdBRUkKQUFrRkFtSkN0bW9DR3d3QUNna1FDREND
WUE1emR6eDVndy8vYUFWb2FWczRaRVVnaDRlcDJKR3JiSWFNQXpEdQpBSHZSaWtubmduRWkwQW5J
NTBtMXU5b0d2ZmhWcmdBVTZ6YmkrYm5iQi9HQ2V0WGNZT2Z6TjZxblhOT0l2UXhICjVoeEsxYXlu
R1FpdzZDNWdGb2FDK2IwNTlrek41TlVCd1MvZnhML21PWEw4RFd5K1orVFJRZWdjcmJyOXpYcUcK
WDd3MUdzVnpRTTA0aWRCZk9ITk9reEgzakNsR28rZXlsdTNBNTUvNlY4ZitDci9IQ3VuVFJiL2JG
YWRwQmhzNAplNWxNdjh1MUVHV2w5K3V0bEhZQTVESWN4OElqK2hnZFRzVjJYdUJ1L24xdjVuTTBz
Z1gwTmlrRlNCZ1hicnBtCjZ3MkMrbThIQlJNZlRDSEs4RnpEMzM3VWtVZ1ZZYkNVdENyRzJTc2dy
RWNhZWdUVm5tT2l2R09NYk9SSXJINVMKeW9MMFA0ZmczUUNXekxhTDNveGx5bWtPZlM4RWNOeHRs
L1ZOUTU2UmJid0pRcmxjTzlVaTFBdU9TREYyRXF6QQo5WDl0aUg5YUtMYWg1dHJpU3lhNGNmK0ts
YnUxVjhQK3o4dWJMZ1dhMzRjUGxXbkI2Q3hlZWFmUnd5dEhoTmlPClprdFYyNWhka0s0aUEwQzQ3
azdhbDRPZ01wRVZHUUVHRVZwY3ZXS3BEZkJQcitoQThLekFPd2VrZEVBbStIQXEKWnNDRi85c09E
aFFRbkhtMmtmTnNUa1FYRUgxTHR0YUxEM1ErODNPT3ZkV1NkOHF4ZzBDWWVSRzRvTUdkYmQ3OQox
RG9BdURsUHQ1QmVNaVdWaWtORGlEVGtmU0xKSnZPM2g1ZXJkR01ITytIMVI3YzVZZndaMFh1Mkx6
R2V2OE1wCnZkMVY4eExJblZOWWt6dTRNd1JpZU1tUkZna3JCZ0VFQWRwSER3RUJCMENhVC92eUth
RTFHakYyaTVGcFJIMm8KUGM1SzZucEZRQkhTQ2d5SlY4L096SWtDTmdRWUFRZ0FJQlloQlBYSU5q
Ym80cENlUkRHYnJBZ3dnbUFPYzNjOApCUUppZU1tUkFoc2dBQW9KRUFnd2dtQU9jM2M4dFJ3UUFK
a29tMDBwVXZOL1gxMmVBd1BlZVRRY2EwR2d2anNaCitqRDJGQ09hb2xUNEF2bE93aWtPV0dONjc3
WG11NDJDVXplUTFPYlFoUTBReDI3aVlwYWxTQ1ZmQ0FKbVBBY28KRUR1elFYWDBuUkFFUVhqTVZk
cFlHQXRYczlxQmNISDQrdDhJWXhlU0crZm41Ung0UElYb3RJTGxJVG5GZ21iNQpDdnlKZU5TbUFY
bGM5TmVKcHVLVHplZDNURmtZbkFrVTZaZU1LMkxmQ1gwS09oRlZCVEpGTmwvNnFjRUVIWnNRCmk2
dXZ6cUJNcDRrZnBlWmRxT1RHMUpoVzJ2TTJabjQ3bkloQzlpUEVDdmhYV05pTkNsOSsvTVVpanM2
T2tOWDYKZ012RFMvNS9tcFIwRFUrMm4rbnVydVorOWNaZGZ3dTRzR1FvS3ZkcFQ4TVVGVXhheGZZ
NXY3ZVpJdDFZY3hxawovNTRXaVhKd3doWXlOUWphRXRtVDdNNmcyNXp2dGpmWDA4T2ZDVHYwQnVi
eHViWmhrcit4bStWZ2RtTytoTnROCm9CVi9SSHFMMVQ5QnhnQUVaUTZPc0oyMDlWcUFPRG83VDBm
ZDl1NmxFSjM5QUJXRFpHRFB4SEcvWG1vWnNmeEEKb2pGU0pxdWN6TEJHZGNZckxKbFFPUGhFOE9r
M2Z6T25NWEtYSm50M0ZRWkFHTnZtQUNOQmw4ODZveXA0aXFFUgpmdTlHQi9UclkxdEtWVlU1ZzNB
enhZVnhlMktzNFU5MSs5VmxqeGZnRnE3cFUwWGVVVTN3N3BnMmdRU205NWNSCnE4d09SeGt0Qnhh
MlRpYlpTc1VKeXAvSVE5UFVrUk5Mc3VHLzlsRlNXRzdraS91aFdqZmFwbS90OERndk8zMXIKdzlH
ZjBVYzFGNUo5Cj1RZUdqCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

--_002_d36fb02004e851a4edf6ca4719688675c3293193camelintelcom_--
