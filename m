Received: from mx0a-00069f02.pphosted.com (mx0a-00069f02.pphosted.com [205.220.165.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E622331354A
	for <keys@linux.kernel.org>; Wed, 24 Sep 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.165.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758733435; cv=fail; b=ofeb5nAk9Xb4crR9Jr8YP/sOc5OPgCbrw/rEgCc0Ur0eZ0o9HmfVs45FLj2JjphtjaGzEnYQoiSoJwvh3S4ZSdjaxgunpSLtisnroy0PjOSY38KDGPaU4vMKSBDtmctuF3lYEaib8NGZMyi7oQuojFXq9f8qlgFs2u6N8AkYmc8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758733435; c=relaxed/simple;
	bh=q247feiHroWIEuMD5H+GHfqoTRSW8FVwao1e8+1ljoU=;
	h=Message-ID:Date:Subject:To:Cc:References:From:In-Reply-To:
	 Content-Type:MIME-Version; b=NQfzYRhSooxeHP84LH4Ja90IpPG2CUsGGc6+l0ZpCn+NbsloOl51fLL8XxCOlbeZW8/yCW+PKCUCaAytdiI1aLSR4PF5NPJstG3vzZrKAjTs7+7iFZKPjhaBmzRiYhkDTRhn7/EXiXtcZuujuIJVppXKcsnjFqIDGVw0spb99Ig=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=iqjzGtvl; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=M4ddp9nj; arc=fail smtp.client-ip=205.220.165.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="iqjzGtvl";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="M4ddp9nj"
Received: from pps.filterd (m0333521.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OFMhlA024652;
	Wed, 24 Sep 2025 17:03:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	corp-2025-04-25; bh=E04N9nyngCQnO7y9qNkkoBQ3vqB2C9+6kkXlRoxnzXc=; b=
	iqjzGtvl5Caa7ESUC1KEg1qN2n+UuLZQ6/7v9scsXZPAg8XiP+B+326OE2xUQnX2
	4quRrOyaAbm/4vOPcbLpVGkslG9vPeBrsJsmD/XE6nsTb3x3psCgZP4D6iNzC3WF
	xna689NvC5585nkOqN1RM3Tlxh6iMq5nb8fYjSOmQzot7DKf5omiWhEbNHg9RoLW
	shTM6aDz7tLh8fY+BzmuiV/B+fx+h7UtQYZ0nNXRCUupJuJOsiHCAnQ6rnQXhWBh
	77l4ReAMDDj3szrmn2Sc1p2lhA7wdiSDF0Xh0YMUshbdmgxF9N7vB2IFRuITt7l5
	a1Pv+j0fpUDGSjvWD1cl7g==
Received: from phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta01.appoci.oracle.com [138.1.114.2])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 499k6b06v9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 24 Sep 2025 17:03:52 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 58OGj9me040817;
	Wed, 24 Sep 2025 17:03:51 GMT
Received: from ph0pr06cu001.outbound.protection.outlook.com (mail-westus3azon11011062.outbound.protection.outlook.com [40.107.208.62])
	by phxpaimrmta01.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 499jq9vfgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 24 Sep 2025 17:03:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JrqiAZK5JfJNc07M17vX3UaGBjcQkgjNm8M1ePaVQdnqhUWg4QlbifA0074GFmomwzEKxg/1F5UOJVlkO/81vpgAvC9l2Q+oI5svUqoMajNzCM0ugQtAaWCmXyllZcWK2oVQHJaDX1wW2OKXa9ghL6O3BA7mWVYJ8dK7qiBN0EPyCPn+bEqmMgZngAgTFJt39qxK89wnuUMeUjBLaW313B/+I+sfP45o1rjR63lnPheH4PZnmVWCh1yYga/mI5pG6ssT1TvnXZyzRG777p17r9p8mNJ1LCo7k3YBDtlguTrbaqkPHbin4rvqnS77HU+CGm3F9/qb5WxtHnn1w6KQPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E04N9nyngCQnO7y9qNkkoBQ3vqB2C9+6kkXlRoxnzXc=;
 b=PnEi+jHXmSLzU6P7enVE+6Vf31n/0hzW3hkF9zA8WXA6bxQebykWGeCNAHjgUk/yBw3c9xs/yr5BWF6lpUqQXRcuJNArP+Z1NiJ3Gk+aju/UxI+TcWWYmrqeQzhASZSt7fWMUQJlVhaKkdv0ifoWCtAWXZQt/m+l/mcFcvPam8AJaZci5GqTe84watqbgpZi7xLDZt9r3qEy0FaucwCu4nrSn4w03o/m1fY4yVnJTEMyE7YFPUzRdZYF6pz3Ogbm89Iw1MyCaNYdZtjLhY10ChgksVDwfB5/IU56ezfK7ajEFLgZieyGBuXsf3Lj7WI9CiHYEbSK1EBEArDqf8sQmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E04N9nyngCQnO7y9qNkkoBQ3vqB2C9+6kkXlRoxnzXc=;
 b=M4ddp9njq4Il7B/NPokMbZRExMrXpkbXrU4q/VOFCvuduC2Mh+RD3/PuJSAZ/Ts5B8c/XzWEezDle6EQrvY25TfySKCrlp3eZB16t0tzodsnBkJaihVM+oYvaR2QJ8WU+Bf9WUCUwg9rGuJQf3NnvXzPO23xvXAh4bQxLd+sbQw=
Received: from IA1PR10MB5994.namprd10.prod.outlook.com (2603:10b6:208:3ee::18)
 by DS0PR10MB6822.namprd10.prod.outlook.com (2603:10b6:8:11d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.10; Wed, 24 Sep
 2025 17:03:47 +0000
Received: from IA1PR10MB5994.namprd10.prod.outlook.com
 ([fe80::7eff:bcc0:7955:112e]) by IA1PR10MB5994.namprd10.prod.outlook.com
 ([fe80::7eff:bcc0:7955:112e%6]) with mapi id 15.20.9137.018; Wed, 24 Sep 2025
 17:03:47 +0000
Message-ID: <fec1c0a9-e23e-4a02-99a4-d7d9ad5e5853@oracle.com>
Date: Wed, 24 Sep 2025 13:03:43 -0400
User-Agent: Mozilla Thunderbird
Subject: Re: joseph.salisbury@oracle.com
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: keys@linux.kernel.org
References: <133819a2-1309-4228-8b7b-d503436a1ebe@oracle.com>
 <o23xngdhippoewvm2qttwedrsbn3i35mvoww6gtzlwss2eqrvy@pqxyfxlczdfu>
Content-Language: en-US, en-AG
From: Joseph Salisbury <joseph.salisbury@oracle.com>
In-Reply-To: <o23xngdhippoewvm2qttwedrsbn3i35mvoww6gtzlwss2eqrvy@pqxyfxlczdfu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH7P221CA0002.NAMP221.PROD.OUTLOOK.COM
 (2603:10b6:510:32a::13) To IA1PR10MB5994.namprd10.prod.outlook.com
 (2603:10b6:208:3ee::18)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR10MB5994:EE_|DS0PR10MB6822:EE_
X-MS-Office365-Filtering-Correlation-Id: 10db8a11-98b7-457a-4f0f-08ddfb8c52c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|220923002;
X-Microsoft-Antispam-Message-Info:
	=?utf-8?B?UG91NVBNT1NUOFNjRm5kb0hETFo0dkY2TUpvdE93ekllOEhSQU1YMTZvdVBi?=
 =?utf-8?B?ekkwZWdSSHlRWXFJNk82eTIwWUxkVEp2SmtlckU5UVZWcGdFenc0UU5VVFpO?=
 =?utf-8?B?WXZUWlJrM0Y4aXE2WjM5S1JGVVJKS1FxWkY0NER5REx5bWZXVmZ0OVdSRWlW?=
 =?utf-8?B?OUJwMEZ3NW82RHpHNWlBc29abGE4ZFRHK3VjZkY0YmpUSERLSUg1K1NBQzdJ?=
 =?utf-8?B?SjEvd0J0SjM4dmlnLzhpQjA5SHlPUm4vR1U5bUxiM04xbm1YMERVMmlMay9h?=
 =?utf-8?B?SThJNGJERGpKNERlUDZnVDRsYWtUVVhqekx1bVJJa3JlTFNFUXg0cjlxcFZw?=
 =?utf-8?B?YngwRGcwMk10NVplZ3kwOFlxdkJNcnpvbjhQbjFkSVUxNUh1Y2E2Mld6aWJm?=
 =?utf-8?B?a0NuYXgwcWg5Y0swT0c4WEdCMldTT2NIdU5XWDNEcVFGM2YxbFZ3bUU2enpO?=
 =?utf-8?B?ZW1aM0hhZUNrYU53U2E3SXRSTW56blc5dmMvdmVVbW9ZUnBnSThlRVp2NUNK?=
 =?utf-8?B?WjdqaVlsRFNTUFBjbURjN1FIanlWdXFiLzQ0SllTTllScmZlNXMxRzQrMDB1?=
 =?utf-8?B?K2NjYmtQMEZGb0YwVUFacTNtZHIyVDJUQlY0Rjkyek1CSitvTngzOWQxR3M1?=
 =?utf-8?B?U3U5dVNjaVJFZW0zbFg3cmtFeDc5b29jb3Yva3BBYUZDTDA0ekF5QjcxM2Ew?=
 =?utf-8?B?c0hNWEVMemdsUHRUSzdkZTViQXF6b1U2SVROVjM2Vm50T3V5czY4UWFZRlJD?=
 =?utf-8?B?d0xxWVBWd1dBblc5T200b2lzVGx1ZFNVTjNOWGlXaExERnVzZlBWRzJTcncy?=
 =?utf-8?B?WEVmMDZEQ1VoVFFlakNVRDc3OHZQb2dzTWs3b3pVTHZ6d1VQdS9NY2lYTEhO?=
 =?utf-8?B?ZVQ5ck80RWF5L1NKMUNjR2JjWnlnUitWVGVHVldua20vU003ZDA1dTRYcjFa?=
 =?utf-8?B?UnloN3BtbGJKSkhQVWgyQTg1dmh1RWRQVWxScTRoOVU2NWxwUlVSdEtPblNR?=
 =?utf-8?B?dHFUTmhGU0JOTmx5SFJSdjZPdDhYOVBGYUNnZWVRN0RyN05OUW1aQ2JxYkFS?=
 =?utf-8?B?UE5reVcxM25GQThHb3hRdEltZ2diSm9PT01GaFVvYk0vUGtGeXN4K24rWkdF?=
 =?utf-8?B?YW8vdkkzeDlTTFEwcy9QOGFzWGZDVUdKUVRzbW5kd1B4N05sVVVPWVE5Vlpp?=
 =?utf-8?B?eC8rL04xVWc1ZXA5dTM3R1BMTUZiak81VXM1RWRFZEhDZUoxcksrTGgxZXlE?=
 =?utf-8?B?cUtuNitmNFZONTZCKy9UNVNIWTJLS2FKWXJqam9UVlF1Qm0xSXk3RXZITjB1?=
 =?utf-8?B?Q0NneHlnOHFyTStYS1R3dGNUejIvRVZBeDd3T0phSkNQaUFmRSs5NmpybHJs?=
 =?utf-8?B?QzNDa2VnNklMMExkS3RDR3BRbnBTWkNxTjBJNkt0UndjcFJqb2hTSVYxYWVR?=
 =?utf-8?B?bGxYNjdLRG9ycTNrUW9WTGk0Y0JiZHRhNHI2OWYxektsLzZ3TS9ITHZVUDhs?=
 =?utf-8?B?Z01ZOWNSVllncStsYnYwWTFWejhMeU1ocHdEQ3I5VTRWcW1xanJZZVIyZkVh?=
 =?utf-8?B?MGNqQkEza0lrZG9BaWpJU2g1dEc3QzdLakI5OWExb3RWaUJ4alNKT21SZlRH?=
 =?utf-8?B?WnhRekdIK2t4cEljbWkvWGVxc0ZzSkhDMXd1Tk5VV2ZQYm5vcklFTlE4RFJU?=
 =?utf-8?B?eHpCR0srcDkybzFjMk9OZFVZeDQvOFNHekQwcHBxZCs3ek1rbnpocVlEVWta?=
 =?utf-8?B?dE0zRlUrL3UzODdCS1phSS95RDdUUC9nOWVtMzJZV056dlRrM3d1WkYyQ2lv?=
 =?utf-8?B?MmJkdzVFTG1WZThqcTBiOHMxVkxhVTJGUStTSE1VOGJhNDZFY3JpN2MzL3V6?=
 =?utf-8?B?bS9Jb3pZUWQwVG1xUUE2K2lhR1ozV2ZQNUhucnlQMjlYeUtlL0lGRk1zcEQ1?=
 =?utf-8?Q?Cs07XTLqTZE=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR10MB5994.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(220923002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?bVJTVW5SNGc0QjI0bVVoTkUxU2ZiL3d6SDlWQWtUV29qa0NnbVVVdC9vRTho?=
 =?utf-8?B?VmN3Rk9UTHZCWHJxUGlCZksvT0R6cXBYcFM5eWVJUElZRGVVa04zK0RCVk9w?=
 =?utf-8?B?NERXWEFzZmR5cmVhTk1VcFI2RmZHUFIzYzF5Z0prWkxndStoNnRCVmhRYTRR?=
 =?utf-8?B?UnM0YmF5dFZaYjV4cEJEbVcyL0VhRVF5OEFzNEx6V3EyZnhnSVdyMzNuOUwx?=
 =?utf-8?B?cGpRdkUzVDFya1pVcC8vWXNrYkUrUXp5Q0J4R1I3MWpwa3JjR0VyRjRmYW1N?=
 =?utf-8?B?eTE0Uk96cVh2OXBvUTJXT0JRbEU2VXhub3h6SERJcHlqeXhDQmdrbEFHaHEy?=
 =?utf-8?B?RWUydFJYZWMrU1lBNklaemJuZThnK1FGTk9kazRySVZNekVQMEVzeitzVjVH?=
 =?utf-8?B?bVBWUkhaMmk5c0tEU0lzOFR6bzBGdjBPc1VXWUdtSTN5T2pzeDMrdUlUOHBQ?=
 =?utf-8?B?WjRxTitDOTNNVzFzRVYzRWJFVVNBK2U0d3JTa21wQUMrYWNOcXFRV2ZHTzNz?=
 =?utf-8?B?MnlHOE9PNkJjMHIxNEtEZC9UWmsraGVTbjNxdkplSnByNlZrdGpTOTdXVHpj?=
 =?utf-8?B?NzZWU0RpTGUvVm9BN0hGYWxBb0M2V0h6Rmg0ZXZ0WWczckpHOVh4VURrSzVu?=
 =?utf-8?B?UEQvWE8wREpVWXhmRCtnMVdRWjh1dXRVQlBZMUFtamY5VFVsMU1jVzZVY3dn?=
 =?utf-8?B?UllGVVFvOW4xR2d2S3FOc3YwL3V4aEcxazZmdTJJOHRkSTdEbDlOa2VLLzUr?=
 =?utf-8?B?TURkTVdaeElscTB3L1poNXI1aHl3MVJZM3BOL0lVWExQRmZHeFllNU5hNTFj?=
 =?utf-8?B?eFJPaFRPT0pYTFlHazN3N2NET0REcHovMWp1U1Raem1DekNuUTlvZUNkSEZE?=
 =?utf-8?B?dkxTdHRYNVRpdlRWODNmZEpaNHFPRSttbnNEZ3pMT2d1L0xrS2xXUEplcFlh?=
 =?utf-8?B?a3ozTlZCSUN0QjRwMnJuczZ6dlBCbzlFU0tHOHJjbTU3RU9SZVZKWkh6Nm1t?=
 =?utf-8?B?OFhZZ1daZ1hYMjVCYzdjNWlUQU1adU9jdjk2WVlSaXk2R2VMZGNqZnZ3bXZm?=
 =?utf-8?B?RlVOcXQ2bjA3T25vdXBucjh1KzRKL0lJaitjQy84cVRtZFNUTU1zb25HNHFz?=
 =?utf-8?B?SjF3NGU4ck1sSEszcnhSZnROdDJPTmIvTGJ1WGllVzRiWUZrdytMWGc3bnVj?=
 =?utf-8?B?TDZuRzF6aDkyN254Q1dQaU9JRHJlYm00eS9BU2pPREQvaTZWQ1hLNFFCemEv?=
 =?utf-8?B?S1d2K0ZObmtCcE9zVjFOTCtzekQ2dE5DZFRabDl0K3p3dlFVWUVBR1ZxOVpk?=
 =?utf-8?B?SDZKR0I5Q2VZVExnQVFsZzNEUW1jdDR0Rldodm5LM0MyZXpub3Q1aG4zZHVp?=
 =?utf-8?B?SXkyRWJubEhVbmoycXJZSENEdzdtekVWV0RSdjNPT2ZyWHFScW5RYjRCZSt1?=
 =?utf-8?B?cjE1UUt6aVJVRmVUb20wQjhsUlFZOGpoa3hjNmh3Z0ZaMU1QNUdCelJ3Qkll?=
 =?utf-8?B?d1dmYUhNNkYzdUR0SElOWnlLLzY4UzIxeURUMys0R2R2aWhob3V5UjVVMzlt?=
 =?utf-8?B?TTFvK0FJY09YTHVNNWZNQ0JhRTAweWRWMkdDMVJGUVlWRHRsWDRoQWJSbk51?=
 =?utf-8?B?enA4K1NqUzhuZEgrTFlJMmZWbmhxSjVMUHcwNWZweGlZRml6RHkrTEdGa1RE?=
 =?utf-8?B?bHowTENrTDl0QytYK0dSdjJwR1pxOXZhd1hOSHA0VHUrdG1HZGdmYVRVOStl?=
 =?utf-8?B?Z09oTDA3R2p0Q3ZsWTNvOGFMbkxRSU5hdHZmRlRwSXorbEZoYUI3K0FuOEJk?=
 =?utf-8?B?SWpIK1p1dlFiS2NuaUsyWWJvN2pHL0czNWZESXZ2YWRmUmF5TklCSGVLTXUz?=
 =?utf-8?B?UHRmbW8veWk4WldSZkQ5Q3ZIOFFEY0pQMjdPeVdnbXVLWVVmekRMdEEyaGtW?=
 =?utf-8?B?V0dNY2IzRmxUd0FQMmozc2JwcEdMdExXdEZQTE9DZS8weVE2ZjllUnhYTVFD?=
 =?utf-8?B?M0hkWVZ6NHpFY2lSMFdQYUg1UjZkM096MTl5WlFZbmF4WGVVNk1rUDBIK0E3?=
 =?utf-8?B?aCtIY2I5eFJrUzhMNjVqdVhXQjJUYlY3R0F5MkdGRmxDOCtnOWIvbVhpMnE4?=
 =?utf-8?B?UVpKdkNoNDQ3MC9vS3BrS2V3OHhqYWtlQ2VKZ1M5V3FsWklsSFUrNTdBMCtm?=
 =?utf-8?B?eVE9PQ==?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	D+CAFiqPrbw/9avgsM0gEBX6awcJHsuQ+SAHqtcFBLPeoTTX2ITr19sxaLabdKDmaASx7u6kwuTq0X+Gnb7vKjKsPHBxnPEV3L516QXkWWRQT3zeoDjnWdk3Qa4ggFIEjKBh+nBJTLwEU+zeIcIkXkr70b8WOmrEgUV90tlnu/VdwgoAYcMmsr9ee0lmpmV5qtLVock0VUoCCP/0LkkoCmKipxP+oOZdCkdyfuBNlgk7bi6r0pJfXeevWGOxMiznRxQNKLeor0gIw1TuMAfEeWmZZTK9w105wpHZSWg+3eCWzekL2lc8yAD39ElbSipw0A7LzsplR8jvjQGkRhChVl2VXJF8opGkVT9uhhtIHFc+i7ZCCbsH4/cF1FNQZMJM5lZPMs9fJrgVgHv6/D9fsMY02/mqfySpTQRUl0liHjFv/lKJpS9AaCupV57QNWx0HxPhjmpIur0jSGRFUB2q2spxyrGbGo2uDPoc2QNlC93WVcK4yzA3jkRU/uaTfoOGNBoqc5Er/A7+yPXDLivxysHwZxCEDEUFBBQR5AXaEMdrwHd0I99LHunYb8Yy55GF1hRdYwi4+8raOH03vj4qKsy1v4mdRsgnPCzIvwp71cE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10db8a11-98b7-457a-4f0f-08ddfb8c52c4
X-MS-Exchange-CrossTenant-AuthSource: IA1PR10MB5994.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2025 17:03:47.0314
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3sBo6Q3lVqMlPIPPD5Bfv9HBUzV1U+iEf5NU5ZWZ87rq963udEEFiKtkycpSUYqxHvjVeC8CdcaXcEof/HKF4eihLZ4vaI5a0fwHRbYxuik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6822
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_04,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0 phishscore=0 bulkscore=0
 spamscore=0 mlxlogscore=999 mlxscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2508110000
 definitions=main-2509240147
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxNyBTYWx0ZWRfX4lkqIFbHxD+c
 jSmgF5VddmCKNDrtb7VZLh0XTRcxv6q0YwzbtNdhPIZ1TofEpWvaPlsG7ER8QLRC64hbYjYKPik
 aC+5sRmsvUPsEmZoYZABWlBsdybg0+MDAHEjTzNinxES2WLTaRUn0QmxpWaGQmnukuxPL1p/mPz
 Q37z+lr25z4Z40Nm+6ClrVvFHw5p4tFSCLxlsmi/6crReh81/8sbIN8UV3CI28EfS4e/AGNkdUX
 ZptGVcb9Ud4eIDv9lW9VRmPh8cRVXVsSS11tdPHBWCTwclI85CMsvH+DgPjryY8s7fWNVdFuKLA
 qdc+wqFWi4KZdhqh4pFKu+5KrNyZr9KseJ5/f5qUryiqsEXh0jiJv0dWp9nRrV3QX2FtWvXrngq
 K7g2LOah
X-Proofpoint-GUID: PPE72oMoJt8cyFlTxLZuOk_LYi0e6a08
X-Authority-Analysis: v=2.4 cv=E47Npbdl c=1 sm=1 tr=0 ts=68d42478 cx=c_pps
 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:117 a=XiAAW1AwiKB2Y8Wsi+sD2Q==:17 a=yPCof4ZbAAAA:8
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Vf5h9dQsjM0A:10 a=yJojWOMRYYMA:10 a=GoEa3M9JfhUA:10 a=VwQbUJbxAAAA:8
 a=pGLkceISAAAA:8 a=ZoBTxY7Vu7-I42knfxsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: PPE72oMoJt8cyFlTxLZuOk_LYi0e6a08



On 9/24/25 03:35, Uwe Kleine-König wrote:
> Hello Joseph,
>
> On Tue, Sep 23, 2025 at 01:19:52PM -0400, Joseph Salisbury wrote:
>> -----BEGIN PGP PUBLIC KEY BLOCK-----
>>
>> mQINBE8KtKMBEADJ3sa+47aMnk7RF/fn4a7IvRDV19Z1L2Qq1c6dxcvtXP9Mq0i9
>> 5hBgPnNB2FFJJ4QvJUJ6hYaniqgX3VkvKvjOcOwKz78NYF0HuIZqTTwd2qWpECXq
>> ...
>> -----END PGP PUBLIC KEY BLOCK-----
> Your key is using SHA-1 in two places:
>
> 	$ sq cert lint < /tmp/yourcert
> 	Certificate 6CEF3D27CA5B141E contains a User ID (Joseph Salisbury <josephtsalisbury@gmail.com>) protected by SHA-1
> 	Certificate 6CEF3D27CA5B141E, key 87AC77B3BF827F80 uses a SHA-1-protected binding signature.
> 	...
>
> It would be great if you could fix those. Practical breakage is not
> known yet, but still I recommend to update your key to a safer hash
> algorithm to reduce attacking surface.
>
> Find more details at
> https://lore.kernel.org/keys/fxotnlhsyl2frp54xtguy7ryrucuwselanazixeax3motyyoo3@7vf7ip6gxyvx/T/#u
> which also describes a procedure to (hopefully) fix your key and if
> questions arise don't hesitate to ask.
>
> Best regards
> Uwe
Thanks for the heads up, Uwe!

I fixed those and sent an updated key to the list.

Thanks again,

Joe

