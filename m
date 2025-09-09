Received: from TYDPR03CU002.outbound.protection.outlook.com (mail-japaneastazon11013011.outbound.protection.outlook.com [52.101.127.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94A930AAD2
	for <keys@linux.kernel.org>; Tue,  9 Sep 2025 09:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.127.11
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757411212; cv=fail; b=r/bzPWciPvxH2A/RNWdoDNJ//P/vyVsu0JvPCn4oKRardAuB6fM+EGgTE8xE+pfFDxiivlKS5eORi+Vc2x7PI1gEJ44cqFPSoZbICQOQ8/tJ3fYsTv0VUxEQfm+x4UKOy4TgAZ4ZR89qS4kvbCP8d6AFSqU+jwPp5jYA9oWojZ4=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757411212; c=relaxed/simple;
	bh=oXjWmhGqTjhN5XFvgbQmEbwXVA2JX4my/3L06XkuDZM=;
	h=Content-Type:Message-ID:Date:To:Cc:From:Subject:MIME-Version; b=CIv1jZZ8aUHaydnrDfZTPcZ9eug4eSC+zP3DEICX/vmkqiXhQjltoPLa8kNfjGlAhfNeDydfn5yUou/hqNDNI9MWK6bpHDmYp4WB6OVk135x3OjHHmmoyQHzRQ0O+WDHNjuALxlts0TP6F5AiYZUvTm2fvc+KnnHfRkI8vlUIUY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=u.nus.edu; spf=pass smtp.mailfrom=u.nus.edu; dkim=pass (2048-bit key) header.d=u.nus.edu header.i=@u.nus.edu header.b=GZQJhFcf; arc=fail smtp.client-ip=52.101.127.11
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=u.nus.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=u.nus.edu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=u.nus.edu header.i=@u.nus.edu header.b="GZQJhFcf"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wctXw3JFTJ/33pMaetMF7QPCwC3E4oE/3M60gfsUcom3bIxrh0QqXNxN/N+u994WFcg7lR2W1KmanBlxOEE/cO+5r6tDuaTmnvpXL7ewVyVm0gxj/6xGyYyTNEEar0/Qnpmj2eLeTIud0uwIH2klVb/uGnwVLtG23ZHtCcVqJhBtvDgV46iyIjjUbPsiM6feJKNjhtIkjsysp9vp4Eklh5OtbokWJJyIGDqswipgdAkAkl0rdZCb/H9X0RoVX6vNygzVDne6/F17V3xrE72VbEOG/XxwA9HnLGQU4kiMBQLL/uTx9nKk3N2jTq1L9SUzO/4N/JW4h9nW36TIgcG5Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXjWmhGqTjhN5XFvgbQmEbwXVA2JX4my/3L06XkuDZM=;
 b=DnXZchxKg0GjduTnb3MYWObjahgbd2krwfcOJ4VS3yQl7Wwm33kLqBKHmdzCnYoF6ZjZKb8J4mqK3L6ckQqBINJANAIh8tIQb425gHZtb6CQJQeOX3wn+QaaMDgpRBAXtViialYaySPAO96F4zln1kO80V3TuNXdadBL6Q4hQ2taH2CtpXkSp1uHn65UWSf97Fdtr9elBsXEnu5PS4obdXvzs9UefWLU6uX0UzwQXzHzIOSM440nL4A57B8/OVIQ3uehpQhWOW48TsJhqte2FJWkXV1lqRIgH4hpPZBFB0H84OVfZV2RT8uW3YknTWluXUQaNIq+pHgR3jIsL2osIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=u.nus.edu; dmarc=pass action=none header.from=u.nus.edu;
 dkim=pass header.d=u.nus.edu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=u.nus.edu;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oXjWmhGqTjhN5XFvgbQmEbwXVA2JX4my/3L06XkuDZM=;
 b=GZQJhFcfdgZNvZFvdIRUFswSptz8yKoQKdNhci5/hoV468KZLz1BVZAh8xcKybXXg3yjSBsFXIyWf7t4bRkJs5Krg07JbrKHotAJTwouBTqwaGun55ikxodakbvv4NQOZQZId0ygK+PxVS+NdTBYjXXVwsaStdDWayKPo6IU9AabjiRcvKaYf2pzwqN5eF+5KH2uXXf0Z5D7rBcNLlMXofZ38gZhgagxSit0kKJiADO0KygEYj8+6l3imVDJzzy45H7sA6T9U3EDXK3lXGU0jD7Pg8FIAmz+KH8dypeUrq15Go9ZYcQ82FyHbIQRVjFa09PaG0fxFEN94h3jfNhJNg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=u.nus.edu;
Received: from PSAPR06MB4245.apcprd06.prod.outlook.com (2603:1096:301:7a::8)
 by JH0PR06MB6811.apcprd06.prod.outlook.com (2603:1096:990:48::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 09:46:46 +0000
Received: from PSAPR06MB4245.apcprd06.prod.outlook.com
 ([fe80::48d6:f6b3:cd35:4198]) by PSAPR06MB4245.apcprd06.prod.outlook.com
 ([fe80::48d6:f6b3:cd35:4198%7]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 09:46:45 +0000
Content-Type: multipart/mixed; boundary="------------Gf0oWWnTth5ARSfvND4OrMIl"
Message-ID: <68b0d14a-0a6c-4975-817d-80f4d40ecec6@u.nus.edu>
Date: Tue, 9 Sep 2025 17:46:43 +0800
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: keys@linux.kernel.org
Cc: asj@kernel.org
From: Anand Suveer Jain <asj@u.nus.edu>
Subject: Updated key for myself 4993D59F932C2921
X-ClientProxiedBy: SG2PR01CA0189.apcprd01.prod.exchangelabs.com
 (2603:1096:4:189::15) To PSAPR06MB4245.apcprd06.prod.outlook.com
 (2603:1096:301:7a::8)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PSAPR06MB4245:EE_|JH0PR06MB6811:EE_
X-MS-Office365-Filtering-Correlation-Id: f9d7b7e3-28e5-4036-45c7-08ddef85ca11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|366016|376014|41320700013|19092799006|4053099003;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?QkM5aHE5dklSTUNDUDc3RXJ4NHNGTmNMMlZRb2RLNTl4cGdDRVBUSVdOSWJn?=
 =?utf-8?B?c1FmZjFyNVkzTDVaUlpwOGU5Nk5HQ0Vkc0czYVR6SFZrbkI3QTBNdm45eHk0?=
 =?utf-8?B?ck4vczVYc3JvbGhqOS9HaXFUalMzQWN6MmF3aEt2K2lEaG0vQXpXSWs5K0tV?=
 =?utf-8?B?Q0x0ajA3cFBvTjVxMDE0LzE0MFVSR3VnbWtwOU8xczRQUFdjekxyUEJuWlVz?=
 =?utf-8?B?NU5YUUNSS3NsQzVuU0EvVkpKcHdtWnV5UExvVFI2Y29XVW5wNHVzdnZYc3JX?=
 =?utf-8?B?NTNJOWlrNVI0aXRqSHI1WEZKaExaRXUzTG5JOVRyNS9xVzU1RW9pRy9PY1Qx?=
 =?utf-8?B?N0Q3QmNSbExaSWMyZzlyVXdSQ2M2OUl0RUY1RTUvOHYwRTM1OUg3WFphYnFQ?=
 =?utf-8?B?eGVLcDNwRTc2Z2p3M09MV0ZuU25lWlhJV2xwOVY3ak05Tm13dXNTZE5rT0E0?=
 =?utf-8?B?cEt3TnQ1a1p4WldmdzgvS0cxa3RLeW9mZ2Y0SUVlZzJ6R291U2RYbGVCYk95?=
 =?utf-8?B?VzVrQmhSd2Jib055VWszcloyVURwWkdDQVlzVWtOQTh4U0FrWFdNbEJaR2xD?=
 =?utf-8?B?OHQrc3Q3V1ZKeFlsVm13cThFZXJjTmRUNWRZN25HQVh2VkpsdnFJdkNrVnFo?=
 =?utf-8?B?WkRjSitqNXFybER5c1ovekozZWRQVXJUZHU1Q0RBTkNEZzRzVWNjU1BOSXpk?=
 =?utf-8?B?SlQwOE1VVUVnVlVha1pPY21YbXFiSkp2S2xwVmgzc1JmUThuYmdoTW1oNlZF?=
 =?utf-8?B?cE9QaEZzOWo1N25Yd0VGUjhTRmt0V0tlczZ5bHIwWmIwRDRBRDlsRUFyS2E0?=
 =?utf-8?B?RURobmltTXlLTmFtSE1QbUVKK1IvWXBGcVRUREd2dEd5VTVNcTMxcjVrVWdu?=
 =?utf-8?B?cmlvN3o0bHY3MVEwZEt1aE81L2k3Z1VPNlNYQ0lSM1VBQkV1QTB0OXU2dFp2?=
 =?utf-8?B?U0dBS3RmWVBGQVhBRi9PYUdQK3VOR3RvMStzR3ZsVzBSY3NOVnEyVytRNys3?=
 =?utf-8?B?OVQyVy9nbVl1anlldTgvd3R0bGw3QmNUQndNUW1EV3FFYVZvNFZkdDg0QWcr?=
 =?utf-8?B?VjlaRVcvSlhLOEtlYkhMSFdMNFVLZERqeDBxZEF3bWlINi8xUkhCN3ZtSkhj?=
 =?utf-8?B?ZjdBVklQR1V1R2pvYVlqRDQrTHRSbHZyTXEwOURJUlpiNVdLeUx6S25lM0p0?=
 =?utf-8?B?NWlLMi93V2JJaTNDSkpvcThUWTVZL1QrZ1pPNlBLb2RnbnNqaHhiSUM1dUE0?=
 =?utf-8?B?SHVGR002VGR5WGRmVjh2R2ZIS2N1SWJaeXJlWUhzRjdmTUNZKzJwMUtOMmUx?=
 =?utf-8?B?V2w0aHhOdGtQbzBTbDZEVUdXTWZmeUNRaFNQc292NFlyd2JONTVkV3lrbUdr?=
 =?utf-8?B?elZlYkNVSWZ0ZWRWUmdkNVJYWkU2K2VUWG5XSHBkRm5PaWFYN2tjdnE5WXRX?=
 =?utf-8?B?TG1rVWl1NnRlSmVVeGNxaUVobXZRWk93RzRZanZCUURpYkhWWFpTdDdUbTlZ?=
 =?utf-8?B?NzdhYnBZKzJ6S0szdUpZWGsxYUcyQ0FpQTZyZGhvaVBGUWRuY0dHVU9ORzZx?=
 =?utf-8?B?OE1GdXpkekh6M3pWSXZQNkJYUUQ2eEFYdDU0ZmhIZVhmWkIyRFVRQUtLamps?=
 =?utf-8?B?anErcGMrVjRvbjFqWTQwQ1BLZVFQc0Y4cU5wRVFrZi9LMkY1T054dmYwV2tH?=
 =?utf-8?B?Tzc1SVRqWHMyTUVSRUkxYVR0cGVta1llTnlYcmF6Y09oNGRFZXNRVnhvSTl6?=
 =?utf-8?B?cHBkdm94cUdQQk5Xd1hKNjhNR2cvZFlEWVdUeWpGeXpsZEZIUmh4TnpFOU5w?=
 =?utf-8?B?K2xhem1UQ2Eyczg1NENEb0hsR3JHK3RwR0ZBOVlIeGRpMS9kT3lNam9Tejly?=
 =?utf-8?B?V3VCVmJtbytuMVU2QWEzNlNIU1ZxRThtNWd0SVRPRWVrVWJsTUNQdUUxNmJN?=
 =?utf-8?Q?5+3hjaVj1pg=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PSAPR06MB4245.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(41320700013)(19092799006)(4053099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZEJCQW5RclBSL2RFcG9MdTIrN1kya0FEUURmZkUwSlRRcmliNlVTUkRWSnRM?=
 =?utf-8?B?YnJSZllwTTJNeWU1R3FBeXdSY0FUK2U4MHV5Sk9kbFoxZjFyRGtUdmo0RUI1?=
 =?utf-8?B?eE8rd2MvZ1JiaFc4eVFDdnkvL1RzRnBvNUlLN1JpZll1RWlUZmVyVER5NFk0?=
 =?utf-8?B?L0c2K3ZPMXZpVDJDdU00TG8zN1p3cGVlSG4vbFQyeGwySFVtMmlBQ0t2ck9n?=
 =?utf-8?B?S0hsbjV5SWVhNnU1K05qT1RGQkJHWnRISjg3d0ZKOXFPK0JSMjFJaHJEbDM5?=
 =?utf-8?B?YXlYZDJBN2gwUDFlVzh0R2JmN1hBK3ZuSjFFU0VrcExxeUppcnhadXQ1TnRU?=
 =?utf-8?B?WHY4OWZ3bG1sY1VNVThtajhLRGcyV0pIM1JUSFVkOTV2dWROUkRJR0NrcEFF?=
 =?utf-8?B?a2FkMDhvSkxLRzF0aGRRVVM4amJCN29hZVUyMDRuNDBsWm9PL2FHSkswOG5C?=
 =?utf-8?B?dzBVc1cvUHZPZFNQRXJyNjVMbmhHNGxPdHFRTzNyaFJWY09kd05VZXBMSTdn?=
 =?utf-8?B?Nm56TWxydEdwMDhMN0h1eld6L1hZUU1vM0hwZnpPZTNSL0tRYVNJRmMwbk41?=
 =?utf-8?B?ZjA2YVN0d1Z2TW03ZnAxdzQzTEEzZ2ZOY2NSMGRHZFF6TXNWdkoyV0NkMWt4?=
 =?utf-8?B?RG9oby9aWkJ1QlNCWlZsbE83ZjVKekMva2J4OEpIdkNwYnY5TFpNMVBoelVL?=
 =?utf-8?B?R3AzVjFJRDZuRG5WZ0hNTVVkOGxrRktRS2tKdXM5RldoK0xzRi9jVGdTSklW?=
 =?utf-8?B?VFVBWkpUeXhnY2VwN1EybXNnRE1DVk16b21SWkNnZHRwM0tIeXdMWmppOWow?=
 =?utf-8?B?VjNaR1FTQmRFRFJTYnZ5TE0rQ2xoVDZUYmFPSU1RSzNVMU5TYUFmNURDRlR6?=
 =?utf-8?B?TEZJZ1hjMTI2WkRmRTdkU1hIaXZLTkhMYUtRaDhvbmpTdkcrb1JrdjVXV2hR?=
 =?utf-8?B?WE9rbkV0TkxFNEYrVkEvblYyMWxmRFFpcmF4dHg2aE1aSWUzT2dGdktPc3dP?=
 =?utf-8?B?Q3R4dzJoYUE1YVpkcStEM3V6TXE0NmR3QTRuNStZTEYzWko3eDFYa3NmRmxD?=
 =?utf-8?B?SStKWnhlODdBeUtHSE1Ec3NKbmlZQzl4Z2tXQ3kyM1VUQzNFdWIwT21TT0l4?=
 =?utf-8?B?amh2TUJzQy85WXBKYWptQ0h4Y2F2b3Z2aXZ5MitMS28zUEVBWXNUTGVrZS9t?=
 =?utf-8?B?Sk5CbTcrVXA4bUpURlE5U2thZVZXZzZ2aDMwSzNEdkNkMXBSL0lyLzBlSzFL?=
 =?utf-8?B?bm0zVzJKcjVkR2xvTVY2OFpPa2ltaitGZTVpWFh4MTRCUFI5N25CM1NvbGhF?=
 =?utf-8?B?a2RvZEora1Y1OEtQMUQwOUMyTEVSbGxtMjI2NlhnM3p2QVU4cEgzZjh3Mng3?=
 =?utf-8?B?RXcwOXBSZTdoTVMwUXBXeWNxaHNHQVBWcFNUWHVWK1ZDTnBubjh4VnRmTVcr?=
 =?utf-8?B?bGtEU21KWGN3UzRjWkZBM0dWVnBTdWRtSVJ0M09kUWZTUW9jYldZUTROd1g1?=
 =?utf-8?B?ZytJQzNsY080RlhlSVp4YTladUFMM3dsaU9GWEFtMDZ1MXI3ODFiUVIxaHo5?=
 =?utf-8?B?MlArdVU5RVdHVmFlWlhXNStFZ2tDTGU2VEhqVldQRTNqVGZDM0hVM0FyTFds?=
 =?utf-8?B?UGtJbzE3dFdhMWVMd0dxaVRTZnNSWHdFQlp1QzlGT2lLZFpVbTVleERhN05J?=
 =?utf-8?B?S1QyZEFBNVU4eXFyUjVJRlI3Zzg3b0gxSnZUOVo2ajMva3B5Y3ZVTWtUSE4y?=
 =?utf-8?B?T3NBZGxTT2tRck9pQ2VVRnRxdmR5UVk2cTZPdEhQY2lPZWRoRTBDTDZzRXBO?=
 =?utf-8?B?aU1uVHVYdExDZkZtc296ZDYxaHZkU3hXSFBVOThEc0ZWNFZWVVF5UVhRbTZs?=
 =?utf-8?B?SnJPN1p2bWNwbXZvL2lsU1VYR0JHU3l5dEZNU2I5RVdaSWttS2J1MUhEbVV2?=
 =?utf-8?B?aFZDd1pwbWNDVzQ5TWhZaVJDd0NCMjA1Q2lBbUlUZVJRZ3pWYkNzR1VtQStr?=
 =?utf-8?B?NDc4NnZvb3hldlR3NjIxdk56cEpGbjgwT3FUZlhiZ2NhdUQ2OGpFMmtnMndT?=
 =?utf-8?B?dGdMY0Q0WFkxdGVSdmo0MzJjVGR0dGVCcVJ2UEFOTStpQUJ5Z0oxdDcwNFZP?=
 =?utf-8?Q?IJK4=3D?=
X-OriginatorOrg: u.nus.edu
X-MS-Exchange-CrossTenant-Network-Message-Id: f9d7b7e3-28e5-4036-45c7-08ddef85ca11
X-MS-Exchange-CrossTenant-AuthSource: PSAPR06MB4245.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2025 09:46:45.8047
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5ba5ef5e-3109-4e77-85bd-cfeb0d347e82
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nQeXsrB4etOyqWmEbSztDGWewmj8eRigAnRQuW8sp0sMYpTZ0pZd3V194kmLosyN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: JH0PR06MB6811

--------------Gf0oWWnTth5ARSfvND4OrMIl
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable


Hi,

I have renewed my key and added the following email addresses:
asj@kernel.org, asj@u.nus.edu.

The public key is attached. Please update.

Thanks, Anand
Notice: This email is generated from the account of an NUS alumnus. Content=
s, views, and opinions therein are solely those of the sender.

--------------Gf0oWWnTth5ARSfvND4OrMIl
Content-Type: text/plain; charset=UTF-8;
 name="asj-public-for-keys.openpgp.org.asc"
Content-Disposition: attachment;
 filename="asj-public-for-keys.openpgp.org.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptRE1FWWJDV1ZoWUpLd1lCQkFI
YVJ3OEJBUWRBbTJwRUcxTGdCRDhGYTNLMElrVlpQZ1VZMEgvVi82Z0Myd09xCkU3dUwyRCswSWtG
dVlXNWtJRXBoYVc0Z1BHRnVZVzVrTG1waGFXNUFiM0poWTJ4bExtTnZiVDZJbWdRVEZnb0EKUWdJ
YkF3VUxDUWdIQWdNaUFnRUdGUW9KQ0FzQ0JCWUNBd0VDSGdjQ0Y0QVdJUVNkOFROZjdveVlnVHJQ
a2RoSgprOVdma3l3cElRVUNaRk5BSFFVSkNFWkVSd0FLQ1JCSms5V2ZreXdwSVNnUEFQNHRoY01P
dVlOT3ZPc3dYcGhNCmNIQnBoclc3TUl3MTFTank2L1h2ZW1sSDZRRUF3Zk9rRkZpK0ZWQUxTcjdo
Rnp5T1l3eFhqTUx4WTZzTnMwWUwKZmxhdlVBQ0pBak1FRUFFS0FCMFdJUVJUTm9ER2d4NUNycWJh
TXhYNGYzY1pORXEwNndVQ1pGR05yZ0FLQ1JENApmM2NaTkVxMDZ4aGZEL3NFaWlQVm41dndteVVw
M0RLYy8rOXRiMTB2SHJUMis0VEhkbnR6VjR3S3VnN1JDRkRkCjcxME8xSjdINC9sZzdIT1FrSmdx
WmhBU2pXQm1UZDMySUUwN2dWV3ovWkFuU2VMM014S3czZHdqSHRjRERyRFgKS29lS3ozL05EVmxG
eUE0d05jOTZpUFA3UndUMFM1TGdDNExndHhoUFpZV2JnMDRTa0JsdTRmWWxodUZuWkZPRQpSNWdi
V05VQ2cwRVVITC95dm5QaExBMS95QTBqRG9BY0p1a3ZrNER1bVh6TGhsOFFkUjhXSnJPRXpkYmxW
MWNRCkR1UVRkQy9xb3dJSWZNc0p0TDd5UDdvdHJCNFIrTzZ0SnNrTGUvb085RmdlcmpPaWk1cWc1
c013V3B2bGRCQjAKK0R0czNvTVdMZXpyUks3Sm1qZWg1c0dMcC9icStSMlozYmo5V2VobXdVdDlm
cFY1SGJYSEZDOWZGR2h4eDNMRAp2K2VSTkJyaFdCZUgreCtJTlU3R09nUlBXbnhaekpabnFKYlVh
THAvS2VLdlE0c0QxbWhvcTR0YnpMMFhneVh1Cm9UYUpWbFZCSkFydUF1N2NRZkZpS09OazZzN1pm
U0E1eFg2ZVVJcEtnZXlwZzdrM0NMaXQxZ3c3S0xub3dMeFIKZlVPbGdQbmNETlU2dk13TmF0WHJw
RS95NktDRWtYRCt4QncvZ1VrVjB1SnIzZVBMTmxCeDRBOThCNEEybzNIcQpFR0tMYkNyQ2pDME53
a3EwSTBSVWRReVVEVG5pUnBCYW5qbmFkNzdKbllPc2VWWVF4RHpzL3kxM0pUYmVneTJlCjlhL05u
WEVsOFpaT09XNUFuM2IrOUgwM3ZZN003bERuSmFTU0laWWdYd3granp3c1dObVNRNEF1aTRrQ013
UVEKQVFnQUhSWWhCR1RxVnRvRk1NVjNncG9aSWU3cFlCcDF4ZDQ5QlFKa1V3ZlRBQW9KRU83cFlC
cDF4ZDQ5QmdnUAovanQwNUVpZjJ3Mmh4d0tucEk4eGJ1SnMvd1BCNVRDSzBrR3VVSmVpNlFGeGNv
RlBxVi9LaHlHQ3R4OEZhYWpICkdVdHJUeHFscjlLRS8zWDF3UE9BR29kNGxYVGxVS1pDOHArdUdk
ZlYxTFpjN2Q5d2hvVUxWL3l2VVVzSFIwcUsKbTMxbmVhbkZRQzFQdkdBUHBiNXVqbkU3V3pOdnRn
OHZsSER1T0xidnJmK0JZMXR1bmNXa1JyYVhLUnVtQlpoaQpwUXdjR1BTNVBFMEE4NStvZm4zUWls
bFRBWW9FVHpkOVpJY1lYby9yMzRsRGdVTmIrRjZwZ0dHT2h0QVNQWmpTCm5qRmUrdHVrNnNXRmZx
WUlYMjhQWVBOV0FXeUxVSDhsRlYrRXF3eDBKVXdocmlzcy9YZzBkd0ZFWDZTaTRyNDEKV2pzRTVI
eVp4bEFWdmdHMCtFczhOSHpOUmtnb2R1U0tNekJsOVUxdFA2YmZVR1BaYVRhdmMvaE1EMThMSjMz
MgplNEljSnFwMXQ3bkJyRlNjaUNUVzVIanhIMjZEYllmaXRBSWd1VEFDZjdIREoyblpLUnhYcitp
K1VSalZyc1QrCjRNZmM3UTdDbDZJdFJjclZ1UENleW9TTkJEVTcvUmdJMnF2d0VwTGtCcjczSUJD
bjRHd2tEV29haFJFbXByN3AKbGx0MzR4bllFWUQrMUJ6K2NtV0FpU1V4aGxCdDRaOVplbW9HRDRh
YWtqS3FxR2NPVkdKSVVWR3Q4MFAremRNVwo4VW5PYnRKWUN2aDFPVlNFdEo2d2EyUWo0eGJnKzU3
a2FxQ2dRVk9ubWpxZ3dlY0ZaRnNKNjdkQzBRWFpTQWJrCnBDekJNNHJjWWNJUnZ5elJmUGZIVnFt
aHhMZW5ZQ0djVkhqUVNaeWE2WDh4aUpRRUV4WUtBRHdDR3dNRkN3a0kKQndJRElnSUJCaFVLQ1Fn
TEFnUVdBZ01CQWg0SEFoZUFGaUVFbmZFelgrNk1tSUU2ejVIWVNaUFZuNU1zS1NFRgpBbWl0bXQ0
QUNna1FTWlBWbjVNc0tTR2R3UUVBdkhEdERETjFwaUhhMHVoN2lvYkI2cXRPL2NLRWlJWk1Za2dR
CkNaN1ZvSzBCQUxacXpENy9JNUhiZE42RVRNYUJkOGpSWlRlTkl5ZXpwczNGYjhDZUsyd0lpSm9F
RXhZS0FFSVcKSVFTZDhUTmY3b3lZZ1RyUGtkaEprOVdma3l3cElRVUNZYkNXVmdJYkF3VUpBOEpu
QUFVTENRZ0hBZ01pQWdFRwpGUW9KQ0FzQ0JCWUNBd0VDSGdjQ0Y0QUFDZ2tRU1pQVm41TXNLU0Zh
SUFFQXlFcGhEMlVmTldUWGtYVzNpdENQCnlPeGdiMjA1NUhWVThSeVl5R3hWTVk4QS9BNk1vR0hQ
bkIvdkozWWFxUU5uS2tBU09zSXd1YzVxcjZyZStGRlgKNmxVSXRCNUJibUZ1WkNCVExpQktZV2x1
SUR4aGMycEFhMlZ5Ym1Wc0xtOXlaejZJa3dRVEZnb0FPeFloQkozeApNMS91akppQk9zK1IyRW1U
MVorVExDa2hCUUpvcmFQcUFoc0RCUXNKQ0FjQ0FpSUNCaFVLQ1FnTEFnUVdBZ01CCkFoNEhBaGVB
QUFvSkVFbVQxWitUTENraHZVb0JBTU5mSG9vZnZ0SjhiTVZudU95Tm5KenZIT2lGd3Y0aVFMMlIK
aUIwZkxNWUNBUDk1N1F1dytlblRKMG1tdlBZZDUvdlkrMnB1S0JaSFBqbFNmVmZpQ2hxSEJiUWRR
VzVoYm1RZwpVeTRnU21GcGJpQThZWE5xUUhVdWJuVnpMbVZrZFQ2SWt3UVRGZ29BT3hZaEJKM3hN
MS91akppQk9zK1IyRW1UCjFaK1RMQ2toQlFKb3N4SklBaHNEQlFzSkNBY0NBaUlDQmhVS0NRZ0xB
Z1FXQWdNQkFoNEhBaGVBQUFvSkVFbVQKMVorVExDa2hzeDhCQUpBNlI2NVg0VGdaZlJtTjBINksx
UEd2b1NpS0U0Z0pIMkxWanU4bFZpaitBUDRxekF0MQpJREFCNHpHWExmZU1oa2FlaFkyN0tvZ28w
cFBzRGdsRXNBUmhCTGc0QkdHd2xsWVNDaXNHQVFRQmwxVUJCUUVCCkIwRHZ1d3g2S2ZnN3BVeWNn
WTVRU3AvM1U2VzNQYk1TM0dmMEQ5aDJ0QXhwZEFNQkNBZUlmZ1FZRmdvQUpnSWIKREJZaEJKM3hN
MS91akppQk9zK1IyRW1UMVorVExDa2hCUUprVTBDVUJRa0lSa1MrQUFvSkVFbVQxWitUTENraApj
eFVCQUpzQmIvSHM3Z2o4QWNvcGxPVmdyUVhFUWVQaUxIQ3hWWWdPRkxWclVMLzJBUDkycVI5a0Yx
aktuWUhkCnNpa2tXdTVOVk9idFB3ZW9jRHBYTkR5QmlVQVhDWWg0QkJnV0NnQWdBaHNNRmlFRW5m
RXpYKzZNbUlFNno1SFkKU1pQVm41TXNLU0VGQW1pdG5Lc0FDZ2tRU1pQVm41TXNLU0dHc3dEL1h2
Yk5XYVZPbVR2Tm1PdHQ5SXlmK2dXTgpSR2FSSU9MT1huNlZnZnF5QXNBQS9qQXBoN05HZllZL0o3
cG9Tb0Y3K3FaQXhibWh1eS9GWit0QWQwb21LbklKCnVRSU5CR2ZSYTlzQkVBRHdCYXBjaVl2aFVi
VUlZUFdYeVVUZEdSdlhxOEFHbXFHR254ME9BM25LWDZzZU03eGMKQnpRa1RjRzE5UmFqSDAwL3pB
Y015dFg3Q2tpUXMzbFZEenpEVkFuZ29Hdmw5eWJvWUs1cFRzRG5pTWI0L1RObApNUnpCOWJMRnFE
dU0vUUVBY0ZjbDlvZDhrb2JvRkNxdW1mUnMzclZubjNJWmxjdWdPeHoreXNrR3RGQzlYQ042Cng1
eXc3dUg3TFRDY3J0SUZaaDJJNWp6YXBURVhRMm10V0hXWFR0WjZ6QjhWNktGN0lodVNUMXVRK01w
NStIWXAKdS9BeVljNklMOUhhZHpDTGpmYXJMWSsrWHdiR01UbmNSa1Z3YXpvSENORXNLTkhqUkZH
MFlya1RxQTgzZ3ZkTQpEZFltNllDamtxU3hzUlVYZVlLZ0FrOGcyM21iM2wreThrNFY1MWFHOUMy
ZzY1SUlCU0szYmt3RUZ6TVE4TG1WCm5hd3FOUFBuM3EzSzZnZnlJNlZsaWFaNnVLS3hjc2RRVEdG
R0hwLzF0c1pMeGdpZFNZYTBUVGt2TnU5a09SYWkKMzVBVU03WkpuenkwcTRnTUFUaUo0TkhwQVNI
UldxWWg5OUtxSFJqZHZUSXNBTW91YXZYUjBrU093b1pMbStTVQpvYi96R2E5Y1ZJaUJMSnRLd293
dEJhbE9GR2d0aDk1R2ZibGRzaEY5UUx4c25YLy9xTm1UQ0E2L1lGMm9PVjlaCk02QjFNVXVvMTRR
b1ZidHJvdFJzSzg2YmZwYkZyR1RscTg4MXhBRVo0QUhqZWlsTDJUYnJoOVRRaUM5V0d4U1AKZkpC
dkVmMGp2bWdHVUQ5L3NCRmViOERKVDBsaEgxNVhUbjlCcGNxZmdNR0pKOVF4cWFkcDBaRXFYd0FS
QVFBQgppSGdFR0JZS0FDQUNHeUFXSVFTZDhUTmY3b3lZZ1RyUGtkaEprOVdma3l3cElRVUNhSzJj
cXdBS0NSQkprOVdmCmt5d3BJYVNPQVFDT0wvNmE0bkJrS2xOZW5vdFpmN2ZpeGswODN6blZkVnRY
WGdZWlducmdQQUVBdlhFV3BkcHoKd3Ewb1hobXdxb3ZaZk1uaHc2MFRpUWxMQkxCcjhSczBMQWs9
Cj1EQmxLCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

--------------Gf0oWWnTth5ARSfvND4OrMIl--
