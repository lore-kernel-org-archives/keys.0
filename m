Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com [205.220.177.32])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220D1173
	for <keys@linux.kernel.org>; Tue,  5 Aug 2025 22:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.177.32
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754434621; cv=fail; b=sF7hVyBi/XVi83zW7/AcIcFGGLiNAPiUgtkavE1eeh1tGAtDz39clWPnWf72k9OoYw1YKFf9Lgt/ZQy6Hl7SuFwtVCtGeTJIERnyzH7Z5bX9z5LJcAS/3mSRGmkiWpQEQVMlDzW7k6bUR1NY5cfr7TLdmubvCLxeSmksZ3ZeBnc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754434621; c=relaxed/simple;
	bh=2R9lYS5ddz6A35dw4RTxB0Ry5oeo8znjMAz23h4BIm4=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=G5u+cfNb3AKeUybb4SRzNiHQvpaN5te1JyvpuKNmky51JBbl1amoZPwwIzyRxenn6wLEACJk9tBYdnL0A95/XwwY0WhimildPX10r57J8zFPO6K5BbKI6SyOHKYWYlNrMZ1KU8DzfwSN/0/y9p7qiqKQKLCE08/7IR76UXnYc/o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com; spf=pass smtp.mailfrom=oracle.com; dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b=YxhV/SG5; dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b=vV90ufIF; arc=fail smtp.client-ip=205.220.177.32
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oracle.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oracle.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=oracle.com header.i=@oracle.com header.b="YxhV/SG5";
	dkim=pass (1024-bit key) header.d=oracle.onmicrosoft.com header.i=@oracle.onmicrosoft.com header.b="vV90ufIF"
Received: from pps.filterd (m0246630.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 575LNtRj016838
	for <keys@linux.kernel.org>; Tue, 5 Aug 2025 22:56:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=
	content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=corp-2025-04-25; bh=2R9lYS5ddz6A35dw
	4RTxB0Ry5oeo8znjMAz23h4BIm4=; b=YxhV/SG5X3PJ+BwalljAC+KgOHiFhYUz
	ZnqPSNWJP4MYremFWRcRwJn7d7VEv+xmnbS2S6TyFcOQVKWuej0dBhXDnbWOeJk/
	fZg7ALSCkf5+TYShdWyqdcIIpOQjdW225g4GwJt92kwT+DVbCTVSU4ORdUbpkxYc
	3dMIt5zdcLv+Kd6IHQfb8ww/he00Np45riVXcF6tGulMtnYbu43Jw7UjoSzvoXtv
	LhRB5YpQZnsZEbo4qnWFITyxWTmhTI9ifE242ayYF0SHG1ezH+mx8h9qTg/o1LjE
	FKFzKQfbbFToo4HSIyE8gs7INSn4RyW0kqdYyXig5XeH09d5Tamsog==
Received: from phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (phxpaimrmta02.appoci.oracle.com [147.154.114.232])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 48bpvf0eju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <keys@linux.kernel.org>; Tue, 05 Aug 2025 22:56:58 +0000 (GMT)
Received: from pps.filterd (phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com [127.0.0.1])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 575KrnC5009761
	for <keys@linux.kernel.org>; Tue, 5 Aug 2025 22:56:57 GMT
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04on2081.outbound.protection.outlook.com [40.107.100.81])
	by phxpaimrmta02.imrmtpd1.prodappphxaev1.oraclevcn.com (PPS) with ESMTPS id 48bpwk93ns-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
	for <keys@linux.kernel.org>; Tue, 05 Aug 2025 22:56:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x9ykaKn8RzMTMGAaT+Q1whLyOnzRXvEycfI9I/cjgqXH/xG3LUQI4szq06iCGivFB3eBDnTX+YwiLWyOIlm4jvrMHetg7EaNEg+4VV0tFsZFa/D2xeG3kslLOlT+xIWagVPCHoGUDRk15WlrqWxUIOs5YcbaDhmUeiTf6TznA4DFn6yo1OmS0b9CnvUrxYXNh12KMAqu7s4isrnXUwIi7mMf1+2EcEsbwdJpLN9a+3w1dGJlE/yji3IG9mUWL7bINrVawk8s7BhFP4Anaop6C2vM6lfSqUBcb7/Hjj1Utxc+1RmQgVGDNDU81N8rH0gJYml8TmK9MjDyilt4GAXZdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2R9lYS5ddz6A35dw4RTxB0Ry5oeo8znjMAz23h4BIm4=;
 b=SjvReprWHoTYipxk/Ws5RG9ogO3yQB7BJidnefGexTthSXv9KTPUiRYrDVY1TQN1s8P86qfIcxPUzPohWBoUEcxZ2Lk4kaUGjul6x4zHPD7YS9ZXzghgAlPslZf1+x9pr3PuzkbKTEayQvTSY8PyG3owBUWkoOA2EIurLepC4y5qcNJqJywto1DPdA0L3q6tSo5i07C+gg0SHR3FcFJBswJjapPGG2lNtR3dgiv8wI4gvIECjuvK8BKb8HO0JkJ7wiRK1VCBujWFfrbR12coBjIRjoPhJy7tkZFwwiB6WA337CbpIE/zIkngMCJWfVJ/0tgTdlehH3SfXwYf3m3/Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2R9lYS5ddz6A35dw4RTxB0Ry5oeo8znjMAz23h4BIm4=;
 b=vV90ufIFeefTm0sOiQnswhaqGVDlE9qgtHoxnTCZ6IiGzjFIotQf1CsBkwek4J9PCXARuFyR0ihKHJPeJ8YC9/6Q9DeUH0QhR+p4Uqf4DoQsq2nFBioG0HUmgYwMSzOF7ZP8T9aQVYCs3vJYQf3QmoxOoTr2eCdiBaKAnf6DIyc=
Received: from DM4PR10MB7404.namprd10.prod.outlook.com (2603:10b6:8:180::7) by
 PH7PR10MB7717.namprd10.prod.outlook.com (2603:10b6:510:308::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8989.21; Tue, 5 Aug 2025 22:56:55 +0000
Received: from DM4PR10MB7404.namprd10.prod.outlook.com
 ([fe80::2485:7d35:b52d:33df]) by DM4PR10MB7404.namprd10.prod.outlook.com
 ([fe80::2485:7d35:b52d:33df%7]) with mapi id 15.20.8989.020; Tue, 5 Aug 2025
 22:56:55 +0000
From: allison.henderson@oracle.com
To: keys@linux.kernel.org
Subject: allison.henderson@oracle.com
Date: Tue,  5 Aug 2025 15:56:53 -0700
Message-ID: <20250805225653.1889428-1-allison.henderson@oracle.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PH7PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:510:339::17) To DM4PR10MB7404.namprd10.prod.outlook.com
 (2603:10b6:8:180::7)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR10MB7404:EE_|PH7PR10MB7717:EE_
X-MS-Office365-Filtering-Correlation-Id: 40b256a6-71e6-4689-8c68-08ddd4735faf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?s3UwG/I8PUC3dFETae7v1mwRdEzIZ+JR2tX1MGTlXr7Vxm2KYSf8WEyHDJTl?=
 =?us-ascii?Q?r63jyeHwohd0nB4uU8yM965x3ujLxpoQwhUGhI2+Ze3Clr6fFZM0I6VFy8n1?=
 =?us-ascii?Q?qqTGRUvj8w+TTQ/XD3izkuZfiBULCttzY7WGcUTwxjvtAxaCnSmQGxRfARM8?=
 =?us-ascii?Q?ES1+lKRKcZ1ZzgzwhdWww73vZ2Hqe2e4JeeaVJpn+5t6V6qE5VFQTnNL8SSJ?=
 =?us-ascii?Q?ZxPB+FQ4Vq9FfGd6CCsPI2qVJ5Z/TcHO3HzE+sOz6+23jylwABt4Q9CoWino?=
 =?us-ascii?Q?8YkkW5dBUjJa041B5SDndi8Lp1JQjDClqd4YzEuTZMfpg6xPkqKs0Olbl/jv?=
 =?us-ascii?Q?vTRtQGjPFp7jgXYSfdPey52XkfrYkABqpYOmPQPD/Nm7uAOQGsFnpEM0G1Aa?=
 =?us-ascii?Q?c1DIUvIjwtnzi7eo34cOFRIBAqdAoRCKf37oTlb+1AIRLjYGDx1znzc725AX?=
 =?us-ascii?Q?MUOMgS+1AgkN2sSdUOTDH1i9Dw3KW5FhX17xoX9f3lOmbBpsXH7TvxpUoyae?=
 =?us-ascii?Q?gH7wMWlsoPq7Fi0wUn6cBnBQjH+Y0MfPWRFRJiUDgMfr8SLbLuxKe22Stjw2?=
 =?us-ascii?Q?w1OYpT2P+x6rgloSKHRYqLtfYa8hb+n8FX59VKU99oCaKuQKjnaG1E8T+qTN?=
 =?us-ascii?Q?3khNKD1RbwlETu2wX6deK5UNfROevdEKUbh1iUmAhjG61o/aX6/Q6i68dtR6?=
 =?us-ascii?Q?IOgDA0GJRjpJIe/wuiw/8zMXxud9DMvtJcOsP6kXlYGMdkp2ZxxpD9DBVN5F?=
 =?us-ascii?Q?UZRtKBytVDt3ZW7Zna4SWTlguIb2PyNWIalJbg0ar0/jbrdF4fzCMUW/qyP1?=
 =?us-ascii?Q?QCV0ReS8McV4ucSK4JUHUsLc5EuKzCPUIIxqpSWyr1b76fd0qBEgovT8SJg7?=
 =?us-ascii?Q?C57fvUpa0wk6QF/gFazPEjUDAJkcxLhgLZ0k08G5Sb8rkU66bzUdvcfVWth7?=
 =?us-ascii?Q?LmxDV1scJLuhXLELXresu82ZMeM1024Ph6nD1HVf00n+56d+Yt1tJmWO91zv?=
 =?us-ascii?Q?vJlA4y+2X16YJ5kf8gHYClzHJeDnMNfAVZDhUovKLHYTz246HMLbLbgw9uJn?=
 =?us-ascii?Q?Z4q2mZJxpxAMwZSZiLmc75oOu+gv+O4QgmDM9V3hzMTkn3UzZHRV54+g1kT7?=
 =?us-ascii?Q?27F2xSSeAcvCZH0XhZNdzuOtFNypuYTMod5j8guNh6ZTk9XbQMRCTdkUkLuW?=
 =?us-ascii?Q?c757dHZwsk7ypUHTJjcWiozKv1920Csgxsq7fMhY/eIVFm1ZyUVxhbCCUl8v?=
 =?us-ascii?Q?rUyP09U+0DJeBD+/5Km4TBYawCWqJ19eb/7vrkDk+RA2205OswVo3GNIO2+S?=
 =?us-ascii?Q?bqJKEExK+9/CtGfwiaDHxwlZXBFZYBQMFfHxBjbYHX3fLxplp/ZLTL82Smyj?=
 =?us-ascii?Q?34TkbWy/I/W2CAgOHzAuByNc/9jsq+f6mGMTrAIHfed0p/lRJ3JIJtCo/cWw?=
 =?us-ascii?Q?DiDwGaP2Xu8=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR10MB7404.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?Mw5XuzdLBTWs+WwR2EKWizEYyxhtvOTynjqmhnPJq1Avf3pu0G4nJ7pev61i?=
 =?us-ascii?Q?LIfYK8BE381uDorOkTway7kGPfHoXjtikR3qw3vCTT4VEonOj8RpOnDxPE4w?=
 =?us-ascii?Q?wf1ZUkzkw3REnUVd+zu57dzRfP7hK9hq9zV0c5hls6QiYMHycYWJX7mNuSpR?=
 =?us-ascii?Q?9ka7XSDseYyHMPeStmz0Gqnch6QbPbQ5CcJCyqFyJRWX1+2nBD1OauD1uiEK?=
 =?us-ascii?Q?ShHgYf9eM2ywBMLxdmx2uRoFkRlB4jN64u/X1YU9MMwzAL0c/vCqcQ0Fmo4O?=
 =?us-ascii?Q?QBP7ht1A9PbomcfFIHuT/a5X1B0d7RFRUKZ1xcVIpyWS+vouTDJa+dGSNZIl?=
 =?us-ascii?Q?PLVqsI3jujaAGioSD3fb3L1dsRd4m2AiVVxs6S4EOc8JJdvE7o1UohhKaq+r?=
 =?us-ascii?Q?48IvqW0xlW7oPypsRugcYZ8hOmrZXbrgMGtz0nNSrITJY+AizuBZO3XXzmoV?=
 =?us-ascii?Q?kd+fjPefRf2X022OpnWTxdtSOym8GbHL3T7XvrTEhZt8tRj17Bd+/nq1AiOr?=
 =?us-ascii?Q?pJtkkph2+B77/7enU11LkHbvY6ZEMR3QjzjX/kqWBiYsVJl3COgr5BW1NWvC?=
 =?us-ascii?Q?AOlvPes5wujUk+Jm5HMee0KyGx30JiGPv/w2Q3F5CP9NehkFgzitCy0ShtCD?=
 =?us-ascii?Q?g6BVOcjToMtTbuPhLUku1ak/LFQ6VedjzjRRI9KlkPO/b0sELThnjIe2+SxA?=
 =?us-ascii?Q?ZJ2qL5qYXKCVlxE9igu0z7e70DxRcuFOXoJuJxuIOK2WSNFGWr3MnGESlGw/?=
 =?us-ascii?Q?RGNY8U/yqXTkypqNgOgE8YyhmmqKCh3U2kLN7HXVu1QuKEVsqBehtMdR7FZU?=
 =?us-ascii?Q?yY3qM7/0l1HkgNUJIycp9S0B21mIXfO4YwkjTqA2QszP8OITNVEMfVDc/bGX?=
 =?us-ascii?Q?KRCIzXJn6H8P2s0j6+6wPmBTQ1NzQFOOyUfxEHfAp70gAckACxybrVYqBrt/?=
 =?us-ascii?Q?GjhHm8sCc7Bzpem10IiTOD63PZtkcRKfTOYFMRoE0wi3puxFvehBoHYC9Kxn?=
 =?us-ascii?Q?fq9NKbKgCJ/lgzlUxlDUZs8+RpdOBySzXU4hwgKG12hmc7g5wF5mmJksmC/U?=
 =?us-ascii?Q?tkE1BfUgcHMZPPZSTTzTjm0BBllVBRlKvVUavrlb9htNX3wNPNzvdN5QiU99?=
 =?us-ascii?Q?etH6aGQUGXsXq1fbE3fLZpZsrkjyu4Ws45K3HDOxRfX0YY3HUOv0hfpMGyx1?=
 =?us-ascii?Q?Z7k3LGI1wHt92xrRD93dO9ewj9aOg5Uz6IG+hjiQ+7Rp7/62FIuUyWMMcVTD?=
 =?us-ascii?Q?d0yDFpF7xUWOR/bHKO3CbN37ON0QympHi472aUX/7FEnJvMNvf6PbZsBaX7k?=
 =?us-ascii?Q?1xRlT0dPPlor1IialqJN4HZCSyWqjiP8Dlrpsfh1zLgzHadI6cCWifrrF3TX?=
 =?us-ascii?Q?2Qrqkvh5d9zZw4fUvrBTFL8CN3mCOsEzDyRpE8eGQassNU3v0z7IDCSZJ5dz?=
 =?us-ascii?Q?SHO53NTa/+yGirzP7MmA2fZvnM0OK2qiVZa1yUWGnpP6j6LotA0VNVR4053S?=
 =?us-ascii?Q?pzWsukU9f9mNBCCwu/ePpIpyJsS7EQDn9UjftJ/D/bQ4vNuta5lh1AU6Wmsk?=
 =?us-ascii?Q?yOMGhksXWKBc8F59tXmjSsBZI+Xppwm7WZJms3bDDunPexIJ15zfK2NuBI1h?=
 =?us-ascii?Q?Wg=3D=3D?=
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0:
	WkCpVWeO6KZ3rhd2xB6Se3+8vUXP75MQHvRGs2a74s7X46OVNL36fF9rSMh8X/Y5mDAk+eVWdDwVakqB+d/HurguANAi3xXlKnjddff1q1QD07qf6sp6aFQNs3ua60fSpurnfeyZq5ym3zHR5YyfGLCPe+rB/56Sd651FU9yWFKPO76GDkicqNnCFp8nJvKPXp5ErN64PkJY6w+FAcaT3Cn5vStLg8SbEI8Bo1yBwsBJH4/Lw0bWqebWLpRJxffCYvOOlUKUoCXIAcPsnyg5tybhPZGihrp9JEurM+3vbAEbaNl48UQquyfzZXhI8hnFE4ojuEvFGCXFuNph/q+JyaMbPXmns25xNfSKMax+nUGJ2X+DHxE02kn5CyaGZmxSNzYYIAwqA7J/O750FLD0UtApUq0rnWfyfv9O4ZfK/py94xJCOss+6c32co/XH7LfjplK2T1Nf7CMfuHcPN5fjO+LwLhu8Ag8IcWBsLldJjNsMsspwBD5X83KGwRopKExlNG7OYUlMZAfRa5U+dITSuoTv63WceOPz4ffs48AEss6HuX4Q3L3d/d+fcKc9JsAP+NyFDQLRaATqIpFVeY7Q9XS7lZ3WU8peyhYqvySYa4=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 40b256a6-71e6-4689-8c68-08ddd4735faf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR10MB7404.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 22:56:55.0113
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S5EOlklVRhl45Qe9xLKeLvytyK2xHhzeVIjRzW4Gg26V5z2ycR/OYSlUg9zIXV5INmbGydRbJHTK7exoQ8uGP1F2QjsPg4MTeFr3m2qhbPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB7717
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_04,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=676 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2507300000
 definitions=main-2508050161
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDE2MSBTYWx0ZWRfX3SX1/aZl9UCq
 dPvuKGoNR2Q4URL+UNnVDNPJ53TJO1HIqoiTEpzFl1SWeJxw7gM2OLeaMODU/03xEucACqK+S5k
 np1PC7RRRSHHXyX5mwqq9RQQckQ8hdYtPRgtL6vMG+/x4sGsFauBFhoa+cjuDapY/l/jpcEOWH0
 doEzPqlshfp+F76FtH60wZ+tE6krSc/vXdJhfwfqwxHFBcDDW8pnGeMspMzQ06dQiuHaOztSQ5V
 9i0c87TohQO6GgXoQMzKkFbXZAloaGNV4CKmoH0s5r9mLFlelp/xsDn1vpfubdlN9ZTQL3YNYyI
 mz1xeZUW4/njTKrtLK1yaoDHyTLoAtCsp4lLyhlbAk4qtRYP4I+lT0jSCBJWpaWBkadFyrEB3FJ
 d5DLWlYwrt7itc89DPd7Ru4ZBrvO5OjnTlJgTqeozj7oaSBFlQoyphckfVSzJT44J7pleFTg
X-Authority-Analysis: v=2.4 cv=RtTFLDmK c=1 sm=1 tr=0 ts=68928c3a cx=c_pps
 a=OOZaFjgC48PWsiFpTAqLcw==:117 a=OOZaFjgC48PWsiFpTAqLcw==:17 a=yPCof4ZbAAAA:8
 a=6eWqkTHjU83fiwn7nKZWdM+Sl24=:19 a=z/mQ4Ysz8XfWz/Q5cLBRGdckG28=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19
 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=EKCYN63zqp8A:10
 a=2OwXVqhp2XgA:10 a=GoEa3M9JfhUA:10 a=x9U0dqeGB_w8OPHL9Z4A:9
X-Proofpoint-ORIG-GUID: Ub_01H0zE4RsWxMH1H1pS7JL_OBHt6aS
X-Proofpoint-GUID: Ub_01H0zE4RsWxMH1H1pS7JL_OBHt6aS

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
KlTUMbnkYcIjjiw=
=uY91
-----END PGP PUBLIC KEY BLOCK-----
