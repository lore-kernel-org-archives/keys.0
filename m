Authentication-Results: smtp.subspace.kernel.org; arc=pass header.oldest-pass=0 smtp.remote-ip=205.220.177.32
ARC-Seal: i=2; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=pass;
	t=1793284939;
	b=D6E4+jjuWCxQUNvf/dAupb5eNgiVR65u0UoHYp786JYJ6KokKh41XzDhiTVLNpRsKNNy
	 WWJiuEkkB8aZMxuJ/OdCmNenITUqno/izInIR9PoGpPyyHbTuQgsBCdT4RR8o99tjEDZE
	 MxDy76zz8rDkNY2UgR30woOSkJXNtTrWE/MBV7c0+cJSCd5HY2nKYn3sY7ez+O4N+U0qp
	 rTVVSv/G8h3bN4B/irgLgndopVmV/DyS9e36dWasjhYFqlk4B53s27MKHMpg1w9r+WpGk
	 a8cbz9pxomRp3J+80lEMyNarguPjq4hiCG4sIMq1UbqxNmw8UCinsx0MiN5PSVrdUcA==
ARC-Message-Signature: i=2; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793284939;
	h=DMARC-Filter:Received:DKIM-Signature:Received:Received:Received:
	 DKIM-Signature:Received:Received:Content-Type:Message-ID:Date:
	 User-Agent:To:Content-Language:From:Subject:X-ClientProxiedBy:
	 MIME-Version:X-MS-TrafficTypeDiagnostic:X-MS-PublicTrafficType:
	 client-request-id:request-id:X-MS-Office365-Filtering-Correlation-Id:
	 X-MS-Exchange-SenderADCheck:X-MS-Exchange-AntiSpam-Relay:
	 X-Microsoft-Antispam:X-Microsoft-Antispam-Message-Info:
	 X-Forefront-Antispam-Report:
	 X-MS-Exchange-AntiSpam-MessageData-ChunkCount:
	 X-MS-Exchange-AntiSpam-MessageData-0:X-Exchange-RoutingPolicyChecked:
	 X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount:
	 X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:X-OriginatorOrg:
	 X-MS-Exchange-CrossTenant-Network-Message-Id:
	 X-MS-Exchange-CrossTenant-AuthSource:X-MS-Exchange-CrossTenant-AuthAs:
	 X-MS-Exchange-CrossTenant-OriginalArrivalTime:
	 X-MS-Exchange-CrossTenant-FromEntityHeader:
	 X-MS-Exchange-CrossTenant-Id:X-MS-Exchange-CrossTenant-MailboxType:
	 X-MS-Exchange-CrossTenant-UserPrincipalName:
	 X-MS-Exchange-Transport-CrossTenantHeadersStamped:
	 X-Proofpoint-Virus-Version:X-Proofpoint-Spam-Details:
	 X-Proofpoint-Spam-Info:X-Authority-Analysis:X-Proofpoint-ORIG-GUID:
	 X-Proofpoint-Spam-Details-Enc:X-Proofpoint-GUID;
	bh=9SGZZKIqsGVVhsQacmIveul7FMAa7YdkWnaMvwuFyQE=;
	b=z5HChprHublfaXmDp36PlOMWlliAdOXuJI7PhgIV8Oo7uftAC3bxmnjeHt3TtMm29zXZ
	 Updgov5jRpPALyPQa5+y7jupXuLd5cfzETUFBRe427xVmXX2bHbhZxIEiX6bFUbpRtg4C
	 V//GnFzziMhKJEMNZnzcAFEaTrAvHnwpdYWYoIFtdkz2KwqvCiFsJnlGPW/76RSgIT99X
	 i2tdFbL3w6hZyN7CfiZEfDC/BT7EiC85n6KX5zYfLMfyOTfJXVI8KzkUmOkJ23FtObFFQ
	 CaCuReNODtYa6z+EbEEhcxum5+IZHUh0XfGOK3EtJMESH6/E4Nx14kHkSPQtyLJevzg==
ARC-Authentication-Results: i=2; smtp.subspace.kernel.org; 
	dmarc=pass header.from=oracle.com;
	spf=pass smtp.mailfrom=oracle.com;
	dkim=pass header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=Nqi5Jwxc;
	dkim=pass header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com header.b=mgHNHNP1;
	arc=pass header.oldest-pass=0 smtp.remote-ip=205.220.177.32
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C638606A31A
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:42:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 0C638606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=oracle.com header.i=@oracle.com header.a=rsa-sha256 header.s=corp-2025-04-25 header.b=Nqi5Jwxc;
	dkim=pass (1024-bit key, unprotected) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.a=rsa-sha256 header.s=selector2-oracle-onmicrosoft-com header.b=mgHNHNP1
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69TCm4T61017846
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:42:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-type:date:from:message-id:mime-version:subject:to; s=
	corp-2025-04-25; bh=9SGZZKIqsGVVhsQacmIveul7FMAa7YdkWnaMvwuFyQE=; b=
	Nqi5JwxcMRdaWeBTFhJHt3FXVz2VS8yf3e3qMHprVhvBKLzRu5x0hCNKL1lji/UO
	aaTOjVuo97ff8+N6tehCGs+0Htm2bMyBTzbw7HNKGzV31ghLrBB93K5v2Xtwm247
	1Gee5QzDV417oJFlNutTpi3z75YQHTHecT7TkdeOolAzRMRB0y3CFQ+OsLifvicK
	RubI1ELQjN/0M0fYFh+arrMePS9WRltVqwa9QB0saX9OoX/Jd86BfXZECa8pGJcW
	8iriDKLmX1U9lh1WMxnUDpp3YnZuq4/Zq5by2uJBL/CNwh0LFFFHoCCubIW4PKTG
	N14EMBCnVKDXNxt6VIroug==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 4hgkf1yqcr-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:42:17 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.11/8.18.1.11) with ESMTP id 69TDYXta2274139
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:42:17 GMT
Received: from bl2pr02cu003.outbound.protection.outlook.com (mail-eastusazon11011061.outbound.protection.outlook.com [52.101.52.61])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 4hm752jeh9-1
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=FAIL)
	for <keys@linux.kernel.org>; Thu, 29 Oct 2026 14:42:17 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HnE1MIFAdIk0XSB3VOG0kZi8f8q82GoEPSeSHtFN35ygM8wR2qTHkkt4ZewMzmJO/9imToxZAHWGw8Pwzpv3HqE3eWKVTiGR/iEbJ/MnXw6SZiF/jNF02X0hdhBcvUXqlo6YbC+yqRbYIg4WCmzhkqDKy/6X4MmnLGoiM6LYnIf8vOstyrqpAcNVls6q5K5OM37UFKAgXpYshG7afh/AAEH0jxror75OSCsDtBwX91Q25bYHPQrrJewVKuopfcZZ8tXQU1EN6sOVsLVUBN2vvCr9+zuwSGqjqv/hZh/hjKKbLOtWFcjI3+MJzjz1OTnXOrFvJyMYuXHjTrCJSUSrgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9SGZZKIqsGVVhsQacmIveul7FMAa7YdkWnaMvwuFyQE=;
 b=iRyWDV9vRZTqXqLOCMCevKLad9R+9gI6MMY9Ho+sjIr/ISojY62WQ/IKRuaATqPLGXBRfM4yo0WLTEubi7BcWpst2L1JbEjFimci0SGMczhvNBBXxY3+UgEsDr2ar5ix0g5Uka2OQHmFpTb3aoc2iZ/LKf3NvaWtbFiZcmrmUfGs60FtwiW8HwcCBENPf0aLQAvYd2a55l1GR7gNbS03BSgBiYr+dANfK0M1x1o1+44mk2t8jVXKwOoEAxKLkOB6OqX5CrJ54cfLoUPuN0xYOEg1F3klCDCtFiUxlYgo+PBRUUi2V9i7HeaW8RBmWkknqiTaayKLTAItv83ZMWkpiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9SGZZKIqsGVVhsQacmIveul7FMAa7YdkWnaMvwuFyQE=;
 b=mgHNHNP1UHUIz7rPiKS3hRwTgxoVwCbRaBhU/SDzlMt12A4oRdRgqJoG0El2LkUI5ASZ6HPtTDAYxRmtFZVPzmpY3/3Ksxrg1gj/v1AsTjsGLW3C2FyYw9hGHUP24vICNwYxxNm1bWAJuVu+VSBfqANvuHcxYn6m6bUmNH/EEe0=
Authentication-Results: mx.microsoft.com 1; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=oracle.com;
Received: from BN0PR10MB4901.namprd10.prod.outlook.com (2603:10b6:408:126::19)
 by PH0PR10MB997640.namprd10.prod.outlook.com with HTTP via P2P; Thu, 29 Oct
 2026 14:42:16 +0000
Received: from BN0PR10MB4901.namprd10.prod.outlook.com
 ([fe80::19a8:41b4:f519:1b79]) by BN0PR10MB4901.namprd10.prod.outlook.com
 ([fe80::19a8:41b4:f519:1b79%5]) with mapi id 15.21.0546.021; Thu, 29 Oct 2026
 14:42:15 +0000
Content-Type: multipart/mixed; boundary="------------xd7rfoL4gokBd01LuQ5wtqRf"
Message-ID: <72a131e4-d920-465e-b8af-7fa36c1d9284@oracle.com>
Date: Thu, 29 Oct 2026 14:42:14 +0000
User-Agent: Mozilla Thunderbird
To: keys@linux.kernel.org
Content-Language: en-GB
From: Alan Maguire <alan.maguire@oracle.com>
Subject: Updated extended-date key
X-ClientProxiedBy: DUZPR01CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::13) To BN0PR10MB4901.namprd10.prod.outlook.com
 (2603:10b6:408:126::19)
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Post: <mailto:keys@linux.kernel.org>
List-Help: <mailto:keys+help@linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
List-Owner: <mailto:keys+owner@linux.kernel.org>
Precedence: list
MIME-Version: 1.0
X-MS-TrafficTypeDiagnostic: BN0PR10MB4901:EE_|PH0PR10MB997640:EE_
X-MS-PublicTrafficType: Email
client-request-id: ccf69f5a-f2ce-4b7c-93d6-171e50a409ab
request-id: 4d3b98bc-e338-4126-3d20-08df35cad36a
X-MS-Office365-Filtering-Correlation-Id: 4d3b98bc-e338-4126-3d20-08df35cad36a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|1800799024|23010399003|366016|376014|6049299003|261028144727099003|261026140227099003|56012099006|261022105027099003|261009223027099003|10067099003|261026121527099003|18002099003|4053099003;
X-Microsoft-Antispam-Message-Info:
	qMSPxslgL0wQjiC3cmLLreh+69fYQQ4dS54tMAyRZww+Y5L2ghi3WMrycZxelRpkS0djH7igN0G96fY5gGPGOy/eV17LmYlgNw3QrRhlW1xUosnDaLBCT4kewTZV4e6vVYtpbGGzluDIwoq/Q+8YFBVqQAVcFHskxrRf6hCyEL3HmUk5h5BzVLAERRHyvlo4HwdKPB3226StyTVwYlDRXCIQfUBWYbyhW3ArKQU5g5FDTn+yndB773P38SbqV8LZXrhmjajenrhiSlgGfX3wL4Fa+DqdFtAuQ4BZNuZP2NW8HF7TXlWE44zi6UQOAV84I5Rdl24zh48zZfhIZe6Tg1sUZWEQyqpj/F8rcb9h5wQp7n7QcRfI+TngJPyCj8d0kG9BxmvT1+5HhbXXo1rFMQ==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(23010399003)(366016)(376014)(6049299003)(261028144727099003)(261026140227099003)(56012099006)(261022105027099003)(261009223027099003)(10067099003)(261026121527099003)(18002099003)(4053099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?Vml0bmRuanZVRnA4R01KTXpQRjFyT2hlWEpnWmt2NDY0M09lWHNTVVNSbGlO?=
 =?utf-8?B?NDlNblMzS0hBRjg2Mng3VEw5dllNaWRhLzJxeU5qY25XNzQ4bkFNOHl0a0x2?=
 =?utf-8?B?MXlEaVVlNDQ2Y2FRNDAxdWxoQU9UdExORit3V3ZtNitxQnZIRmpFTlJ6L0dF?=
 =?utf-8?B?Y0J6eE81SlZwSkpwU0JNU0twZE8xczFiUEtOczhPK3FhZXlsa1krRFFqVFg5?=
 =?utf-8?B?KzVHWnc0MW9OK3BPZE1wTXVSc1k3aldwZ3pWTW9Za1hBNUlHM2hjVWF5TFp2?=
 =?utf-8?B?NEtxR1FPWjRtalFEQUZPSkRpQ0c0T2NQYUNGNlcycXFEaWw2bnUwSHYxYUd6?=
 =?utf-8?B?d1owNzZIV1ZzTVhlV1FscklRV2dRS0xhUGVBQ0N3bVBHekRNYnE5WitVZEtH?=
 =?utf-8?B?ZWlKSm91VFpadUR5c2RwaGdYd3EwYk84UE5UaFpNek1HZXBzR0E1UWxUbW5N?=
 =?utf-8?B?d0FkV1k1Wi9QNUFQNGlXWWFyeGdBTU9uMlA1QlMxRXZEWkNZanhLV2luejls?=
 =?utf-8?B?QmFqRVlJd1VZWDhVTG9uM0VNVTY1UTk2ejk1MGFkOFRkQmI0bDg3dHYzWWxG?=
 =?utf-8?B?bUJmS00zalV4RGxwRHJjUzZOUkFVL1J6UVJSWXI1Tm9OS2lVeDE2SFRJNTla?=
 =?utf-8?B?MllWZzdKWFp5UUphUkEzRE1QakZpeFkyQTl0dnpmRkNTWC8yNW9qVVVCVlhy?=
 =?utf-8?B?dGhwTjVlL1ZRdVJhSkRxZEJjZXdjTEE4T0doNWlYeFZ4S09pNkZYWU1BWXN0?=
 =?utf-8?B?QUI4d1FZajlseVZoOERJdGUvNW0zb1ZWcUROR1Qyc0RCRTNINWZ6eGRlV255?=
 =?utf-8?B?YVNCQmh3NTdFM3ZJT0NOOFhWSzRucmpKUTVZbHhSNWgzZlBpYVdhTUVOdnBG?=
 =?utf-8?B?ZzF6Ri9UYUZWM2U5aG54NXFaRzVIV1lIRHdqYXhoZW9qcEIwSXA4WlorY2pM?=
 =?utf-8?B?c3RNN1N6VWpPOWZQbnJDT3dnY0dLTVpvV2hFTjJnZlJmZFFYenhHeUl3OUlv?=
 =?utf-8?B?emQ5TlV4ZGEyeHcrazNuTjVqYVVhL2d6N0Q4K0taVVVxVzdaditZVkd3WHRG?=
 =?utf-8?B?S2VNNHFreDZTQVE4VDJ4cUJGamxTZGxmSnhPd21nNkhDVndUV0ZaZm91b0sr?=
 =?utf-8?B?SDVNaVFRZ2V5RWRlTktZVkM1bnVKZ3M5V1Q2YjRyNzBYTlI5T3laWHVTa2Vr?=
 =?utf-8?B?bnB2eklJVDNVbWR6dGdNc3hyNzVPcW1JVlFQaSt2L2VPMjc0WE8veWlBV1Vo?=
 =?utf-8?B?OGIzQ2o5Mi9leXEzZ0JSZ0hMaEkvUktrZjQzYW11MDhSTmZBZ3VQcUozRytL?=
 =?utf-8?B?RmU1bGgzcGZsNUdzY2hDMTF3MUo2NlBFMm41U2tkbTJ0UlpsQ3lBQVBzUkJx?=
 =?utf-8?B?UkxkOWVLNGRqYks0VHRjbkNMWkpVTmpLU3JOU3F2RkFqbUg1V0VLamJqVUtL?=
 =?utf-8?B?UURpalZTK0VsZDA1dk9kMHNLMlBVNlkzQzVCWG5zZnJTVStEOFFLZzFiaHFQ?=
 =?utf-8?B?NjNLcjkxWjhtQ2RXalhITFY3ZWpzNXBVRVk4dEpWTUxZRjVtR2liNFpQSXh3?=
 =?utf-8?B?NU4za29FcFlyV1BwRDBlRzZBMTBwbEtVZmUvZEhBUGRpL01xaUhhNWVxaUtJ?=
 =?utf-8?B?eU9uQ011Z0pGaGg0WUcwNEkzUUprY3M1dDhESlh5LzBONURzbWdBRkZNcytu?=
 =?utf-8?B?b0dPZkx3QVQzSk8vUjFvSXBWWm01WCtpUE03andDWW5jRVVhL01ZaWZadk1T?=
 =?utf-8?B?YzZaRGQ0TjhDVkxjYTBYaXpzbS9XVTRNdGVnTUk5NEdoeTJ2ckVsMU1XaTJ0?=
 =?utf-8?B?WStPUjdpL2p6a0FWR2tOakE4YVk5QVVoNzlFRStNaXdTSTFRc3hOa2I4VHJk?=
 =?utf-8?B?UmhTK2Nsa0lsSjJlV3I4VkhBT244clpka21OSDF2WE1jb0RjTlFEeHFCeSsx?=
 =?utf-8?B?UzJHK1NOWXozSUNadmozdFFIYW1FUXQxTEp3V1RTVHhJT3hzb1g0OFBWSnZx?=
 =?utf-8?B?V3hDMzBlL0QxT1VqZzJodWNkaTEzcDl0a3ZwKzZnZzN6TUZRUkdrVWpITnlP?=
 =?utf-8?B?SU83azVITmhyMWl4eTBTZSs4UEpET0I2eHE1YVdMdlNwNXFmNE81VU13T3dT?=
 =?utf-8?B?bjBNVVFDdzZNY3FBWkZ2MCszVDhSWEZnZU9jV2p1c1Rkby9RTmZ0SUM5L0VL?=
 =?utf-8?B?TFBLMElxYnNVTCsxcGxrMmt5VU1zL29hazduSXZrMm1JNEJUdVdIOGM4M2ZD?=
 =?utf-8?B?RDhicmlSNWRid2F1cjJLRTZhVUVocGdsOHlWdm5GeXB2SzFxMm1FakE1bTUz?=
 =?utf-8?B?dS9BNlRXVVVUY05JaDR6VnJjOU9mT29BOE14bUFhR0FwY0ZZenZTUT09?=
X-Exchange-RoutingPolicyChecked:
	x0oOJc/s2xldmUwsE39Ksd+jMGHf8i0Qgm9JmJ2cfn+HI0QxtxYdXZq1ZwXIXjzjrcEk8YRZMHDIF5wut7hO+DXe/pM3cPaFeYbH/CrHJ2LqHWKFF4++AS/aDVV8MkKVRoMe5qtmWMWl4tpLylqnyUc0/NV+YlfJic1aYqO5S35OzFV9mMWzGeyY1te83CuEnV/hqb/j94H95Zb2NzYwrJieTQCdHN3/y1B75dYKuUuno9SJcMdiPpSdeDKJnu9Wo01/Y4fC3bclzE3bXEUWEspHZ7zRHgwakbOskDuCisuYQdAOkljYfGDwiTvi6e5pMSZAhdXzr5jOwQ7KmTrAmw==
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	yKtNM/9oGNnRp3Cb5txZNrq1LdLyNOSelbEtpKZSmg8PDMydZGxWfTuAFcPj5Ck/0PCZCHDEIOoH9xv01FNuTV+fkGvI+wYWYZ4WrZZW5OAaiYvQAA696eivAAG4pM9A8qeC2FY6POjqbC+B1Yzz0ANs5/Eq1bm7ylqrKzjXRcT+6T4AUbwry33/poy4ZswFwMFZNNDSEKIVFHkJMqrgyIHGeDLIJ7DRyTBLPL0RaSSJeIvk7r0VI3JYpZ5Us5ZamPhUBtMnSHz2q0j0OzGtetCT05yho08f2ipmDsJbs3M9Ao/Aoc1gYbCBYqEDFui0AOEZ6ieEdwxG1zCGs9eW3C43xkze/q1MeMFLSWlyM+M7OsSkiqKMUhadZe9puy8eRQrEn9KPsWS8mfXd3Uc1GeC5kWdlNPifQy87+8PV8SH4v5Ime+XNeCTUBLxzGU3/C6EXHwpOSKBauYulv/KY2EP+4jgo+qw/6exFkYSTMkU+VBF8fNyhGr4wh2VGDPvGUXDYSKdlZEIpRjaOyn2XCu6wA3kmPSL3f/pUI5SgwIse3F1YTPKvHPLxhuaeRk6NALC1HOwvd1iE9xxbKgctayg0cuqlUlBYLVmgC9mGbeE=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d3b98bc-e338-4126-3d20-08df35cad36a
X-MS-Exchange-CrossTenant-AuthSource: BN0PR10MB4901.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2026 14:42:15.7748
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v/tOscVk/dWuCXY7sz//QsHgpvXYDA6pwi/Qd2mHNRGdcCXRfMm96qhtuQtNWIBTmRkwZ5RrneGKmj9ST1tg6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR10MB997640
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-29_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=100 phishscore=0
 mlxscore=100 mlxlogscore=-999 suspectscore=0 malwarescore=0 spamscore=100
 bulkscore=100 adultscore=0 lowpriorityscore=100 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610290057
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI5MDA1NyBTYWx0ZWRfXyriyFXRE9L7a
 FY11bh73H5ptj1GTi1ZUutwGcO2j7ejb9l2dkueToXXx+2yxPAO7cSnKyZCASGMF6/oMHjVsCC/
 BLhbYICyUqszvuMi9iIKXfxCP7pD+uUaP4hPPVebGMaHm+7pVqfy
X-Authority-Analysis: v=2.4 cv=V//oQuni c=1 sm=1 tr=0 ts=6ae35b49 b=1 cx=c_pps
 a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=660iZSQnnn4A:10
 a=GoEa3M9JfhUA:10 a=VkNPw1HP01LnGYTKEx00:22 a=jiCTI4zE5U7BLdzWsZGv:22
 a=o5oIOnhZENCTenyL_yNV:22 a=tclcd6dtLQvEqt9_mmAA:9 a=QEXdDO2ut3YA:10
 a=oPVJrxDPD2n0v9tneSIA:9 a=FfaGCDsud1wA:10 a=5yU3S35YU4bGjq-dph-N:22
 a=Bho9c0fBagfJEIQBS7DQ:22 cc=ntf awl=host:12107
X-Proofpoint-ORIG-GUID: 8n0wUymxJoMhSKhWyLzYDVHK9jFDMwEo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI5MDA1NyBTYWx0ZWRfX4Y9jwRKmHdS0
 2a4uUASTdHfkJzVIfwNJsEWyo1nk5/8FsyyauTwv8gryp4ei/YztzuuAlhPS3gKAtN5RxFhBjtB
 lBlbjuZvzkXlBNsTwypeddT1SGw+CJa1zOKjn+mwFRAZkU7WXjvUZQVGkf3b1Oco01pSGX0AFTx
 rYQPFToxNSvG8/CiT2RdfbTiz27emgn11BKBCKXjZuIuQt9AjiY+7Vdd4RY/5Ai0tQrvi+fyfTI
 X5cq4it28bNvwuzNVUu9mTSalUnb/YqmpOXlMUIsiRzhiYrd8/7xDQAa4AIrOGjS6CUAog9m3I0
 81cH+zXv29JMAzij0G6jFopHZPl6JMrSkkUcbF7df386HKOs1rShG2apNcoFco7rCXjp5rmvd3A
 y3yQ2B4ZSSAZAXUWRzkZic+Rf+PuOJm93W2II/Ejd6jLZsb4khGc0E/HElM60cnPguSDk9HB6mu
 pn3OcV7FjdeOF+1uBZBkAiFR61BjvV2IThCdXyVM=
X-Proofpoint-GUID: 8n0wUymxJoMhSKhWyLzYDVHK9jFDMwEo

--------------xd7rfoL4gokBd01LuQ5wtqRf
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


--------------xd7rfoL4gokBd01LuQ5wtqRf
Content-Type: text/plain; charset=UTF-8; name="export.asc"
Content-Disposition: attachment; filename="export.asc"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkdjWFpjSUJFQURHcGw5
V0ZlcTFlQkh2aU0vZW9ZNVBwS2xyM29GQXZXUDljdWRuNU52aXB3OFAxMXJiClpqa3Z1WEIvNmJ4
N2l3S1UyVHNOa21VZ1NrT0FtRVBkNDI1bndPVEJBdTR3allLTXBWak1OcElYcTRrN2hCaHUKZUZ4
c0o3QW9ERmpTdVp3NHVYaEJHa3RqMXAvODE4aTN5VkpTT1Jnc0tMRGwzeFdiWVFuQXVZTUYwZElI
eGhwRgo2dkJhQzgyUnhBVDVuN3c4TEhJY2tHQlkzeEQwMUd5WnBKYURaSjRqTGJIbTZJeTF0WHd6
OFV3M3BHRUVTVENFCk4veS9qMUt5TDRuaWYxb2U1dmM4QWV2WVpTRFVLNGVBVTNCZ1RQSm4xVllN
bVNzejJpbi9PK3Y1dVlpU043UG8KNDl3ZW5UTktyallHenArQ0ZWMXpKYldnYVErbjNnTjUwSjJv
cDVuMmEwUXBVbEFaUjlqV1JaZDNVVmVNdXJLNQpqaVhGQTBCRFNjbnQ1aStGY3JieEhvbmJuR1JD
R0dQMldzTCt5bUFBclo0cjRxa2JLZEwyeklTUXhabTR1V3VpCkZMcGdMMW5SMmU2LzFqdzRLaDZn
d2RrL0hCZ2JSdHZ3QmgvcE11YnRsQ2ZXMGVKRDRaMzRHRlpYbzZCT043aHoKZnhlbFI1VjU0WDdJ
YVNNOS95RndqNXNKNndJU0Yrd2N5ekZzS1J6dnNyTTZaWWtucG5yT0kyK0xCbVJadXpNYwpHbm16
NVZtdW5nUThrNURPOFVhQjVjK1dWZGVrSUpNWXpVaDhzYTZadXBpR0o0VUNqSE8rRExGa0lsNHJs
OVg0Cmd1SFVWY01RQk5lNEFRQTcyNXhray9QU1pwQ0JtUldGRm9SOXl1Qm5QMXBrWGNKN0c2bWpj
MlVDeFFBUkFRQUIKdENaQmJHRnVJRTFoWjNWcGNtVWdQR0ZzWVc0dWJXRm5kV2x5WlVCdmNtRmpi
R1V1WTI5dFBva0NWQVFUQVFnQQpQZ0liQVFVTENRZ0hBZ1lWQ2drSUN3SUVGZ0lEQVFJZUFRSVhn
QlloQk43VGxyaG5XYi96YWI0S0g0cDY3TnN1ClU3ZzJCUUpxNDFvTUJRa05NZlhLQUFvSkVJcDY3
TnN1VTdnMk5va1AvaTJ0QnprMytTY1dYMWhVSUtMQ0ZDeGIKNFlud2JJUlkvVmlVbDNRNXlCRVp0
eWZaT3hDWDUxaW92dWNUU1FBUldLSm1xVm94WnV2MU8wRGxoOGh5Z2o1UQpKTlNiVEZBOWFCUG0r
cU9Qa1h0RG5ITkhYenlmMXIzR1d1YU1KR2M5VE5YZUg4WEpQcHZjUUZQbGp6ZjA5My9VCllIbXc0
UGQ0VVEwYXgrN3JNbHJvRTJBWC9mWUI1aXJ4ZnppNmlock9OVThYWHl1aVlVcnVEMjFUb0VtTEdo
Q28Ka2g5K2dadEE3bjl3RTljajk5ZDByMDJ3OTdhaDVCbzlCZzFJWThRZzNNcXE4ZzA5QTB6b2hX
WnhXWEI1V0hnSApudXZJbTVSNjZIYmducVl1RVJiRXU0b0RVS0JnNTFMRnhnTlV2ZWJJR2lCWlJa
K2FNaWQvNnZNbVRvbjc1VTB1ClJwM3cxQmEyZnh4ZHVUbkJCWHBZV0lGZlFDZmRuL0syYjVuWWgx
MHd3K29Wb0YrRE1xK1hiMmJxTU5SOXdJSG0KelVKNTNyNzYwdjkwMjZjNzh0a2o4Wit5UVljUURC
WWUwT0tGUmJZa3ljaW5xb2paaXViVFhWeDFQMVRxUDVrMwpEdmpidVBiNnUvN1BjaklZMDRFY0Zw
S0JqNW8wSzdQU0t6RGxjY1VTeHRwQUh0Z1JldFdXZi9ZK3lBQnJjSzFhCldWSldUMUpmSW1vK0Qr
YTdiNG9ESWJaSVU4alVEeFM2c1ZudDlFb1BBWlpZYnJiejVMTk9KZWRzc3puaHBTZnEKYWRoc1pY
VThKNU9NY0lFelg3aGZlc3NFZFl1RldXb2tMeEFWUGdhWHl3c0R4VGpHbHg1VkhOQUNyL0RTdlp6
dwpNSXJrNzZFOFRDVTIvaGdLMVhOdmlRSXpCQkFCQ0FBZEZpRUVRNjZ5UEkvQ0dYdXhmTGl4VXFV
T2hQSGJDYjhGCkFtZUpDVXdBQ2drUVVxVU9oUEhiQ2I5UGVBLytJSUZuN0MwNDNidGxHeHFjcE5Z
azFiTG9xY29oOUNZR1IxVUEKQmVNTlFnUzdobTFMcFdDNWhSQllYRGdRSVlNT0F1MHRuRlZQUUJX
OEU2bHY0dG1tVy9zY2U3WlNweHFncFNMbApiUmFKcXRlZmYzZ3kvM2VOT2piWU1hNmlvQ29xWkpJ
aUJvdkN1SVZidlNmdVpMQ0hsOGw2Yy8xRkNDQ2xMYlU5Cnp1a2hPM0J1NkF3bDVQS1lLbVQyNFMw
WXBNRENDNEZWZlo0TVpOYWZRT0d5akJsN1FidlJWR3VhMnUyc3BlM2gKTVd4b2F4K0t0K1hWaVdv
aVk5OGtYMXp0Vk1Ca0d2d0NJTkVlVkMrM1lBUmdBSGdJMmtyRjE0Z3VML3dWbFRuVQp1WVViQXEv
RXRhd0lkZUhmVDc0QTU3cmcxdTk5R1dWSnFHQjhwS1pnenM2blYyWkNPelJmYWw2S3ArSG1vZEVR
ClJyRnFYWVdpaURwZHdUb1habWlPN01LMG1hYjZiOVZrVWlybVNCU3NzdTYvVWFwQWUvWVB4NnlP
KzN1YXZHS2sKb3JsSUlUbzBwQTh6Q1EyN0pjNFNUS1JUTTlIVW9RVXk5UFNGNForK2N5bXU4YW5X
MERNMmNMdFhMMWsxRU9JaAo0eFhMaG5uQW1xRVlzUUdrY3MrZ2haQTk3aVI2Lzl5aVhMS2dFT1VO
MWVlV21BS0JGQ2RwcVB4MXI0ZFBxelJlClVZY0kwS0RBaFBBeXRSYlpOSktCN1VYS1ZlbExTT1Bi
cFB6RUpBSmRYQlNnNjhETkk1Ri95UzVTTXhOQ01tU3QKUFM3cmI2eWZIYVc3MXcxWTI4a0hsR0ZK
azhRT1NKZUxqTVNKS1VqdVZVanc3WDhsaC9GbzVUZUZwWDl0SzF3Vgo3SVA3ZTUrSkFqTUVFQUVJ
QUIwV0lRUmI3MVZpa0lFQysxWnllM3pGTFhyK2hmSlZDUVVDWjRrUTBnQUtDUkRGCkxYcitoZkpW
Q2ZzWUQvOWlXNWRQdjVsamFtcmhJZGdtNUUrWE13Q0ZCZGpmV0hQMCs2cFNuR0lyK2RWS29FZXEK
MEo4OHV6d0dJRDdiWStSWEc1K0NwdkQ2dXBqRHVDNU1ydSt0VjVSeC9EY0dSNG1HYlFoeWpTRk9s
dEdpZUdPcQprSklnTXo1SXpCUW9wcWRYT1MzN1d5RFpjeFp5MU9tekVWcW8rWnlBaHgrSUJBZnNJ
Tm9ucFk2VjQvSnNETG5lCitVQ1pGZ3dVRmx6R3hneGZuYlBBQ0dya21Gd0RITjhvMTkxN2Q0eWZk
YktpUzk5eGZmUXNUWktOSDEzODF3SzUKa2I2MlpGanFudE92RjZ2VlhwamhTSFhRd25KWVVqNkdv
UkUwMVJENVltWE4ra3ZQejF0NEpuT3lzVmozY1pmOQpJOEY1bmZTb3libHFTa2lldWo4U2VFVWxO
dlFJVDNuTXZ1QXFaV05PL3ZYSys3Mmo5aHlUN1o3ZEhsL2ZzNXd5CkhuTzBpckpVZVdqa09PblE2
UWtmekFXSklxTVhaQW5NUzZXODlZcmhFWnFhYlV0K1Bsd1dMbWhsVURxdDZYUmQKenR4S00xTlow
SGZLb3ZuYmNXTFNIcjRXNkZKcUE5WnhGSDY5WmE3VXlSUWNqSmF2SUhWa1pnNldLMVZFaGJ0UApZ
NkNsR3orTVNnNzhYYThEYXBaRTNBdzQxc1RqbHhMU3plL0EvWFNzUzNqNlR2d2VXNlYrUzdlczVR
WTR0UWVJCkZRUm51Zkc5WCtpVUxqN1dTeFBYT3FGUldsR1BqMExqMDlBTFB4Szc4OFU2Tmhjd2h6
SmM3Y2lGT1J4SVdsRVAKZUNoT1lQamx6TnptK3BHNG5yblpyL0FWT2Z1QVd3VVVvbDJjUE9rMzJi
MTkzU21MV0Nxd2RtYmZMYmc0QkdjWAphVllTQ2lzR0FRUUJsMVVCQlFFQkIwRHZrVHhpeHpMN0tZ
ZE8vNldaempaV1NLcVpMZVpwQ2xQSEs0UW0rcDRYCmZnTUJDQWVKQWp3RUdBRUlBQ1lDR3d3V0lR
VGUwNWE0WjFtLzgybStDaCtLZXV6YkxsTzROZ1VDYXVOYU53VUoKRFRIeVlRQUtDUkNLZXV6Ykxs
TzRObXFxRC85S1VGYm9uT2Q4NExiTHNkUGVDblpTN2lkMUw5UE5XOWNtUUZLSApGUmZEWlZhQ2U5
S3BybXBwYXpNVkIvR2xtK1k0L096bnVrWWhFNisxRFovd0xsT1JMT0tGeUd1MWh4bitJTnNPCm1a
QVFHVVh5LzR4NDlCNEZrSCt3MWYrUEEwSEJqelhuWnhEc3FrcUltQmR4aUpOU3BnQ09XVit1ZGRG
Y1plYW8KV2o3dnorWXJmTWtaMUhrcFRENldVSVA5NU55V1NLMEdEQVpwYW0vNHQ3ZmZnRG9mVlh6
Y0J4blFLV25iSzFYQgpMTW1FK2FqVll6NEE4ZzJhSlNRbXJmYUdiTzB6VERWMFhPVzFCNzZFVGVO
djhCSUJaRGJJUzNFMndlUE5Oc1Z6CnYxbngweUxSMFpKeFZtT1hqUXBobVNmaWl5Sm5HNVVxSWhB
d3pDajZmTTlXcnM5OXhjallHOUNSVDJJejNLK3YKRCtGMmI0dDdGK0FGVFdGaXFZME1COGNTM2Y2
emFWV25jMVlwcnlFU3E5MHc2dlZwNE5Zd2JnenliekEydUIyNwpqT3pGZ1JoQ3huajBxRnV6ZTQx
K1FIelRab1psYzJxa1N0TGdXdGRuUm16WUdKTlRoVzlQZDZveVh0S00zYkJ3ClEwS1p3MUNicUU5
SkN6bjVBcExQT0NmbitxdUIvYUw3UjJoc1lKUWJvRVo3WjRYTmhOeVZaTHlKc2RUdVpDZHQKVnBu
T0pxSUJ2bnE3aXlObzBOWjcwano4QnNiSUlabVpVdDhBQmszcGZTbTlqTGJjbkJtVXp2Z2xQT2FZ
c3JNeApkRy9rMHFxWFIwajRRYkVwQ1RxUU8xY0t0UFBaTjhVM2dWeUNkMVBaNExSV2xqTVc0VjZw
Z1lvRVRKUG5sLzBRCk1NUTZ6TGd6QkdjWGFXZ1dDU3NHQVFRQjJrY1BBUUVIUU9QZUNSaHB3Qm5w
NTlINkE5Ni8yVzkxWnRQb1RhNUkKTjB1R3U3R3pXYm44aVFLekJCZ0JDQUFtQWhzQ0ZpRUUzdE9X
dUdkWnYvTnB2Z29maW5yczJ5NVR1RFlGQW1yagpXamNGQ1EweDhrOEFnWFlnQkJrV0NBQWRGaUVF
QWRkRDdzZlBXQjA2MTB6VFhZRXVRd2F2ek5JRkFtY1hhV2dBCkNna1FYWUV1UXdhdnpOSi8vd0Qv
ZFBYNU5Ubkp1ZjlObHRjYTZpRmpoaGtveWpabm92MTJ1RTIwK2FVZ3h2NEIKQU95aWNJdWNQNytu
aDlZK3hwZ25uY0U1YmpCcHB3b1U4a3hUVmNxc0lWc01DUkNLZXV6YkxsTzROc1FkRUFDNQo3bHh5
RUdjR3o4RnpnL2t6OUdPWEpHYjlEY3FDaWcwVEdzWEVFeVhkUHlZWXFmLzV2NTFwR25jT1h3dHFE
QkJKCk80WGlkSnA5OUR2Y1pNQ3N5N2svTUhIdnVMbkxGc2dOY3VJQk82Qngzdzl5Ny9aSzUxRC9J
OUdPM3pnbG9TRXEKSU9UL0JEYXNRc3IxQXJNeEM0eUp1aCtiM3U5S3RIUEdDdG50RDZZQzZFNG1o
RlJVdW85dENSUVkyay9qOXB6Swp2ZGR2c0dvY1RCeC9nL1ZnakUvUFBQbG1IS280YXh6Y0NobW1u
dHlCaUVQT3VjemVjZXhldVNCMHZ4cEhJR2svCjZydTdQM08wbTQxS0FRbHlYdkIwVHRhQUF5N21K
WlRUUzRKakU3Yi83TC9tc20yS3BhOEdpTlNmMmR0eVFRTWIKbXIyUGZCVUt5eHpJdGgwbHlzOHIz
K1BqMGpwMjk5ZzVkUmpWRHZnS3crWlF3K2JYRUdESG1SenVYMjkzTDZmdgpoTHp2bEhDc1pKS1dT
NFdHT29sWG9rSEFkYjg3SC80ckdlNXlTb2cxdEZSeHhMTWo2L2l2elluN1hUZW5velN4CndNRzl0
M3U2MHNpVTUwSysyb2l0TjZ2N2ZKS0YwYnQ1VGkwcEFpRnZNSXhiRnlEcDhXSDExdHZOS20wTW5X
bXkKL05pcjJ0MTQ3R0Y1VjIzRVpScGVRTDBWYld2UkRWSU5IaWkzOUVZTllpeHlpRWN3MHFwa0t0
YTBpTVp5anJmeQo2R2xXTVJoSGRUT0gvMTd0cnRhQkNlblJOV0daVkI1NUoybE5hUXgyNC9EdlFP
RE11NXkzVVdQRmIyRXdYcWdkCldKV0w2ODVVNjRMZjJpaktZWkIrc3k2M1NaRlJFeGtlMTVqUEFo
cnVqcmd6QkdjWGFYb1dDU3NHQVFRQjJrY1AKQVFFSFFMMjNidUdJSm9ReTNSbE9iSGxSRXUrbFVV
eHkxdjFYVG80MFY0TUttdEc0aVFJOEJCZ0JDQUFtQWhzZwpGaUVFM3RPV3VHZFp2L05wdmdvZmlu
cnMyeTVUdURZRkFtcmpXamdGQ1EweDhqMEFDZ2tRaW5yczJ5NVR1RGFmCkNBLytQQ3R0bzhxckZK
Y0tBVXlLQ01GTXlGQ2UzVFE2UGRUakRoNWxvOHZmbmUwZ1Nud0djcjJNNU5PT1l3QmIKdDh0RmFh
QW9GYjgvL0hFUStUZFdHbUUrYkJvZGdYNUt5SzAyQnZqSnNRUndSbk9OUmp6MVFCTVZ2bG5JNDU4
aApYUFR1aGpKOTJyYW1aWnV5QjlkRlBGQmcwc2tLeXp6aE52TUplMklIUEJWRWtiaWplRU9ja2I1
Z3lIME5HWjhBCnQ3aXpnemI3SDFodXQ2bkhZNU00VnV0OW95cElGeHZxam90WjUrbVRhUnBlcHVR
VHBFVi8rZkFaM1NFOTc5NWsKN2oxMmxES0FxbEViM21HOGtjazVDVHBVZ25Qamt3bmRZbE1Xa1FD
SUhSOHRVeHdTMklodEVYUnZKUnIwQ2FQQQorRXN1Z0VvdEtJTWorNWlnQXJaWjErN1dJOG9ud2pl
Mk5mK0tJOXpsYmRhYjYySmRSTTgyR0svWG9uSG1YOHp3Ck92S2ovUlBkRTFIdXptQnI2RWhnNkIv
ekdhOVU0SVhKd1JtUVB4cTh4eFdlNnBhcWdxcXA0MUp3dGttcXZyRXoKUTVSb2hiVHN0aGJqaWpD
ektUN3A1Zk1xcy9OcHRGUnUrL0NRNSszMlFybGQ1SGVuQmVZd0luQ1NNNzhwYVd2agp0dU41SWVG
S2FmOWJyVk10VENzQWMzbmE2ZWZLa1VmeVhwYVVlWHFZWmxROXdBUWpqSzFEa29Ta2xBb0dBazhD
CnhES0JjUGxDZGRMQXB6YjY0TjBicUhLdmhueWNIWXdPUmI1ZkdQclF2b3hOTXRFTmR1azVxbkt2
ODNzSS9tZk8KclVoQlJ0OVFRemJBQTZ0alVRcmFiNERvSUF1UlFENDBqekVKa3hZR3dKM3ZBcGc9
Cj1UUmYvCi0tLS0tRU5EIFBHUCBQVUJMSUMgS0VZIEJMT0NLLS0tLS0K

--------------xd7rfoL4gokBd01LuQ5wtqRf--
