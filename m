Received: from esa1.hc3370-68.iphmx.com (esa1.hc3370-68.iphmx.com [216.71.145.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B666C6AA0
	for <keys@linux.kernel.org>; Fri, 17 Feb 2023 13:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1676639836;
  h=message-id:date:to:from:subject:mime-version;
  bh=ihwTxHbCgqrhI72i4VbpyH/Mg7pgulhFmXHcVzGwbXg=;
  b=SFvoIB+AD8/UIKYcF0GrNsPyjmT0k9EcFEFVEiZ7B7hFp/JzIHVLcVwN
   u0RMuSNT/vpmGobHKMd/FkAT6SeH6UWFmQZhaagu7TQUtGXmEU2GrAvrO
   XfzZvYWTYtcKy+IbufIXZVMsKEqn9K9gtq9FWovEhK2abImgctcghuDtr
   Q=;
X-IronPort-RemoteIP: 104.47.55.104
X-IronPort-MID: 97879153
X-IronPort-Reputation: None
X-IronPort-Listener: OutboundMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
IronPort-Data: A9a23:+1If6a3ERZ249I+NivbD5aNxkn2cJEfYwER7XKvMYbSIYQ0TYwd3s
 SJKBwnxWpCKKmTwCNoAYY2whE9yvp+jv9Z9GUE/nZ0GZ34S+ZSVVN/Efk79Zi7Mc8GdERo/t
 MlANombfco+QieA+B39POC7oXVyjPjVHbH1Vr/INH8tGAVpRnt+0Rhuy+BRbuKE+TScK1rlV
 YTa/JeFaTdJogJJD174gk/jwf8FlNPqtTUgkWQJfvFEulbCimMYZH50Dau7ciXxHtAOEOXrF
 rzKlezj9T+CohohAIP9ybz2K0ABGrCMNgbX2yELUvSv00IbqCZujvdlZKBMM0oLgjmEw44ZJ
 LmhzXCVYV5B0vrkyLhFO/UhLxxDAEFmxFPmCSLk6Meen0DNfyfnyP5gBxg7ZNAW8bcvCD8Tr
 fEUIjpVP0yP3+64/um2G7Jm7igBwGsHH6tE4y09kmuJZRoCacqeK0kfzYYAhF/cvugXQbCFI
 ZJfMWE1BPj5S0UnEk8ND54jl/ufiHD6cjlJwHqYvqNy6GXIpOBL+OGF3OH9J5rbGq25om7C/
 jidpz6gXUlDXDCi4WHtHkyE17encRzTAOr+JJXgntZ2jVuawHAkCRF+fTNXdtHg1yZS8/oGQ
 6Al0nJGQZoarSRHffGkN/GMm1aWvwZ0ZjZlO7ZSBDdhaEbjy13x6mAsFlatYTG93SM8bWRCO
 lShx7sFCdHz2VE8pL30Grq89FuP1SYpwWAqOCwiQxFC3P7a46YwrBT/TP9uFbWZkYigcd3w6
 2jiQCkWoZw21JZO8prhuFfNjnSru4TDSRMz6kPPRGW54whlZYmjIYu19Vzc6vUGJ4GcJrWDl
 CFcx47Cs6ZTUNfUzHDlrOYlRdlF496sNjHGjEEpNJ4m7zm3oFaofJxK4SE4L0BsWioBUW62M
 BCC4F4KjHNVFEuJb5RuQd29N/UB4IG5TYTqD8LoYeMbN/CdcyfCpkmCf3W43G38i2AokKciK
 dGYfNyqAHJcDr5opAdaXM8Y2L4vgyUhn2XaQMmjywz9iOLCInmIVb0CLV2CKPgj67+JqxnU9
 NAZMNaWzxJYU6v1ZSy/HZMvEG3m5EMTXfjew/G7vMbZSua6MAnN08Ps/I4=
IronPort-HdrOrdr: A9a23:HjvSHqPXI3VvAsBcT7/255DYdb4zR+YMi2TDiHoddfUFSKalfp
 6V98jztSWatN9jYgBEpTngAtj4fZq4z/JICOYqTNSftWXdyQyVxeJZnPHfKl/bexEWn9Q1vc
 kAT0EXMqyKMbEQt7ed3ODXKadF/DDKytHLuQ+IpE0dNT2CJpsQmjtRO0K+KAlbVQNGDZ02GN
 614ddGnSOpfTA6f9m2HX4MWsnEvpnumIj9aRALKhY74E3W5AnYoYLSIly95FMzQjlPybAt/S
 zslBH43Lyqt7WW2wLRzGja6rVRgZ/ExsFYDMKBp8AJInHHixquZq5mR7qe1QpF1t2H2RIPqp
 3hsh0gN8N85zf4eXy0mwLk303F3Cw143Hv5FeEiT+7yPaJMw4SOo5kv8Z0YxHZ400vsJVV17
 9K5XuQs95yAQnblCrwytDUX1VBl1ayo1AljekP5kYvJbc2Wft0l8gy7UlVGJAPEGbT750mKv
 BnCIXm6PNfYTqhHgDkl1gq5ObpcmU4Hx+ATERHkNeSySJqkHdwyFZd7NADn18bnahNBqVs1q
 DhCOBFhbtORsgZYeZWH+EaW/a6DWTLXFblLH+SG1L6D6sKUki94aIf2I9Fq91CRaZ4gqfbwP
 /6IRJlXC8JCgnT4PS1rdF2GkunehT8YdzvovsulqSR9IeMB4YDChfzN2zGo/HQ3sn3PferJ8
 pbGKgmcMMLflGea7ph7knZZ6R4D0U4fYk8husbMmj+3P4jbLea/tDmTA==
X-IronPort-AV: E=Sophos;i="5.97,304,1669093200"; 
   d="asc'?scan'208";a="97879153"
Received: from mail-mw2nam10lp2104.outbound.protection.outlook.com (HELO NAM10-MW2-obe.outbound.protection.outlook.com) ([104.47.55.104])
  by ob1.hc3370-68.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 17 Feb 2023 08:15:41 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZvLuC6P0D2fuHt2AeTv5ygU3FBgFlAvLvEUwdE9886GvVHOn2tGaqQWekd50Pd0H2bhVl4z82w6Aj7dMcC8xhThucgmJmEwwCDGUetffrZ1fQ9dGmm09ceHvNje8JaqBJchvh+d1CxlIY7/Lz5jh1ZqR+yAq7eDwvy67b9tJ+qcBllXNWanls6IKYXljpI8YuRAhX1jDJcZHudG/P2hOwJXf4CXoosQmNY5R+pYgbMe7DAnPH4h17JQfw+czQ942nyuPuIP34roZiWbXnipQnPE5g9dXG7MfMdj54PlP9op5qwQY/j+1Iak39pssSQuVyoUNo8BSSMj/A747+KJFkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ihwTxHbCgqrhI72i4VbpyH/Mg7pgulhFmXHcVzGwbXg=;
 b=HBAi+IA53mIQvlPqf0el8leaJS9c8Wk8wX4P+0aEfgNpgg4hlkfuHcb0FvgAlvlN1SDk+/L5Af7P4WtSnO6YC4zqd/MH+9n3Fle8yKmteoGJSjuhhlBu5g3J8BbjkClou1KSSWUuli0X2Vo7Z3/ZB6L9X7H00NtSwe02mp4H36Mwd5Q7csDC5+R0dniAs/5D6hoE3+rwKsc/9Zp6tXR7FEHV3YITJ8rxy5xcEdXGpWIgVPNwOtkzk1jz7EZPcqTbYuBAM+MtM/YAaXzisR3bMinGE7pADpBzeKBOLoTTgKQAoYUEqXKSUA7SwzIL3qGKUaiSbxjOleOyjqOYykHjrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.onmicrosoft.com; s=selector2-citrix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ihwTxHbCgqrhI72i4VbpyH/Mg7pgulhFmXHcVzGwbXg=;
 b=iXb3qZ/c2L1wdeBCS9tgXQFw++xoGVwBEv32AH2YyAej/KqdBgPHhqXEj88bvweXzbSjg9lpZ5ODUCLOEWD9iPGRszK+kSR7QxsHiqMKdFuawO0JTkNiwecGccmfVXiNcEwmwbtvSjlPYnWE+p26MEdNQ2iKxkBFoxDz3UP6TOA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=citrix.com;
Received: from BYAPR03MB3623.namprd03.prod.outlook.com (2603:10b6:a02:aa::12)
 by PH8PR03MB7245.namprd03.prod.outlook.com (2603:10b6:510:238::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.13; Fri, 17 Feb
 2023 13:15:39 +0000
Received: from BYAPR03MB3623.namprd03.prod.outlook.com
 ([fe80::8299:f95f:934b:29e8]) by BYAPR03MB3623.namprd03.prod.outlook.com
 ([fe80::8299:f95f:934b:29e8%7]) with mapi id 15.20.6086.024; Fri, 17 Feb 2023
 13:15:39 +0000
Message-ID: <16e57fad-ff1a-8e9f-c04d-493e880060b2@citrix.com>
Date: Fri, 17 Feb 2023 13:15:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-GB
To: keys@linux.kernel.org
From: Andrew Cooper <andrew.cooper3@citrix.com>
Subject: Updated key for Andrew Cooper
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------y2YAxVWARcVz2t4VOeCsRVBs"
X-ClientProxiedBy: LO2P265CA0117.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:c::33) To BYAPR03MB3623.namprd03.prod.outlook.com
 (2603:10b6:a02:aa::12)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR03MB3623:EE_|PH8PR03MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: b0ff0a7e-4a99-4a89-69aa-08db10e9102e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	44OD/Cps7aLkgk0XG9gnsWBOidDfCU1OrrHKAzmN9R2HDgipc23kEOHx0ZcDE5Ntxcnxq7dVWA93PkvIhguDQvG3BUcuWBrIwuLvhYhojT3ktWmycGCWOghNOFno1iXwjgF8aRRokdDUvu5IhOHkLOEhzDJghOUXJqsLOTJNmGBFfqjXdpEom9InX9GxfEUsT+dCxBH3pvHl8o28wHGx16MRzLc0O3rs122wNC+Y5PcZN1FBJJIlisdk1fiNWznCNCWU37y8EFikEqbWm3ut/lFVRJV0GdwuDF3WoLRA3cosZhNKLa5eof+H2rOhwSHOlsXbH1qCzbqupGznFcHKpEF1+Q/6RYMD454E1zrA8Dmyr9JB8HTKcYYCwYiveZUIl/JRpP+MDhWMRGEE+rOcdusniy63UrMcfc7XzQpKVYXS2dvX5x9nnRSdUpJvCQvYSdUcgP2bWWJbJQmkZiEKgFdzUy0jEYYzdrb2U8S93Fw=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3623.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(366004)(396003)(39860400002)(346002)(376002)(136003)(451199018)(31686004)(31696002)(2616005)(83380400001)(86362001)(15650500001)(2906002)(564344004)(36756003)(478600001)(6486002)(6666004)(33964004)(6506007)(26005)(186003)(6512007)(66946007)(21480400003)(38100700002)(82960400001)(235185007)(8936002)(6916009)(66476007)(8676002)(66556008)(41300700001)(316002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?ZnZOTlhZcDk4Q0wwQ2hCM1Jxa1ZqNElRZ09wU2pIdE9NK0xiOCtwZDBFVzlo?=
 =?utf-8?B?emR4cUhmYlJ4YzZDVXprdWZxOTFPTTBEdHcvNnJuQ210VExZRkE4U29ZZS8r?=
 =?utf-8?B?bXZXYXVQaFBrZDMyZkp4dlRKditsaU8zc281NW9hMVBMK0FKeDNYRzR6ZEd6?=
 =?utf-8?B?YnFJdkVvKzdBL2xHVjlmb0RKRnZZZGNMbzFYS3IzNGdvbFVuU1lDWUFnQ0Vx?=
 =?utf-8?B?SnM1S056UWl0Y3dnYU9nQTlEblZ0Ym5RNjlzVll5b3l3SVZqdyt1K3hWV1R4?=
 =?utf-8?B?RSsyVVMwS2RtQ24zUjA5OGx6TW1ndXZ4cm5ZVWFwMkNZQ2NqN3NwTDBHUFhD?=
 =?utf-8?B?RFhRRmlKZWF3d2x0YzJWZksvUjhXVGxKc3FCZGp0d0I1S0pIMWtObVJndkR3?=
 =?utf-8?B?UEpyZC83dW56d1JsK09penpMK1E4dDF4eVJyaDhKaHNiL3lJOFZyRmcrait6?=
 =?utf-8?B?TlBLU3RBZEJydzU4OFhJcEpWUVRKUkVFUXJzeXpSTFVnU0ZWV2IzaUdYeERR?=
 =?utf-8?B?dkwrUVcvUjFIZjJZRHdac3J6RldNQVB2OEJ2K2QyRFZyZHp5MVo5eGpvNml1?=
 =?utf-8?B?RG9kWVFjK201S2QvTWFGbGltd0hTeElRVmpmWmxFbFQ3OG9tR3UzYWVyRWhH?=
 =?utf-8?B?Rk5vdHNMdWs5TjZYcFRtOWpKTjZRMzFacmJjdjZUNERhOFR3L3psUGtuLzVj?=
 =?utf-8?B?SWc3eThodjlKbXAxWEdWYlBPeWJTNUo5Nm9uY3IxbWlCczU3QjYzZXZqRFBo?=
 =?utf-8?B?dEp4UktKR2orNDUyLzBiZi9KK2tHTFJpY3BJRmlhL29lUlRzeGFJZnQ5VXdE?=
 =?utf-8?B?TmZmdDJsZ0hYek5WOGZiVVlMWmdBYlNIU2kycm5GN0VReGJFVUk4bkdzVTNI?=
 =?utf-8?B?czJ3bDhrbklrOWU4SmE3bU9vSHhHbFNUWU0zNWNXTUhWNlE0RGFaSThGMEV2?=
 =?utf-8?B?L3lFR2REVGx3WkJMWTc3azdBS0k0MVNPUitUNU1jcUxRcCtqc2llc1VBaE4z?=
 =?utf-8?B?bjI3bUdVU05rTldSbmxvWVFpem5zWHo1a3Y4TkhjN3BCL2lyWmJIaFV6MGxv?=
 =?utf-8?B?ZHRoMTVzNVJQQWxMSE8vSjRPa0IxY1Y4ZldXMGxkNG1BcDNBMTMyempVaTY5?=
 =?utf-8?B?MWplYnpqWDZnellNVnNWTG9BT2tXZXh3cVNlVld5N2VKNiszcWp5NlI3TU9W?=
 =?utf-8?B?SjFZYXN5QXRKN3U2T2FzMEYzdklrQzZYcTZFMms4aDhzOTZ1WTdQcXpNRDkv?=
 =?utf-8?B?SzVlZnBUUDJxallBZlVGcjUzWGw0VlpscDhQY3l2bWVtVmtjMkxzNjVFbFFE?=
 =?utf-8?B?aEdMZHA1bzZUK0hZL2NueW1DY0pTT3NadmhoOFRpWkNBL2pGMmpwTVR1Nzl1?=
 =?utf-8?B?VWJTdmt4VlFuVnM5Q3dxUjhScHB5aG10WEdIMlRHR3Fic29xWDZIdkVoSVhG?=
 =?utf-8?B?Um5tU1lOVitkQ2xrTGZjdXZaaTJpQzBiRzQzaXV0RWdTWmNZT0hxUGlhb1c5?=
 =?utf-8?B?eWRZVWg4SWR0R2w4NkJ6SFNiR3AyOEFFZXhpTVgzeENmNVRrOW56YXp5SkhI?=
 =?utf-8?B?MWhERi9BSkVzWHpyczhhb3lJS3R1bGlnT3FYbmErY3hkbEpva3hZKzV1dUxi?=
 =?utf-8?B?NHNFcXRmSC9GVVlUUmhRWmNaZU1LWEkxeTMrd1o3dnFxdHlhZDhOMklwNmp5?=
 =?utf-8?B?RS9uSmk3cGJkR3QyL3NxMmZxWm1HR0ZQRzNTaHFJYTJiajl2WCt5ZFQwMGY4?=
 =?utf-8?B?ZmpBZmZhLzE4UGY0UmhRUmRLTENlQUlPVWlURkhwQzh3Z0puS3FhbU53ayt5?=
 =?utf-8?B?RXhaU20xSkVQUExMNHl3QWZKS3lXN3cybGtkYWtNcXZWNWpDY25aSmFtOWJ0?=
 =?utf-8?B?MG45NmlBenBBNk5KajV6L3NuTk4vTGZZRXRucENUMUNyQjhGbkhCMHlIaW5D?=
 =?utf-8?B?dlg0cE94ZkdyeW1VelVzQ1VtcmJwVDVIRlFxVWRyRnVzZ2pXbnRCeUVpeTZl?=
 =?utf-8?B?SG9GYzBxcEZReElOMEp3Z1dzMXdvMXc1M2Iyb2FiNW0yTFV4TkQ2L1pkVHh4?=
 =?utf-8?B?NHVSMWpCVFlOV3FWa0RjNzVGcDJsbG80R1Y0UHJLMzEzTmhLcHBZeEpTQnJr?=
 =?utf-8?B?UWR0Z2IyOVRMZzJqVjl6RlRVSXQwUFdBcVJrMWNSUmRlZFh1R3I3MzBpakUr?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	93xbNauQI2NKnJNmiB1A7lSwEO4aYOsoVqLgetKnzmjodnmhr8ewON4R6m4hzxsHcIIP1bFt9LtXx6OR0Dv/zffR4WkbzpVKi5efSPgMuABHEjZgUW5G+MiHwAE8grxkfpyQJ9fantSAIPvOXcNqvooks2jYpm64p46x0RqUA4GAYaAM0HA7sVdwwKtkMfamge4hoojZIBf6kc2aThlOcO8K/63jvG0fB8it8TlITFjfQZHT/lB+tEkmw1xvtEhMoXmt5XNkwjeVhgbHHev2nQkSkRxkPdf/rwEAoqF4jPSx2SdiiE1TE54b11nepBEl7wMeGCKfCuu/QghzaNRz12ryKkb6Il2dugo8JSejXCqeDoxphR/w9z1VGT579u+DuoFxhjYqT8kOF4RR/7JPdXKL2xopLCLeG3+9esuo9KraowOX7BQYRHo9tkWhGoTvJQ++BdLpYwjzVnGYw9MwX29R9ThdeeJIvpE4hkas7qqrGEaBjuLQYtk+lz6lLiQAJSnO4J8PCqvZGVqwFyYYzG+oqXQeMnOcSGYZHFt/1M91nX0/64BcvVLgoHy5V1uE4dj6zUEzxlxapWYIzrLX0cacJbMnW/xOyJfCNqGwPt9fFes9ypvrXPJJPOQu8DxIGFV9RgwVZ7Dp7Rapv88NGOt5dX5wP0s6dVYl4+dBuZo2ADuRGRptrxsyyXGpoV/EGsClAe3+KtJ7MBvXhfTxKg2v+4MlnjmYrZOzqK5rqSx+l+frSmuCGL2mtpqsVSLZQndbIbJWXt4aCL2ijDJ8jQ==
X-OriginatorOrg: citrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0ff0a7e-4a99-4a89-69aa-08db10e9102e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3623.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2023 13:15:39.1239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/I0dcBvnVl+IcspgEfhfWKiGeCUP9siaxt0imi2BHRxYUFScem7QMbi8OgOP2jdRXOWEImpI9b1uOgKnmPN8QI/zlOL6uIN8WEGgG7MPJc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR03MB7245

--------------y2YAxVWARcVz2t4VOeCsRVBs
Content-Type: multipart/mixed; boundary="------------qPWTToenxUvgZv9lYQZJ6U0t";
 protected-headers="v1"
From: Andrew Cooper <andrew.cooper3@citrix.com>
To: keys@linux.kernel.org
Message-ID: <16e57fad-ff1a-8e9f-c04d-493e880060b2@citrix.com>
Subject: Updated key for Andrew Cooper

--------------qPWTToenxUvgZv9lYQZJ6U0t
Content-Type: multipart/mixed; boundary="------------d60nRTwztxEgyqzQJ0HoRj1K"

--------------d60nRTwztxEgyqzQJ0HoRj1K
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable


--------------d60nRTwztxEgyqzQJ0HoRj1K
Content-Type: application/pgp-keys; name="OpenPGP_0x65C3F906A5D79FA0.asc"
Content-Disposition: attachment; filename="OpenPGP_0x65C3F906A5D79FA0.asc"
Content-Description: OpenPGP public key
Content-Transfer-Encoding: quoted-printable

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
=3DMwTe
-----END PGP PUBLIC KEY BLOCK-----

--------------d60nRTwztxEgyqzQJ0HoRj1K--

--------------qPWTToenxUvgZv9lYQZJ6U0t--

--------------y2YAxVWARcVz2t4VOeCsRVBs
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsF5BAABCAAjFiEEzzVJW36m9w6nfSF2ZcP5BqXXn6AFAmPvffYFAwAAAAAACgkQZcP5BqXXn6CT
mxAAks4uv5diKvSNGI97IKBEZG/ZZoASJLlunBoOztHw27JK+kRWOAdlammxQWZX8ixPRYKdInjg
ixdrv+SEBTgPcfs33+V5gs5YCMsLkr4u5AXlEc4w6Gw7j83ysNRTnTE+G/EK71v5bn/2XeUtBrD2
nSYLhQZ18OIYnWFsLUi2pYGUSLSjGN9vx9EhVCtTXQGYpAzZJoW6FF0jkyIDkbqFP+Dv+Ny6g/8+
fj4ZN/u9d3tjQPoV/NJUqhrVbcmOW+gMnykvJiCDsvfqMRGKgO/wgpWytG8Dlz0Xp3j3F2olMqTm
Dku8NmV5o5/d74VuUPEkDZ759CB0bZPtB08YpSsN9w/dVRUVqH4SC9wHyzNoHpdjuidUZY476dER
QmUTKpqNkQ4TV/cr084O6tj9Fkk2zvfzOlUPl1sQTiRcxk/1fAjqS7r5krDG54XEXCoHBrW/Fjaa
Tm8Y+7C308bWs7Fi2pZxH6ul2jz7wZxVQg8584EBRBTG/ywK3VKbcOOW8xGLCpKhaeDqaKmi9MFE
jkXUvZHE6clhDDyaT7ITHcRJAK6rflIrk/gJssO11bG6WiexRHEbz9fs0W8Ogfse2Z92LA9K0k5r
VY/Mhayp4EFoZ+FRZN5ZTNlsQg5jo6LfmVh6cFkmwMTguhUEWn68JqAM/Cb3Y2Pja+oFVDeCzQLr
uIE=
=FsJJ
-----END PGP SIGNATURE-----

--------------y2YAxVWARcVz2t4VOeCsRVBs--
