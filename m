Received: from esa3.hc3370-68.iphmx.com (esa3.hc3370-68.iphmx.com [216.71.145.155])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44699A937
	for <keys@linux.kernel.org>; Tue, 21 Feb 2023 23:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=citrix.com; s=securemail; t=1677023290;
  h=message-id:date:from:subject:to:cc:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=HJTE9jDxICE9AOsrudFjOmtp/1DKTrYBuvZndcwxjco=;
  b=MHArtF/Tuh4ffT8qz57fQbu88Ut2eoYivV7SF8mFw/aAAF+Y5XC8Fute
   v2vv7pLcHfhE3K2BswmfqrPWFt3lLvv/cCspdRwJFAyY1oxzV5uOMkGlo
   sPz49f6cq2frsf+J+np5CtNEangO8CBdwTt7lklBUmT9DtFOIjr/fFprO
   k=;
X-IronPort-RemoteIP: 104.47.70.100
X-IronPort-MID: 97984944
X-IronPort-Reputation: None
X-IronPort-Listener: OutboundMail
X-IronPort-SenderGroup: RELAY_O365
X-IronPort-MailFlowPolicy: $RELAYED
IronPort-Data: A9a23:xxRcE6oALAqagUcjXZjTFD6KpQZeBmICZBIvgKrLsJaIsI4StFCzt
 garIBmEaPeLN2Oje9wib4S18k0P7JDXnYU1T1Bs/CAzE34V8puZCYyVIHmrMnLJJKUvbq7FA
 +Y2MYCccZ9uHhcwgj/3b9ANeFEljfngqoLUUbKCYWYpA1c/Ek/NsDo788YhmIlknNOlNA2Ev
 NL2sqX3NUSsnjV5KQr40YrawP9UlKm06WxwUmAWP6gR5weEzSBNUPrzGInqR5fGatgMdgKFb
 76rIIGRpgvx4xorA9W5pbf3GmVirmn6ZFXmZtJ+AsBOszAazsAA+v9T2Mk0MC+7vw6hjdFpo
 OihgLTrIesf0g8gr8xGO/VQO3kW0aSrY9YrK1Dn2SCY5xWun3cBX5yCpaz5VGEV0r8fPI1Ay
 RAXAB8AUA+i1+mE+umyG8Ze38QpM9jnEqpK7xmMzRmBZRonabbqZvySoPV+g3I3jM0IGuvCb
 c0EbzYpdA7HfxBEJlYQDtQ5gfusgX78NTZfrTp5p4JuuzSVkFM3j+CraYKNEjCJbZw9ckKwj
 2TK5WnmRDodM8SS02Gt+XOwnO7f2yj8Xer+EZXpqa863AzPmgT/DjU6ZF2AmvmXsXXleMlwJ
 G0MpQt0/PgtoRnDot7VGkfQTGS/lh0bXcFMGusm6QelzqvS/haXAXUCQjddadsg8sgsSlQC1
 VKYhPvtBDpyoPuWRGib+7PSqim9URX5NkcHbC4ACAEDvN/qpdhrigqVF447VqmoktfyBDf8h
 SiQqzQzjKkSishN0Lin+VfAgHSnoZ2hohMJ2zg7l1mNtmtRDLNJraTxgbQHxZ6s9Lqkc2Q=
IronPort-HdrOrdr: A9a23:vd1h0qt8bG3b3XrLDzxEltu97skDXNV00zEX/kB9WHVpm5qj5q
 aTdZMgpHzJYVcqOE3I9urqBEDtexnhHP1OgLX5X43MYOC8ghrNEGgK1+KL/9SHIUDDH4Vmu5
 uIHZITNDVeZ2IK9PoTTGODYrQdKHjsytHMuc7fy25qVhxjbKtthj0JbTqmLg==
X-IronPort-AV: E=Sophos;i="5.97,317,1669093200"; 
   d="scan'208";a="97984944"
Received: from mail-bn7nam10lp2100.outbound.protection.outlook.com (HELO NAM10-BN7-obe.outbound.protection.outlook.com) ([104.47.70.100])
  by ob1.hc3370-68.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 21 Feb 2023 18:47:00 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mladKnyVLGglPBS6xdnf0hP8wDedhll46wiqE889EMXmWyzmNF1ZtahE10iGvUEFegmteO9kw/4MpQA8tV/GQFxE9+36Bt7BcolCTVGaqG5Jl/llmMUFS2pkykK4E+ZKNT6pIPYQWr4fyZ+iwERpX6vpFyfoaayVyjuFuDPxAVbeDRyE2kCDRxYiuC2CS48JNF7L9+wJcxzvNMor0oP53JefqSxXJ/trFFd2vpqf745PlRsOdlPhKie/cGF6tlO9C/3/I9R5Jf5aXq4YapJ8Dj37DG5EIXT6Gs0bhkvXiWq3IaD73WU0PVx9eLd2soIXa/4yE4fL2kdCBtGejxD4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HJTE9jDxICE9AOsrudFjOmtp/1DKTrYBuvZndcwxjco=;
 b=Os6NdpjB9c5BA2Ztpja2BrWJvz7X1pvAjdeeyOTQ89tX6xOafxs+yA4LSifjdMgdJwoL2PNwlkFP0ymG0heyyJA6gwfidos1oMwjaLwk9pBqPZX0V2yW7ZV4LxIz9cg1EHcMX94VU5+fgh9TIJ8lpzXCFhaDbzorwB96VF/vTL1lOMM6ty6jZiFGxQ2klY3DUjl4EOigdlt1AzKLUkxC6ct9t0B8cRpvSiUB3MZp4vaqp4pU/lqYnxpM4dEw9r4B2C0czuMWlX8UQ4mzwRyeYCLjXuKWKzyzzZwawR+Th6DowdtuTVo382G6eD6vpH3ZsKk4tWFq77jxktOLTgx1Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=citrix.com; dmarc=pass action=none header.from=citrix.com;
 dkim=pass header.d=citrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.onmicrosoft.com; s=selector2-citrix-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HJTE9jDxICE9AOsrudFjOmtp/1DKTrYBuvZndcwxjco=;
 b=UoCfsfod041CVW6k4hLau/6XGpDuxPX/DlcSb4n/eAvfZY2vbaWgLlsiqxC2mvF9tkUGxBlnRwqZWUoYhGijf6ENY+nT4TqEhNUa00zjjIqlb8H6zsqxse4PncCNfCWYzGdSDIwITD9uUX/XHd0uWEKCbyz2kcsa3KpiMRnY5LM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=citrix.com;
Received: from BYAPR03MB3623.namprd03.prod.outlook.com (2603:10b6:a02:aa::12)
 by SJ0PR03MB7104.namprd03.prod.outlook.com (2603:10b6:a03:4e5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.21; Tue, 21 Feb
 2023 23:46:58 +0000
Received: from BYAPR03MB3623.namprd03.prod.outlook.com
 ([fe80::8299:f95f:934b:29e8]) by BYAPR03MB3623.namprd03.prod.outlook.com
 ([fe80::8299:f95f:934b:29e8%7]) with mapi id 15.20.6111.020; Tue, 21 Feb 2023
 23:46:58 +0000
Message-ID: <4621981e-f950-5aa5-3ca8-8f96b287c771@citrix.com>
Date: Tue, 21 Feb 2023 23:46:53 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From: Andrew Cooper <andrew.cooper3@citrix.com>
Subject: Re: Updated key for Andrew Cooper
Content-Language: en-GB
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc: keys@linux.kernel.org
References: <16e57fad-ff1a-8e9f-c04d-493e880060b2@citrix.com>
 <20230221214701.bikmpnycycxf62j3@meerkat.local>
In-Reply-To: <20230221214701.bikmpnycycxf62j3@meerkat.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO2P265CA0476.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a2::32) To BYAPR03MB3623.namprd03.prod.outlook.com
 (2603:10b6:a02:aa::12)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR03MB3623:EE_|SJ0PR03MB7104:EE_
X-MS-Office365-Filtering-Correlation-Id: c45f60dd-a26a-4995-1106-08db1465eb7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info:
	JYrMiGX74ZnavmrtGgN8haC1dv8Y/72EYFx5iJ9l5wMJe1qyNpC65nBQxQCJBXxCXsg3FeaTIUtdKl4v5rHtiPUU0YOi0eGTE98pjQE/XAEmgnmYQfR1ChrusTBNjDvAKebph7B3Y75oOyyb1nojoShtKwsKIMB7j8511LHqXMVaZ0gp6rJdta8/LOCut7nDJJSh3m3gJYLE3CUFpLCh16/H9D+fiocxPKHv73mHqbQBrl+wkC7iRUgWWXqydBcX6O0A2ZmVNhDtpsYc3OW/hSfdGOMnZKUoe5DyfcnBY5J3EAKjKY4j3cX03ni40xL0WvmTSyR+Cs+Jtm/sxZYByB1ltJ+cp9iOHsyegmU80U7ap+JjJ/YhSvB0vliWNay/X7ebfr1odaVpR5gqaNoZI5eZnlUmpZkQUoSUeRvZ0qhHh5rYr+I8VZLdAkieQH+o0HIzIbC67hSli13kq9gGH+VcuhvHxbx66zdrOjm9qVskHhSxNQodvHxxm9BkZjx9tQUb0KVYJ5Va9WVYdqyEfw9c77N38raTc9w46Simh4jIA4UAjQcTpgTrEhNDIG88ODFxOVafDWDCkTxnn/y5Lkd35fr4maPdzZAuYBs6OgV6GmPT85Tsgmzw1LkadxEF3FyRItqqWe2CL6a0R34QPYW0swjIp+plxd6ZQ3tYsvKMEkf+0/9ZD+Ado93oLEkXBUyY0TViYiK2Omrpv1OZY7Tmzxtpt3xSpu3ogaEG520=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR03MB3623.namprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(396003)(376002)(39860400002)(136003)(366004)(451199018)(478600001)(4326008)(41300700001)(66476007)(6916009)(66556008)(66946007)(8676002)(8936002)(15650500001)(36756003)(31696002)(82960400001)(2906002)(558084003)(38100700002)(5660300002)(86362001)(83380400001)(316002)(2616005)(53546011)(6666004)(6512007)(6506007)(186003)(31686004)(26005)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?WVg3VmgxS0ovNk9NUVNlSCtxZzBTdTlZWFhTMGlXQzYvOHp4cklNaERIRFBT?=
 =?utf-8?B?dklPdW9sb0srRGFSNC9yVDcvZWpxUitkY3hYY2xsc2UyL3lva0ppdzZDN1Vu?=
 =?utf-8?B?NDZDVGZYSTVkcXFlcUxFYklYOExxMDlHUnFSa2pPbG9BajhnY1V5bGNYdTBQ?=
 =?utf-8?B?aHRRS2ZMNENQTVQ3blVETGxqRGpWOGhiSlhJbEgxbzM0ZDdaUWhpUG4xcXFU?=
 =?utf-8?B?dkI5dG1YTy9UN2FkaE9tbUYvSjFGUklxbjBzYjFVYzUyR09RZzg1Rmw1TUw4?=
 =?utf-8?B?TUxOeDBucjNmcXhsVUNHMmI3d3VSSnBUbnAxUXJvbU5TaS8xVldmOFV2Vnpi?=
 =?utf-8?B?M1M3ajRlUEFFb3dXQWxON1dMVzkrVEFjc3N4TUpXbkE0YWtHQUFnT3kvRVYz?=
 =?utf-8?B?bFdBR0ZtR09TRXp1dXpLRHVrZThHanA4b3BMNysrTndsajZTbWlGN2dwMWRR?=
 =?utf-8?B?b0RMWW9pbGNYSlJzd3Q3b0lVejVDWjhnanVzdHNHbUcvRFN2ajkrdzRSVng0?=
 =?utf-8?B?UVQ5UW1HZC9Db3F5bnVvK2wzZVdRZVZhdE1yQjA5dnFWSjFZTHY2OVcxOXQ3?=
 =?utf-8?B?eDRqMEwzcHYxdVQyS1o1VEVwZEpZUS84ZDcwNWUxVlBzR0FqZW1Ra3JsRCtk?=
 =?utf-8?B?RS9xRHRiRWhYbStLUFFSZUtPbFROVUJlZzdESmlqWnppa3VnTXltRnZSUGpj?=
 =?utf-8?B?NmdyVXdlVHd2d2RtSmF1WXJ5NGE2dlpSNUxSdUgxZmMyVW02VjNZdmdRQUlw?=
 =?utf-8?B?RTVEdUF0Y2dZYmVXcnJiWncwWXcxRzY0VkgraEdSdGNiMjJqY3BIYVRKMXla?=
 =?utf-8?B?amJOdTcwcW51OXp6NGdMY0EyOUdJb0pOQnhWOUoyWFFrbHowRUJpYTd2c0dB?=
 =?utf-8?B?WHNSUC8xYXUvRnZma3J4L0tDS1psWFZRdWx5RVJkaTcvM1Z0T1VSdlhwd3ZF?=
 =?utf-8?B?emRDRUZabDlzM3ZaZ3hFR3lnVlFGdmlZcGFLc0JWSnNCNWh5UEtYR24rYU9S?=
 =?utf-8?B?dzBEcktjQ3hDT25leVc1NkU4S0JMSDVPTC9LcjlCSzYyRS9YUW9sejI4WXVy?=
 =?utf-8?B?eUdHQW1OMkJlRGNNZG9IbmtuV3RLdzBHL2Zhb3hOSEM0d3dVRWY3djFTZGVF?=
 =?utf-8?B?TUpaREVYM092bzBCUEhHVGkwbFFNR0RRK2NDVTZLQkI4UURQaEczendtQy9S?=
 =?utf-8?B?VG1aMDJxMVVlMnRucnFEdDgwamFsbms1Y0k2VDFBZS9pak0xRWlyKzdFNmF2?=
 =?utf-8?B?cVVxYktyTmpScm1BUDFjOVBMRU5ndGZ6a0tUeVM3bXcxRC85dWFhMVdOaFhF?=
 =?utf-8?B?Q0N2MVFqMGFoUDk5YVArdE9xeTREUDVjd2NRMSt0UVl5RUpIUHJUZDFKZFls?=
 =?utf-8?B?c0lOWGZ3L0QrUThaU2VvRmEyVHV3VkdOc3NQN3cyY25xMXpWMjdTQkIyQXhy?=
 =?utf-8?B?MHMzbDRFU21xY251TWxZem9Ca2NFMCtzRld1TFk0c29ScU1EV1ZraWt2ek5v?=
 =?utf-8?B?dC9YV2xIRFBNejBXeWl3WElpOXN0cnp5MU5JN0FFZk82Z0ZXcjFoOGhuKzVT?=
 =?utf-8?B?bUlFS1ZaNzZ1QUZnM3BBV2c2WWJoV0gwRzlTZFdrRmhqMytrMlZIVy9Ta3BO?=
 =?utf-8?B?UHg5NFFLdjJCSm9CZnU4aWswNE1EUGxKb1BGYTNhSHdHdjRaa24vUTdlbmhO?=
 =?utf-8?B?TEN1bjJOMWZVZCtUV0p3Tm8xMmJRM1gzcTAwcW1yeFdCZEVNMUxIbFFycmpW?=
 =?utf-8?B?UXQzc002bnlHQjhBSmJGRXFxOSt5ZENHTXdYdUQxdVRPSHVTa3Z2SXlqbitn?=
 =?utf-8?B?bGVvdkUwajNsNWZROXVzcVdJd0h4RUpnRUhtUk94Y2Q4amVvSEU2YWFpTnpU?=
 =?utf-8?B?L0tNbU1QNjdPVU5kN0xxQ0VXaUo3UzRrNWtYRlZ6RkdnOExmYVNPQXYrcUl2?=
 =?utf-8?B?eTRQU0w3NDZsSDJnbzlQMEhEOUg2Q3hjeDFrZHlHMHI1RDlUWHpNTFhTWUY2?=
 =?utf-8?B?dVdkbk9IUWpFM0hhK2xwbTFvVGVDN2x1MitZM2Rta0U3c3Rnb2x4M1V6NFk3?=
 =?utf-8?B?d0ViK0Y2c094dUcxa2NMVnhvcDFZVE53MmhpVjRiUTdwYTdrNmVGK3IzTjgy?=
 =?utf-8?B?eTI3blFHcWtmUTJVZjhpSGRVMDk4WGZoQUJTcnA0bEt2MW8yeU4rUE9aNUZZ?=
 =?utf-8?B?Mmc9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	Ro46JLaJhf+xKetKZ0z1iZxo9VypgtSWZdgzi2smr0bc+ngNLNSTVAe2glssrAdaUA1DY6pSO4V6DnKMhrxO4uYM1SFYur4DnLJ1M3sa+yE0omRafxbvPLKJTrnmXUgkjgAaP88ejad3tezm+PA9kyB1XTRxK5QNV6fQPc+5R0LfHkJomucGuKHblM8VhX0nnl8EwQwvmuj7EBJmTjfx3zpZi3Jv32ltsSRsfucJK2SXd8tiTKrMKvFDqD4hYYYk7L6Oy6CKL61d1FVLHAsua3SKan21AhfKGYatE1htD339DuyM4iAZ1CZaUWZ3HrA2kbNytsPcQ0uBMtxjAiR+SJ7fxVlNpZKmIT1eIpFPnDj13ESgWgpWtylxyLEBJ2qI04sDfLjPUEq+/BY3QAELUrpIp6DAHkEBV8wYh+x1216F5lY6MblRr3IZ9Hn71Pqn9EWmWzM0QrZINN05KHBZoQJZeHk102X5Mpz7Yo66x6YM9iBcdb5Vg9B0WZa4XWeV9IQm+o3of7BqiuZaFQ4jagWW9y1FMXPLWyBYHmenQfkdQ/salf4AlO88HYjuLL/B/oOWLmUh47L0MYTt5o0TH0HERgzMSkguHKHVZmK00Z7X/qAWHFL4fRuDwyWiRU1BNOuKcd4d559gvVLnq1XLTy7SnXa4c53IwhqdlD8klJ0rmo5Q1GVMxPuYup2SBbMGgo9DiD0OHutfx8Nl8OvIiUK8SU1B6kTPnRlJt8ZA0vRUxwldTh/jAJHYwA9AO5DeUJND9EbiB1DuV8WvNpgRSV417XOOSM8+1SOdYdotYGg7nt4w6c5cE2c06RRxKC2g
X-OriginatorOrg: citrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c45f60dd-a26a-4995-1106-08db1465eb7b
X-MS-Exchange-CrossTenant-AuthSource: BYAPR03MB3623.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Feb 2023 23:46:58.2551
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335836de-42ef-43a2-b145-348c2ee9ca5b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eHP4/kSbqv4tTFTQM8PWjyZ7ETnKwWOBf2QYGtRJqA+QCqxtZuyQzJDsY3Y0Sv7Gze1jU7/M/R+vjJdYuSdtamtzh8ybc9BlL67wWSi1POk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR03MB7104

On 21/02/2023 9:47 pm, Konstantin Ryabitsev wrote:
> Looks like we already pulled in this update via a periodic sync from
> keyserver.ubuntu.com.

Yeah - I saw your message on IRC about it last week and decided to
proactively update.

I'm happy to do syncs like that in the future.

Thanks,

~Andrew
