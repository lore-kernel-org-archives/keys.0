Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2070.outbound.protection.outlook.com [40.107.237.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A31379CD
	for <keys@linux.kernel.org>; Wed, 21 Aug 2024 06:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.107.237.70
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724222284; cv=fail; b=b6z+NFheYDOnQYM/n0hOmXKiJu7OHCSJznJQdAU+X1ahYutT8lWFPY1c8gzogVdojuEcCqLrVSvnuv3fADjUKOpLKDh5U5LbhXjduClDT8zyzFFifJJgWSFbmYdu2U0Vl4fTxsiSmnEwKnHNuTP6XPT+iDTrMcnJ1Ggk6YqUFVo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724222284; c=relaxed/simple;
	bh=tp6BtrA/WN5rjjRl87rLfSOQH4hA0H/nPS2tu2QHbB4=;
	h=Date:From:To:Subject:Message-ID:Content-Type:Content-Disposition:
	 MIME-Version; b=Q/Hfv1T7vuphpVz/7tsJXt3QnSUSHUV3OdLSq8/4YIPpAwiV2eyqu4odSLf5mWoc+h1kBy0EOugprz4uCC550sXiUiijV3Pbrilh4tc6bvNPCiZKwfdx5GSEs9FA0hJXO13mHqNw7l9pvoQV9udLsnmgekzKWcBJF9ZdjCD2rlQ=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com; spf=fail smtp.mailfrom=amd.com; dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b=U7i2LZTW; arc=fail smtp.client-ip=40.107.237.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=amd.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=amd.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amd.com header.i=@amd.com header.b="U7i2LZTW"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xyJH7Ja+RIwTRqn7+c+oSZ+iJujwhQFfVEwN+oaDk2vvBogy4ufcA6WiVSpMblCR8kiZf3cnAcOfK7yKvtLWRYTG03bi6AwCSZYMWm/jX74bNle6OA5B4wrf366nTzHFHQNRMZ7NvX/BOHWPnoUqiljdGvi6NRf1ROpBUttfUvvD6lBVYo9712RKyNbvG13olVXWeGhFqGQhXOzj5QbkOiDcLwpTqqefFgpGKOO4zVFE3l2S4bc8wvSGQi/fGOf0uJS14ORcanCsNpWSTjeJIoV7c4SbocpM4j/80n9rSi0T24FC8p5P3RiJGcOGSimKubd9JS6QQ/ezQIBVHtqddQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tp6BtrA/WN5rjjRl87rLfSOQH4hA0H/nPS2tu2QHbB4=;
 b=ReB0aNBBoBTe7xp5BPZvL3H6dhs4m4EgEb7mowI1CigNU/osQ/lG+lTAlTxDogwQ2DtKrlfgtewqWIC2AvDQHpcMjZ5pX3bbCCziwPRsfGzQuAk4ddscQ6FJCfaWBiADzCPg7+5DHs4hHrsUdiOVBxbNkEzNVCSbYqP/KVzCsIB+426k1V0yK6K6BIX5L7O9jiUl0igiTvjFfNFhnng4rN6AgZIYURvt3xzL5kXEiA5d4uhyXqMyq4tVY9Tj2g/jzD1Ic0e4JfbeV3+6bTynE6phWeh3QS89wXeVJ8OcWapuF7eA1COnHdKlUHorw+FV3tGyB+P7jLbTGIG8ScBZsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tp6BtrA/WN5rjjRl87rLfSOQH4hA0H/nPS2tu2QHbB4=;
 b=U7i2LZTW8wqlSYjN/jk2Dt8YiMIYl4kVoe2U+Gxb/C1GCKalh3T1yOokI3OkKMnSAXEk84Ge1g3ohTYnq3TKUQ47JDgREd25TheDTti2qHyYRhDG7OEMlnwkagTQrvUus9pBcCkH11PQm/EtiVaN8RHwDsE2siCtsFvfOLFgWA0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Received: from DS7PR12MB8252.namprd12.prod.outlook.com (2603:10b6:8:ee::7) by
 PH7PR12MB8793.namprd12.prod.outlook.com (2603:10b6:510:27a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Wed, 21 Aug
 2024 06:37:59 +0000
Received: from DS7PR12MB8252.namprd12.prod.outlook.com
 ([fe80::2d0c:4206:cb3c:96b7]) by DS7PR12MB8252.namprd12.prod.outlook.com
 ([fe80::2d0c:4206:cb3c:96b7%4]) with mapi id 15.20.7875.019; Wed, 21 Aug 2024
 06:37:59 +0000
Date: Wed, 21 Aug 2024 12:07:49 +0530
From: "Gautham R. Shenoy" <gautham.shenoy@amd.com>
To: keys@linux.kernel.org
Subject: Gautham R. Shenoy's PGP key
Message-ID: <ZsWLPayxM19Xv8vI@BLRRASHENOY1.amd.com>
Content-Type: multipart/mixed; boundary="BGyo/6wwgk/8XpKf"
Content-Disposition: inline
X-ClientProxiedBy: PN2PR01CA0223.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:ea::16) To DS7PR12MB8252.namprd12.prod.outlook.com
 (2603:10b6:8:ee::7)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR12MB8252:EE_|PH7PR12MB8793:EE_
X-MS-Office365-Filtering-Correlation-Id: 8bca825d-f16c-4d0a-7b9c-08dcc1abcc45
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?xueHD6m1LcOW1oecYzB26dBuISZdlj0+8Lle6xrOgQ/5FPvnYXi2EwRn1iF5?=
 =?us-ascii?Q?C1Wjr3lxafQT0JCtM4z9T60FBOiw8iSul4Dy6/Gc9Gp+cPhoaeMdkWd42jdU?=
 =?us-ascii?Q?/gJVBE5IdHAYshU1xyWQHljAtdTjBzkPohVbeIPrQ9SqD7SWlcSmqoyRN9GH?=
 =?us-ascii?Q?D6fqnktVSoQUbXRfmPKjQ3piqMHDvwMQCrSuuUk5949P8SehhY03HiP/PUBZ?=
 =?us-ascii?Q?qjOK1oyF8aK8ZhXq+o7WWziCtJWaAO4kyEVK0AvQgCW4TCaWshXZGwdioXB1?=
 =?us-ascii?Q?BCJy8HW07J+kEUGD/47rwefiQhrULC4rT5csYASp1rZuReoViUu5jes36ypP?=
 =?us-ascii?Q?O6TgRlR8bquoCfDC4Gqv/UTAFdxPxKgkWIOLT+Tr1yl4fc6VisoZeHFAFgh4?=
 =?us-ascii?Q?+DKYxyRFm7qfXz6ZwW5IBTuPrEQsHcfEt8Ox/RN2NjwnaMOUxc9CR1pghmH4?=
 =?us-ascii?Q?gIp8GqpOAI3NKT9655vgVZMV8e/RZgA2pye4O/x567tUIOm/kmKQHn6fB93m?=
 =?us-ascii?Q?9XluxsdQ0NH56fTfg2QX30oqZNZd5zcDervhIqYfLoMh1DHbe7cJ2ddY5ofi?=
 =?us-ascii?Q?MNYXPJipO2bi/3eudXd73ObkXqH0eST2qtuusrNzs8pSXrhH8oeYe16qKd9f?=
 =?us-ascii?Q?pdJw2JgaVHRtXKSOy/SB2sJ88Innw8vWM3JSsOc0Pel+Ibmud51K0feSfgH3?=
 =?us-ascii?Q?07rUpu280PYweTGp2V+w20Rv01RCB9wp0P54lc9yKxXhUgDucEgFVSvkKpOr?=
 =?us-ascii?Q?ZvyYnBNPe0NHrM7MfU014uZijOX2T4d8nil2IGZ3tVR/PXGxYDyX4NQFLxUm?=
 =?us-ascii?Q?MN0xkwkLRLAjFqPbVr3fOMnBLzeOfmvKtlQL7JkFTVj15jzEV8loqZC47HYP?=
 =?us-ascii?Q?11JHDSoBUL0+kg5RsOj3AL4CvMxKjiIOzf+tVCOMTxdwFdaJVFIoDfjDxI32?=
 =?us-ascii?Q?QVlvTR1d300+t0jlKiDRV6bg8s3XUnZTYA6uZmJWAds7RLedUIY7ufoL+QTS?=
 =?us-ascii?Q?9qlhVAyi+WP0gfjs+G1MDwgk4gW7L/m8YOShOKIzBwwQJJYkq5CAAFkoqtDG?=
 =?us-ascii?Q?xISCBFlz5k+NW84KLmzKpziJh0pe0zm4MKI2faV8OO0Tih6R09vS36v4Cnyw?=
 =?us-ascii?Q?1DjazFJIEGYJH+fpSwSgonIriZ1LSnMoMPKJKKzN216ECSiCRHAPK8rYYsYg?=
 =?us-ascii?Q?B7Sx4856CghF5ZRh7oMr6bNHjj3dGLpvBoKEkzfXrho0SfJaO8GxiIZxM2qS?=
 =?us-ascii?Q?dSSWpYPNge++xs+u3fK7TLsxY1phS1yEPGTSGaPkI5J6pvOqnlAjZKNRCFg4?=
 =?us-ascii?Q?PgRtc9Li8Gb5e3P3VrlMel7PtKmi/z5CuN+S9d6xHIgSrQ=3D=3D?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS7PR12MB8252.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?zfsEozFuFIE9Vug/BCOY1jdbstAAAkYwVyrczWwIxBJ55gTnUq4HMWs7UvxV?=
 =?us-ascii?Q?fxwnA4bzmwB03kT1IapsQw6MFU+nlifOJcqClV8uzu0yf++HnJ3bSk7k5mWs?=
 =?us-ascii?Q?NLlqwKve366DeXXOTeVKzULAxCaNnek/PYCYi6iz36PCw96zscJGH67UR9HT?=
 =?us-ascii?Q?z4TG/8+MKOSxXH/7UxrBjiR4J/ZAlhOBpIfExvwisSzXo+PbkVRnG4Kk93zf?=
 =?us-ascii?Q?F8fRvYmPK4jjX4hi1w01vrZDiNnNcs0OyKtaAl5xQPcTh0VcwZ6YC20wRc0b?=
 =?us-ascii?Q?SwXrFpWNJMf3jEk+zbPWnAN7f2NY6uszb/hbGudvq0cPozVx24E3LsB04vQa?=
 =?us-ascii?Q?L9YyPG8I5cSnwI+SmSA5lF17IC2maXKx/wjPEFpRLaG9ppcNRW8tX6rxasiX?=
 =?us-ascii?Q?E5p7G6t4Nvrq5+xP4a2SCCGijkJMrG1COY8WAiifGMDdhO/yt/McwhJNM+Zq?=
 =?us-ascii?Q?ptLpeijLGmIYxkgGJLjYOjz1/cmOrnp/h8Clih3ymctpbwNjS55rtImTp8Go?=
 =?us-ascii?Q?RC2pd2cxt9QsOu2+dAOrxuTcFboeQ8sWCX6ndGUSVoBCVCtrLPP0Y+kRK3el?=
 =?us-ascii?Q?JEC/AClooUonJTi6Ac5YsZ8J5KyOJ+JVpvBGc9Z45AMwFrJyq0olhrJDQCP+?=
 =?us-ascii?Q?f4gor3+U+yNwK6LCgUTK4c7k0ss+gqDuN+Ir07KOUtnINSL4Z5lQvVaWwTkr?=
 =?us-ascii?Q?WLqgDigBrAJAxvgwDfkkLOKR9r3aHR1lUhdP3Vaaj4kMFr4Z/xwbiGPZLpXQ?=
 =?us-ascii?Q?PD2grYk/Vz26BEf+TtwBfWFb88/5C7+flvqfh/oA/o8lMS5Sp+abptny4qoF?=
 =?us-ascii?Q?MaX2CI6ODyXim6zl+jEE6U2t45mFalo0Rv6aJc603+G89+8MvJ97ckbGLa33?=
 =?us-ascii?Q?giiRKd3BtXWxrvy1aVbEc/MN8YCg/6ex84cd6D/fJ+crKxon5l53ecYn0wr+?=
 =?us-ascii?Q?5MoFTbjpcjgLDbP7NQ7zB6RuXXFbYmK6D5FW2LV/1qv1ciLtzpJohX9zC9jw?=
 =?us-ascii?Q?pnjfr66qcSC1VCRF68/LQAqTJccLb+ZBT7+UEOBaQFVYJO3dp/79XA1G2r7J?=
 =?us-ascii?Q?7CoiLmOyxcd9DQQTL03bbfKN5Z7PKaQN04uf0yFCzQH/BgEV88dBxsqt5ONu?=
 =?us-ascii?Q?7+CiCcbIbzI99CAC7o4gnbiW8klPaCid+Rg1FlfS4RwC/riTJn6r0bMo4k30?=
 =?us-ascii?Q?unfF9LTr9Ha4GAHG2pc3Dd3m9MpWX4qaBPZWQu3Z8dRMiSIwB1Z1/Sfvsxgv?=
 =?us-ascii?Q?bdBF4nFRtBnJZ9rweACCnKgWeF6eI+ag4KHkahpq95eyUd3PXpX2jzCHoCZ9?=
 =?us-ascii?Q?JlmetkiKz66AjeF10clTOGC6UL6Z0pG2JNDQWKLFwFOS4O6ETSZL4efjv6Xj?=
 =?us-ascii?Q?hljXBBI5XYIEewKIUltD/eW5Tr7AYDwy++pcfJ/JaSwqywHuTshFRYlaLm9O?=
 =?us-ascii?Q?U8EO2RWiMXm31KthEBG+HJ4iu5ZtxOM6flkyvYwxpA+/OVU4PHNKLyX/YsQi?=
 =?us-ascii?Q?9e+cD+cFEzzi5LquyeAjl9hpYq1MhfEpqQivv9j034kyaGaz3BFI/iG05waK?=
 =?us-ascii?Q?cvRiMcC5EmIl83JiKVdyxnO4siHVXsjRReO+L4Vl?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bca825d-f16c-4d0a-7b9c-08dcc1abcc45
X-MS-Exchange-CrossTenant-AuthSource: DS7PR12MB8252.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2024 06:37:59.3661
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M86i7fK6cc8O5sLapRlCbi+vvwENecDoojzgy/ftprcu4kX2+fNvFD6NF5t4gr6mMJQSsga6enIP3DWUAV7P1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB8793

--BGyo/6wwgk/8XpKf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

Please add the attached key to the kernel.org keyring.

--
Thanks and Regards
gautham.

--BGyo/6wwgk/8XpKf
Content-Type: application/pgp-keys
Content-Disposition: attachment; filename="gautham.shenoy-signed.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

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
kXw38+FKK7M85obSNE24UQ4TKx5zyDQgaw==
=U1e9
-----END PGP PUBLIC KEY BLOCK-----

--BGyo/6wwgk/8XpKf--
