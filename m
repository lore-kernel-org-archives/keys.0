Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C162F234B
	for <keys@linux.kernel.org>; Thu, 26 Jun 2025 19:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=198.175.65.21
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750967968; cv=fail; b=SFbEGYgeKq2mQleq+fsGCRPV9p1zESyQ3yGWRsuMAihGXxubbIUgXaero8tfXezCOhbpwYquj/XlWWf8wNuWr+JdtV3Z+GDcTm17dqpnzrNkMAtWbaN0XUscvRZslHdD7k/95bSeaTRHNk3evI0xcGG5q+Yg5o4br7+ndYogaRA=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750967968; c=relaxed/simple;
	bh=pC/WaJMjj5b6IoqX8MQu3w58bs/XC/s5T7iXPI4muxU=;
	h=Message-ID:Date:To:From:Subject:Content-Type:MIME-Version; b=IjUBZAkV2Gls/9ysRJdiNjblf9RZazGIS5SKQUWVg+21j2gA3ULsIIhwDcwEiOKSK+eTamMNTU0LlWEG6uqv8HHE3AMyxQOJj5OUzGO35PkfoAcjFQZDjkB+EqtHHgs13S7Ptwt1cUXNZOn9CVFFKYelP0DaU80F0xtuswYAwSQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com; spf=pass smtp.mailfrom=intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=MCMFzdsQ; arc=fail smtp.client-ip=198.175.65.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=intel.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="MCMFzdsQ"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1750967966; x=1782503966;
  h=message-id:date:to:from:subject:
   content-transfer-encoding:mime-version;
  bh=pC/WaJMjj5b6IoqX8MQu3w58bs/XC/s5T7iXPI4muxU=;
  b=MCMFzdsQ3PmR4qq8pSqYa1aWJtXEI37UbwNFmKyZYnqwtJTdFM9o7q8k
   S1TVKN6nSPnYsQLlQsi/YLlp81v2YtSIBj3RshpmjC7IB1BJrT/2oUyRJ
   WGut1PbhfhvB/ZOezbO27WaIzeAIb95bRM1G9iMYBnrOfN4qT10J5oe1J
   oTEvaBWdz9AbfcDqDpEeCl+akb3aOYAQffVQoC2t5RjV/l2xJ7l4KY8Xx
   5Q7L57D/Pg5X5WWJtAW/gA1jrr7GrtFIOtrJ+Mjhvm0IHNDi/nu330j2K
   BemHo9+dbsbYuviRCks2Z0Q25DC6EqI4iUvG0BdqShee09hurMksFzZ6F
   A==;
X-CSE-ConnectionGUID: xOF5Pkm6QJmo2EACjBqvlQ==
X-CSE-MsgGUID: DfSQfmonSJy40Hz4wUVBMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11476"; a="53140429"
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; 
   d="scan'208";a="53140429"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
  by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2025 12:59:26 -0700
X-CSE-ConnectionGUID: 54B+0O03RYKiJmU+7msS1Q==
X-CSE-MsgGUID: lfsqMpWDRGuOp4BC3xn3WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,268,1744095600"; 
   d="scan'208";a="153107666"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
  by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2025 12:59:26 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:59:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 12:59:25 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.82) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 12:59:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L7dypXgaURIN6pPZ3kcYNk4d4kSNFx4YeDGIbUIM7sdgApki0C42DbLh1wAInP1hJv8X8lzAk7HxvdJN9vYCSWb/T+SKaQHqkXypgo+2zBGsSZ41CBmo3tW/4zoGHjGIMataIF8ARxrI+RZMMjljS965MCyxaDaLDdVcoKk1JyOGgujie4zNf6yIthBA3NEMjJgBfT1YUOI8b6XQvyT0Q2uN8zBXdJkP5Vsn9ML+BHfZ1SKiy/hIROkl4JLJggek8EtaRW8jFdVNa0pSKXNOC5xRpPrYZXAnV2WIXZf66uqntm4Q6iq7NAoiO3sim2uDseHeDm+0gZNyCoNICZOLhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pC/WaJMjj5b6IoqX8MQu3w58bs/XC/s5T7iXPI4muxU=;
 b=YFBBgqAWmZJT+p/JEDDJ7M0+EXdzRRNWi38QbKJC4OE7XOrW4HS9Ma/bbBPf6b65zF5SBjUwcJg08mpHrs/sByFs217MpIY/OzbcNGkitovb3/0VSsofyQW7SD3y0CzkBbbrAQT7ZvYRdaNwf2TSERmGCnuf3H5lM/KLo5n6DzWYeWtx7cbMFwuuL30IIRJ1+ysJ3lZA8egTuJt2jtUrZkSa6Q7/My2PyWQfmV2cXApyFSlyxWDJGsYGmk0DWEPMB8qWAUYnjnDd/HkVwcG/aMh5DBeru3XeU+e114w9fOj8ThgOJVp+MIoTV4voa3TwS9RpHgIyNDFWXaz7oB6LYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by PH3PPF7A88A980A.namprd11.prod.outlook.com (2603:10b6:518:1::d32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.19; Thu, 26 Jun
 2025 19:59:09 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%4]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 19:59:09 +0000
Message-ID: <33626625-c359-486c-a263-8e6660abad10@intel.com>
Date: Thu, 26 Jun 2025 12:59:08 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: <keys@linux.kernel.org>
From: Jacob Keller <jacob.e.keller@intel.com>
Subject: Key for Jacob Keller
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0371.namprd04.prod.outlook.com
 (2603:10b6:303:81::16) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|PH3PPF7A88A980A:EE_
X-MS-Office365-Filtering-Correlation-Id: e299919e-998c-458d-6a5e-08ddb4ebe9dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NDMycUo2TXQwaW5tMjE5Q0hzUW4wWG1DRktUaDhXY05YQkdsaG1rRWg0VU1u?=
 =?utf-8?B?aVZ4NVgvZERibUFUVVRsOVZUSlQ4bWxrMGI4V2JXUDcwUGx5Vm1TZFlHa3VY?=
 =?utf-8?B?VEhTelhLN05VYUhRS0FlM0hEbk9IOVRwQnN3WlNZQUZrekgxemg0aldXM3FI?=
 =?utf-8?B?Sk4ySEROTUFKOXFoQXBzVDVabG9aaW44SjB0Vkl2T2tnOThVak1wYTQvTlFi?=
 =?utf-8?B?OGwvN2tZN0doQWFVeS9rZ3Y4T2lGRGRoRGIzdTlETFZKRXZGZEpYanNYRTBn?=
 =?utf-8?B?Y01lb0F4Zk00aFo2Y1pNeG5DTHcvNmFXRE1BYW5qaTI0U0t2cW5BNHF4dzVk?=
 =?utf-8?B?Q0IvK2locnF4dVkwSkh3bys5V1F6ZmpqQTNGZTJSVnlPODlrZkh5ZWJZRVZF?=
 =?utf-8?B?UE9OUTRpajloclIrc1dMLzl4TzVVQXZvZlp0anRrQSt2NE85cEdBT2dKNkhm?=
 =?utf-8?B?eDgwOFNQdWJGMllnTlEvd2RvSjZ4UEgrcnBDS0ZBdnJKM1lHa1RsZGRGdXVk?=
 =?utf-8?B?aGFxcVpWZHAxR2FPY1VKUnAvb3FENlpqTnZiWUgzNERkUDk2WmZlK01VeklB?=
 =?utf-8?B?RHp4SzR4OGtLQ2dGUWNvYjNmRXcwemwwK00vaEtGVEZyUlRyTzdjcTd0VHpM?=
 =?utf-8?B?YmJHdkl4NHZpR1l2QXpZMDY1K1ZTNWxIRndrck9BNzZnRjQ4STRtRUo4RXpD?=
 =?utf-8?B?bWcxaW85Q0lHY29HSHZNYVpwR3MyQzd4YXNtWjBHbEtvVTJjMTluamIwKy9k?=
 =?utf-8?B?ZlVEYi9iZ2pjOGVMb09sdCtJcDZ1UmlnNVZmWEpZOWEwbU5JbGRMVlcyK2RW?=
 =?utf-8?B?d3RTNjZQaFA5M1M2Qzc5NW1DaG9Ed0t3cUxjdEdaK0tNeVBDV2ZDQnh5V3VZ?=
 =?utf-8?B?bjhkcE9UUTZQdGpVa0M5eU85V093MVExSUxqbGNORjZwL2lNa1lDYWQvcUpn?=
 =?utf-8?B?QWFkVEJzaXRKcEtEVTIvSzRUdTQ0QjRURFBWeXg4L3BYZmNvNUg0QnRubDVw?=
 =?utf-8?B?MjBsT0JUZnBXMXVJMFR5WlpjNkpkdmhNZUhBYlpOSm1WUDdzUE4wdFFxZFdZ?=
 =?utf-8?B?am9aK0I4cG5PNk9CTWxjYUZyWkJleEY4bkZyR1k5ME03bzhHd1o4S0lLT0k3?=
 =?utf-8?B?KzZKQ2oxd1RST3lhZnFMa1R5VXhvc2VlN0lGRklpNHE4TEdvdkNyQUNJWDFs?=
 =?utf-8?B?bEJpNU1lcTdQNlZFS3hzVUlPYlh0MmoyaFZkd0ZuRTZyREVmQUVZdU0yeGxN?=
 =?utf-8?B?VW5KV3lZUWdXdUd4cnNQQ0FwcW40WUI2UTR0ZTdTRnYvTUFEeWdCZlAyMTZW?=
 =?utf-8?B?SnFjUmZKY1Z4TzQ2d3dzWHlFcVFIdmVhaGFhQVNOSUdxSC9jTnJNbXRVdElR?=
 =?utf-8?B?Z2ZkeVRCOTRYYm1jbnRRa2V4RFhTMGRIZDRIWFRZTDF2Q0dHZDkwcTJqbFd3?=
 =?utf-8?B?Z0YwNGd4bFRMSXYwTzViL2VaN1hSdVlrRFlFZkJRWDBlUGR6WG5yTkQwRWEy?=
 =?utf-8?B?bnV6bEp1eXp5N3kzMS9sLzJtaWNkOFdQRVNVSXBiRVdndnN1TlBiZGdwNHU0?=
 =?utf-8?B?c1BlYU5Xekdwa1VUVVpMZDVyWmVBL2xlcVRaL2hIQnU2T29LTnpEa2xjcWdS?=
 =?utf-8?B?aDVHdjhhOXpjMStJU1hSYzMrWEtpTjFpdzhNbWVhSGlyWXZoQkpNMGUwQVZV?=
 =?utf-8?B?M3d1ZDArM0d3RmNFSVUyK2srblNJZ1BCODVqa2pRVlRDaUF6VFBkTWIvbjVZ?=
 =?utf-8?B?eWQ1NWxlckllSlBNU3lMQnk1MVJ3eTB1a2FFMHM5bFJaUzg4dDJrVkc4N1JB?=
 =?utf-8?B?dnJsejF5ZTFncEhMMmY2NTYvZlF0aHBhY3VlZDc2NFJkclFLMmcxYm1XVFd2?=
 =?utf-8?B?REJkUnlCT0JtSkZQRmlhMmxRbXpNTHgxb3EyOWdMSGpvbEFDbEYxZWNmVWJx?=
 =?utf-8?Q?86LkgwMYhfY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5089.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZGFRVGsvZ3ZHc08xM0w1OTkvTlZNNWg4UkdlVXZhWTdtT1VNcXdKekE1TjZm?=
 =?utf-8?B?S0JXL2dQOTExR3NZYmJYc3J5eUd5c2oyeFQ2cVlQVGNTRDdDZ3A0SUZEVE54?=
 =?utf-8?B?YXJGb1hQN2duVUFWREpSOHNVQ0orM3BQQ0NXZ0NmUWhOQ1d5R1g5cU5qSVhH?=
 =?utf-8?B?eWNJWlg2WHFqcDE2S250UkJFYVJtTy9ucEFIKytLdU95WHlmRitEQXJmTk9x?=
 =?utf-8?B?bU1YSmx2R1lKSGxEbnpNdGdFMjZxTDJOdXlpc1FwVUtzTUpPRmVPTElVQzRG?=
 =?utf-8?B?Z05qbjZuTE1lb3pTK25PRCtzUVdiRlV3UWV1TVB5LzJvZzNDZ1M0R1dua3lE?=
 =?utf-8?B?YmtaM2czazZaWm5NSThneTAzUUxSU2hIQnNEaUwya29Gc2JSdFpjVTQraENx?=
 =?utf-8?B?T0grQzFYNTNiYVBoemg1aDlabXdHZG9JcW0vVHcrM0M0MFNxaktkNWI5UHdB?=
 =?utf-8?B?UDlhNGtFd3RoS1g0aHBad2EvSzdqWEhGUC9kdWpxa0ZTQktNd1gwTHRIZk1h?=
 =?utf-8?B?V08yNHN6eFFZak5zbkJJR05zT0x1V09ENklRQXIvZkVBbC80djMrMU9QU09q?=
 =?utf-8?B?RG5CVitFb2Y4dUZieC9DN0c2TTV5Z1p0OU9BSTk5b0ZVQXgxbWZqWjdGbmY1?=
 =?utf-8?B?L29LVFQybU1PMVVmT1NZY2Q3MXdldFBoaWNMZ01NQWdpUVNLRCtZakEzM0Ri?=
 =?utf-8?B?WHJraEhZeVJmQjVINnB6a0VIL0JRSExxcndoZWxza3BJZVRvNnlQekdrR0Ro?=
 =?utf-8?B?K2h2OFBtQXQ2cXJxNk5ZSDNNS2RQTTRtWjlQVU52djJkbTByZHpML014UFNO?=
 =?utf-8?B?akgraGJwM3pCTllRTkR0MlQrOXhDUVBTa3JLSlBFcVArVGpnejhOTkt6WS9T?=
 =?utf-8?B?MGgxbzd4ZlhWRVFtM1U3aitjZFdLdzUwR2VqUnNTdE5zQWVlZlQ1V2F3S2lK?=
 =?utf-8?B?ekkwNDhzYXROWm14QW4vaXlCS1MzN3pnTUhrZGpqemdyVE1TdVc1Y2g5eFI4?=
 =?utf-8?B?U0Q5eGltbGFuUWJOb1dvL2tzR3VUS2gyVlZvK29KWkgrMEtWS3JvekQ0QlBR?=
 =?utf-8?B?WHVYQWJRbmRFU2UvR0J6VUM2NVA4eVd3T3pwRUJZajRGMHkzR3RxeThRRHlw?=
 =?utf-8?B?TjQwSFJBbjJhbEVTcHhzUkFaQWk0QUFkTU5QWkNKT2QxUzM2SWFLZGhFd0t6?=
 =?utf-8?B?OFRtZVpDaC9QbUd2a2VRNWdSTTFkUllRNGU2dkdVQzZJdWpwc3FNT3NpbVpB?=
 =?utf-8?B?b09oTHRiTkpwalhUd29sWlpBdzlsVTJNTE8vVERpa0txK1liV2Y0RE91UUFZ?=
 =?utf-8?B?eE9BQTlnS2Z1UVp5djQwZ0Ivdzg0SE1sejFZNlVKQ0xBcExnSHRLcTJ1R0JV?=
 =?utf-8?B?alI4eWl3WTVobEw5Z0VidXVwelFaR1RsMU12MDhsV2tYeUowSG5aS1VVS3ZZ?=
 =?utf-8?B?Wm44VkRJbEFycnRXUENieWZyTnJVd0liT2xBSk5RRC83aDl3cmdTT3JScUtz?=
 =?utf-8?B?Sk10dWtKMGJMdEU5cVl6a001UVFGZ3cwVUY1c2NWdWI5eTZYRFRPWHNnYXhv?=
 =?utf-8?B?bHZqOVZ5UWRZMzM0NUVHRlkwTk5hMlpHL0RBZ3JnOVBMYjV3dHcrcVNKMVJR?=
 =?utf-8?B?dXVOWENJUElhVHpIVVhQZGdjOTA0NlRqNTRkZ3dKS3JjeDBHNFB1UHBBcHJm?=
 =?utf-8?B?SWQ2YUw4NWR2TnNiWXFyRUR2dzM3WS9iZlcvYnpDVFE4cVJKd3JYK2poVDZ4?=
 =?utf-8?B?b3BSMytuNnVFM2Jiek1PNVlTZUVjR2VmcWVJRldoUUJjdXgxTW9NT2xvSzhw?=
 =?utf-8?B?ZlhraU84VmxoSHRnZGpWcTQxNk5tMGdXYXlmMlRvTXczaG02UGRmUFh3b0N6?=
 =?utf-8?B?NW1kWTRtdXRSYloyTkpSdU11cVQyaUkrK1l0MDVieEFrd1ZnWjB4bDlIYjJO?=
 =?utf-8?B?TWcxaG9vY3ZTNDFSNFA2em9ERFp2cFJtRktGZlM5RWV0TWw5M3dTQkxFMklZ?=
 =?utf-8?B?QW9lK0FaL1BrMElHaSswNkFwbHFlQzl3ZkZPSWpvSThGeHcvMDNrY0NtNlc0?=
 =?utf-8?B?bzl1N0hUeDNQQXdCQnhvc1NhTDVNNTRtTUdNMjdtRWJmV3FLVVJ6MFBRSFBF?=
 =?utf-8?B?eC9GdVRiLy9UemJmamUvbTZLS1lqVXFLbzBDNFZQSklRdHo5RnI3NFZSVVpJ?=
 =?utf-8?B?UFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e299919e-998c-458d-6a5e-08ddb4ebe9dc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 19:59:09.1828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nncRxE1XhGu3uVSSK2ERzWXVaxPCxlZwfu2fsMgW85z3Tl+bUW9yOAj2d+Y0TUg0yr0SE3SNMERGLIxWAbtz+mepmA3FnHYu7g8S/5ueBhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7A88A980A
X-OriginatorOrg: intel.com

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
w6HRFYDiHXgkyoc/2Q4/T+8H
=lOUS
-----END PGP PUBLIC KEY BLOCK-----


