Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03ABA9470
	for <keys@linux.kernel.org>; Thu, 31 Aug 2023 15:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1693495846; x=1725031846;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=WYvPac5uWKmkjT9XDCf+RC2IAJE/kGdhvhUPPW7yrDg=;
  b=VSWFpbHsoYj4VcibI13z+Npw4I6bQjm8aEacq5Cc0QkhmZzEiy1GQDRE
   vWt1Edh14lp4O4XWmqY80c2ekHL8HtJ+jnTAenAsskSuveAjvRi7PqOe+
   FrOzBnH0A9s7hgjpO3Ymbt/nOb91Nb7BKJnVdGGj6YI/TrtZtGT4TQcqF
   DFnEtiHLt6Rkxu5XQKI4AliuWbhZXFAW7somN4nARfz0ec6JgPCxOUQfn
   /Q280u3ODL7rlLk1v1dGscnzZjXOiroiJpBwDrlE7G74nQYDMsXcFgu0w
   JoOGKg+ZqER4KzSxRQNdc25s99pLj5Kvmvtds0hixiWevJSIQ6xwLiyLC
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="442369560"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; 
   d="scan'208";a="442369560"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2023 08:30:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="805036060"
X-IronPort-AV: E=Sophos;i="6.02,217,1688454000"; 
   d="scan'208";a="805036060"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 31 Aug 2023 08:30:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 08:30:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 08:30:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 08:30:19 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 08:30:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SDOLWfCFjd7LxoBtnU4lOeJTM5GtdZBShuoai9qABdMFDaL7BqtKaqF5sd92/7IYVfDiMx1GyX6PD1XvFNn4aeooRsVCxdE/iktjewZVfWm00nQo0ZKhp/Kz6e5E30NcKwkob8dPY3bOOWt5n0R0Ik5wESyEsJglqwUm/kckzahXl+sAagfeb/mWyFt7eM647wfODa3WT/58AvCCNTGe+9xwO35Um1fV253cPlFPEhYxW5IOuN/V1o3kv9x0w+lAYORHD187bAT3dyMZKJzUFtUG4eoUvNXVbdyQFHgsdFtwUv9ZQxWWo8hTziP55IkP4JRswohOlSNcjXh6act/JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AtcdxsTIGyumafKNzr4whQfoN0Roa1NDoEqwBBep44o=;
 b=gSv9iVONsm2B6cFbMeoPQ845x47GQIdwrI36ruZZB/5mNtYdu4eLG6X8IZpS3ZM197tivEpc91uRhTrrjHaXxzZe6q0inZJNRrEojJLhUCCnx+O1VNAamd24a5yn1GfCwLfesoiANgbi8XexfZWx7Lw0rJpTH1DJmyWWXQi81NjyIfg3kTFoyzh2byyCWKhdJv7rDaXbQz4Zw7UFu5dqPIwLwaFPTTH2x3fgcwebW5s8t3Vq6jVDPEt0Mz35M4semUpNHIK7TlDpgfDI40/01j5TTXBDFceWv4bgzFRQ2drhvC5fHRMwzyvlZmqA+DqeTzclfrUNfJYiYE5SPl3Znw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by LV8PR11MB8557.namprd11.prod.outlook.com (2603:10b6:408:1e8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Thu, 31 Aug
 2023 15:30:17 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::6da5:f747:ba54:6938]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::6da5:f747:ba54:6938%6]) with mapi id 15.20.6745.020; Thu, 31 Aug 2023
 15:30:17 +0000
Date: Thu, 31 Aug 2023 08:30:13 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: <konstantin@linuxfoundation.org>
CC: <keys@linux.kernel.org>, <ira.weiny@intel.com>
Subject: [ira.weiny@intel.com: Ira Weiny key for kernel.org keyring]
Message-ID: <ZPCyBX6IOOspaolN@iweiny-mobl>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR21CA0025.namprd21.prod.outlook.com
 (2603:10b6:a03:114::35) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|LV8PR11MB8557:EE_
X-MS-Office365-Filtering-Correlation-Id: 24fae453-be69-48ca-08d9-08dbaa372dc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FTvAM1MIQai1er6imqIHK0y3+glQgOcZQNWa/5ztfjLEYnei/mRN26QlUpslx1h8mDQM44+0ncbkPwZDHXyBCI9awcLicsm+QuHBKU/ey7d/uA3+TUDmoeboBk6absdMrPBANj3p05mSMDneUn41bmlCSTF2cBa0e0JFiul8e1f2vOLvTRzKAWvkYycrqDC9VK91eWYbAfZzOvRA5DFKbs62h+yV7iesUleKeQdTkIshFq7QLn7QZQs0/h1IUmiYpNsihaHxtVOH6EjUiygPtVQ7AEkkCdOe6XYYURNTt/AhGx6ryZA0885uqyHxVoSquEBclwKchRxQynGduKck9GU1VoWZX7S9ON6ktaFyLSEMCu86rUTG1rJEvWbHjh6HqBjYmrf5Bh7HgWCjwbJ1fI5nzBVZUw/BF6HUPKORSBxMDae6h528KIXBlZe6qz8OD3CXoekQHkQh861R1MPwYfMI4zbfwMXmoLapK7F9iiZBQbqTti//U/u6dRQjZKEglb7o1ueZH7KJH5MbBAXPDhZpNfYfod1cLWPsKqncqEnmS8JtzkV3o++WlPrenG2I
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(7916004)(39860400002)(376002)(136003)(346002)(366004)(396003)(451199024)(186009)(1800799009)(9686003)(6512007)(26005)(82960400001)(38100700002)(6916009)(316002)(41300700001)(4326008)(44832011)(2906002)(107886003)(45954011)(30864003)(86362001)(33716001)(5660300002)(8676002)(83380400001)(6666004)(8936002)(6506007)(66476007)(6486002)(66556008)(66946007)(478600001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SMruab80oM2dOA2o59nzg2oSZxeJZZODEauc/Cv25XNISynFW2RFVFK3M6Xs?=
 =?us-ascii?Q?fbEzeDIzJQxoJIzvgpC5Zd1hshCdQPjP3+fUMgR4APzsmwNOF+SxYT/hiBZe?=
 =?us-ascii?Q?VfCOJ5VeiG9ZWuJ73s5IuvFWGuOp9oNZuSxpbXjxdyuEmZ/yRRzc3bmIeLe/?=
 =?us-ascii?Q?n22LSuGgY/hbw8qZ3m586ltRhxuC3pnrBzYFaPy7MTMu61pBfBxz6zgq9SfF?=
 =?us-ascii?Q?DNSQh9cOnFa1jsL/3VYAhj7Rv/p7iAh8CYydZJJOv2bU8Qcnhu+ilcE0gn3M?=
 =?us-ascii?Q?rBqiWWFlxZCMwSzF2W/ZYVNlXBuzSq62Tbg/e9rksyICmJslfJIZvqiLdBLL?=
 =?us-ascii?Q?m+DVAPbwa46YyFowoPUxer11Zxc8HaUlFg10AzB6ZgzYANZtJvmxRgcMIR5u?=
 =?us-ascii?Q?cjPg1J9+GsFpaZ9UT1NXusHKUBXvqBu9FWEalU715jzjRhdVHeTFNr6Hb1gp?=
 =?us-ascii?Q?4AC55bWI8f7F0lKfkteWNJS+RKj4aoDR54R/+m6w6CoyW6zZitRN5P4J1Hqx?=
 =?us-ascii?Q?fMG1vmJLkIMxcRkOlQ8nFXakW5ECMsuxo8vqbi/5gLyMQn48oxPxgdCM6OWN?=
 =?us-ascii?Q?A1drt/6tFjgNMjaeRqlTsoKTOYQr+Zx7NzG9iz5SCrQdqY/s8STT0Ps58SGN?=
 =?us-ascii?Q?svkMNtdil9IlgLLE/uGPOEj0AyUnDweSJUNG6opbJs+uBCahBivVn+yhv9R+?=
 =?us-ascii?Q?weqsuZwaFLDnBc/SDB3QIKWN7HLfXuB4mYyrTPvJsCgvw44y1Nz41rRkPwrP?=
 =?us-ascii?Q?15T3r5qgmzeaTWeYk6pg0jAMQgx2uQ5BT4jg0KzTAEYckgMuDTVGh47jRHkQ?=
 =?us-ascii?Q?ztEiHWR95iXTTd1txpyhcmzm6RiXyHQjHM4qQH5rIkKB+1plmo/u8JIX/57f?=
 =?us-ascii?Q?zXijySlU6W/LEcIczNAYkUQhsBJfWxrg+Jvb7sg/SFtXHpgqBWzqi7/nJkec?=
 =?us-ascii?Q?qFcPmGwnot9ifggV/OBwZWBYempn4vBx/jbaifyz8dZW0MglKM4pPk2qyrkE?=
 =?us-ascii?Q?qVR9qIYEnS90tjHLl/yDL8Q+YwyMEpV6DWpWqmJighycrqFUhpKcc0CMsbNT?=
 =?us-ascii?Q?em1uCtGpRfFh0GcRazm5zM4rU8uGT8qxacZeaTvHXdZPcmzpHYiRlPDB0WmN?=
 =?us-ascii?Q?YhbJWPcxHtcrP42Y7eTveFCUx3KCjCvOsE64qSMzHp+GoilrTKVSRe+m6bj4?=
 =?us-ascii?Q?Wkog2TAKjohJBMSaw7xKX5O+LqwIlS5PMX0E0hG6EfO2ZuAZx8N+yv7kFk7d?=
 =?us-ascii?Q?zH51jTfDL+aJ8aRbtbiLU67LK2Sqw8ZuwS92ejkC820mteavbc6BbUwrQlE6?=
 =?us-ascii?Q?31InwZ3PkvBJ9/I4TJfPlTXea3doufoIs+TLG2RDjK+4uqxXAypOUpYR0Pi1?=
 =?us-ascii?Q?LDJRNhsx8AKI+tvUbjnCvXrhBINaZuFaKfUtrW4uf+to73IBxk9hfmSp0uyO?=
 =?us-ascii?Q?HIiYxp4VXh1FOPvp43qHCLKKf2LF7dd+FXXIV8x661o4taiAeg1RPtTIqrQu?=
 =?us-ascii?Q?EDewnZwOXMlH9McTDcuG7cx9DX8xC+9pTsZoQ+XAE/WbR69NcIA18bfDGBv3?=
 =?us-ascii?Q?Jc3NmsCjLUqXqoHvEDmtZeCoSrt0nTTnmolDDS3y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24fae453-be69-48ca-08d9-08dbaa372dc4
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Aug 2023 15:30:17.2415
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jEZsoP5hQS/kJio7Q7kMVyoNid28zs8teQjEC52JaOQKvtqI9X1TH9hkdiYzNMtcoMWW9B8ba2vLAub339CnZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8557
X-OriginatorOrg: intel.com

Konstantin,

Is this something you can help with?  I'm not sure who is monitoring the
keys@linux.kernel.org account.

Thanks,
Ira and the CXL team

----- Forwarded message from Ira Weiny <ira.weiny@intel.com> -----

Date: Wed, 16 Aug 2023 11:39:47 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: keys@linux.kernel.org
Cc: ira.weiny@intel.com
Subject: Ira Weiny key for kernel.org keyring
Message-ID: <ZN0XzorsG9BHIJYw@iweiny-mobl>

Please add my key to the kernel.org keyring.

Thank you,
Ira Weiny

-----BEGIN PGP PUBLIC KEY BLOCK-----

mQINBGTLGo0BEADVhrjNAPi/Ep/ZCqCIFmDj5Wiz797S4Mpf0h/nxnKLrt2vwVcS
BKPyu9IOUE7IN89ZJPUrnJ6tRVrnczpvkcfxgdnlK+em2BnvCw0H1sL1IUQfIewS
9WzJWHkmwgHTh/dvQDg4Pa8GHBWyMlC9uJan+2R9Y15X9X/rd6Ana0INEa2p6cc0
1jblj5dFMJUTfFlfLP+xsGew8uSuTHh3cXvHDU5XgBKysEZjYD8LNmymVb+rFgb1
08X7kOaeKkI4tJ2RsleYy6Y/ASH4guinGx6/oRqyLR8jVnccQs3gmXfmD3p/c4Tv
dSIKuEgbIAl6vy+wRaZenJG2EbDGD7wA8JcprO4kZmWeKPgArP5iA75MqZWSAyn4
N0NKdyUo1CJfbIGjjJ8J3WP5adpfmAHaLZbR5WpoMGEgj35WROtj+syAhi8xswH+
jOG7xbCFcmVrwqCyDcbk5tXXGQ8u9OzSnCGkfCL9pNGs0hY4uhdiTrzg5hqm9FGM
7Ozi56vvt325v/YFbcwngXYubtxPAJnwsSCqDqTZkOnlegJ2dpyo/OZjV7lvwgU4
stE2OS7RYAIfSJrYtvNLdk/DWrhsJL1KU/fBHzrlvFXaIu2AYPe+j/DVK0hqEC2L
ntUjlnEzGhIKVejyrpx2iMEE/kmbN2o4tELtSTxZQDlq9g+KMa2pnLceXQARAQAB
tB9JcmEgV2VpbnkgPGlyYUBsaWdodGNpcGhlci5jb20+iQJRBBMBCAA7FiEEHPcK
CQqClSKS13lGTKO6v3iNcNgFAmTLG6sCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwEC
HgcCF4AACgkQTKO6v3iNcNh0rQ/+JVnv6GJGDn5T2a2ICsl1vT0oCpbNW2WqoLmy
RQ15QJIsHdsurlrZaftZFOnHKErPgG+X1d8HboxqQJaLgRfTzy1dZLwiV2czR0vg
atCJk4dnk+IO8/ip8t53zZoWW8VcCZM5/Scddlqu2DxZzZE5xoCcoEe5GjWzSBWV
uRBqe8p+i0o5h9ycUXrE91PnpFdADG3ot74XDGDKfuJzqe4pB+A4R/6U7Q6lJs3x
3TXr780Lv7gbKz4YpPig4kgxT/ZBRhOCnbUK0SvijKJi1yikY+t3G+UWSRxNrI82
oFfKPqyeOmEryFa6K3M3DUJK9fK/FoRWE/fP6IVDnekPYaSewoBeETKGumv+VW0E
gglimfoFTrjE5kQVUUzTbLoZwhTPUCc7HMRkM1Ogq/vlTdwbC+XtDRQc55nc1MJy
6gBZZw/RkQAB1+5DdsD1h/Wz9lE2S/PxAxA0ua2ZKxyXUmQ41UfpJgPLNs+QJlbD
uzVPfrzMZr3zSXRMRmpfnd4MN2FrZZRlASbMH1ZZWJ4jF1JT6Town7NuCBca96cP
qSqbwdqDB79NO9WIbCyBgDNorlCxWHxVu24DohzvNGq3ldPUtHqjEQPklmSuMkqn
6fGEYh4mLHPYGaUTTQuIRQBdZPs6UPoB8bKu0MkMTImLYeOT4/aAmfQE6hckbE8/
9ci++aGJAjMEEAEIAB0WIQT4aCvhNMZ6EjMqLtB6+mG+o7hN/wUCZMwVpAAKCRB6
+mG+o7hN/0oeD/0VnO85ktNRPrPdxf4KRoj11AVuYBj9+zfjzZGnkk7T9QnXdkNe
ycTNw6EinkfFSt/j/4laQJ2U5dBdsiEAGsm94hhWAiFM5uOSZnvObxAA+Ye6juWN
P7w07bcY1+pvGV6MK2i5ImngCLtF0bo7ALpRqhui8GYPSFfjBGCdDbCyuNkoNsa+
8lsAnU3doOWeb86MSJ1EBwt8QRcls25MKTEgxnzKvN+utRHnjbT63+OK1YsiCQhp
moWj1indxbA9sIZy5PW/Js4C8fuTTBo0Te5e1s8ygUQoa/k9Kq4yaxkyPNoPhLPB
hNpJH/piWVkpkEcsuHjmhsBldakm36Vhzap1mqf9wbY9D/uxAvtkgK3CQayk39vj
DyMcAZySr5jdAoR1X+XX6yisfZN+FNdlx9bZJzPH5bDS5WebYEqDGRMhCsfyvWqG
QH+sS4lHbXJ4t5PwjxKeMrtOgLys4pdKwf0ftQJDCyOvnWNDJw9BncEm5hP0d0kU
vKAVgfO7HWBdOqfsS9p6JEUpAeV1OMl4X6nw12U1dOGz4RM718RkzK3ZHFD/MKTS
CGgyGoOZzJokbtC3J/hCsZqAixGzQPGtiOFwyVTkz3GlAEUN5E7dwzu/y3G8XnI2
VDlNbuEJzMwMKaDL7vZAzFXe+2mr5Nf9itsZkXJZj2LnH43mHJMEaL+C74kCMwQQ
AQoAHRYhBFe+kCpFXOMQhlEXsWg1lTBwyZKwBQJk2+11AAoJEGg1lTBwyZKwt7sP
/itlPYArMkP9USqYzudqm9D6s9wmXwpv872YCF8ALpT2yvkDbWU4YmTgfQfJyJ8S
YBv8nqsT9VvzYb5GGcz2BwfkqWKE2NTSZBoNOLN5gOJsnYpHw2ufPMFfhCWLh5HH
ADYz0d9cLoW+OFkjw1S5M2FqeyzyrVokv1NJQIyPDIM9tMAX+BtdhuZ8bGYGre7f
wp+BZIHW9q88xlpJevGGFBYgOLDT8GPr1wDOOT/jqePjr9MAlQqovY8c/rxO0H7I
D4XWNqWHDLP+UJJbuHfehJQ5nADN1qBJ9Vuoj/GQDslrnTUfzg9IVj9WEPXjFQ7L
g+qvVkUk76yw6YAGn/PrYxn8qkDlmpa4r5cwap3l7SgwyPQQkZGEGg9fYKXv/6s8
KLrQu+YLkRmjP0Y2FSP5/AhxN0VUNeZScUQV4SCF8T/jp9Q7kSDxEt312YzWglLv
4GTqX5v6jn9t6gQ8XrJqEc9DYXRKiu18kPKtMOEMcaTW1ruRS8QoQpC9tvM+NuVh
hQ72J8Akp6Jy5SsryEWuivQgCgPmOA6grpt7bcyWbx+3ePZgBDpKDfLIuPaFAiDz
TUJHouPC8eSjDTAsBrD8nbeoFNWl5bKzbS6+8MZ7LHu52t1eAnJJqJDH3nsSqgvO
f4hzUHiadAeHJAR2vir2CHxL9GXXbzizayNm6Bpx9qzdtB9JcmEgV2VpbnkgPGly
YS53ZWlueUBpbnRlbC5jb20+iQJUBBMBCAA+AhsDBQsJCAcCAiICBhUKCQgLAgQW
AgMBAh4HAheAFiEEHPcKCQqClSKS13lGTKO6v3iNcNgFAmTLLBoCGQEACgkQTKO6
v3iNcNhCWRAAvip56ly8mibcyFy5JiW8sbUtHSitZCUMkMWFS7+/O5oRGWgZ/6PR
7fgJQhkxonJUSJJbF/M9A+SyJfic4dMudGb68IPBnacENm6isaR/53eqwKj8UvXC
iUfEPj1tfhFhsCckTuMjVoH32ZzV8zaJNZenYGIUUgLypUjcVk5ZHGW+XfR+k7Io
PNFE5+P6Mctk0jsxUWOyexdyPmg0I7XU5M2TeIYaA4Qq25xmGcx5lpz8w/P44+Ne
AZuvMs3ac1g9XG4TDXKiwjCwzFI+myR6cofBnzExPLsyxxVGpUKTVjXDERtKPT1Q
zSJJmY+R26Z2/Nq07qimGv61QI/r1zGUhRDCEvKm+/03ktCxYY/SEj6MvRgSkixT
CbwFbwwA2Lupssk5n7OXr3uSxTw9Dtsw5ps9Qcr8Uc8jy8DABPlfyC80wyrY+Nbc
fkU61DwiIcdVBYN7DvVu21kGEoi8Gt/iaLrmc0L72cP6o0Mi113Xk3L95WWkXpD6
7fqgCMLSndi7sNRofoj/8UcSWGTN8Pe5B0nrpbp6UXdVeqNSK4dgCTQFIcxph/VZ
uOyYbDnLVx2I5FAsdaVIN0bdGbVuI1YI2kWEASqZNYwU589DyOdRIuJcbtyiN0Ib
lsvGl9MgtL0Z5b6/mFX4CmCr4kWriGi7Du6mIgLYPPh+XBRXIN+MTiOJAjMEEAEI
AB0WIQT4aCvhNMZ6EjMqLtB6+mG+o7hN/wUCZMwVmwAKCRB6+mG+o7hN/7FQEACd
RG/OfK/XD+AGGwU2aGbEI/3cOAyuu2TZiqPdNHyTqPAqlyuqr/qAj+b9wOgihcQ2
ywwJBt6jqWmafTJCQJProJv28Z4McC6bPm4QheGduUOPp6XQqAqVgRVxrUFiF4V1
254522mMYvJeeBC7t6unrnoPsKqk3IYP9Q6SE+WH75526nTGDIXqDtjXacc6ePkq
SncIY5eg7acRF+hCMB7X06u95AmB/PwwMW1xcUprMnTn0Tue0D+vymJqE7coY42/
cm9jdd3lZbehxuz8VHN7C2OOXp7JtdwTJ01JYaFNafwjqSR/X09MgA4eurIImid1
bf4tP4W7n5Y6yHmK07HEdp8twAdpY7UDV2Ca346Pn4fqnmZyo26SR6haPGObQ87o
AmBis+GhQ3XFOHZbXvTojquKd1Um8g+KL+6oiXwY6WlLUFP0vlJw8BIauMf60w3w
SVkYR2Ym4yjSdn7gLOGQCSNBJZ5uwhbb8iolJunOy4DW66rYuFruc9HOp3C7FJd0
IQkPaFhjWbgb1Rhp3yc2neWsKvjQJHjU49yHzMgWeLWD0ImVHn3VVTNnvC9aSuIG
4gJRZlzwCxiwGPmeHfbAWVJ+sblGo6fUzQXaUEtum+hzzEZCGQ+kaduxSF0EP+t7
DlrcwjXvYY/rRRO9mNv/xG6QZpO4qurXbdsU+9FdyYkCMwQTAQgAHRYhBOQwMteR
CTAldUer/WBoxRZpUzhKBQJkzCAMAAoJEGBoxRZpUzhKJYoP/R3ldsQ4eewUyTYr
v/BAweXFslvgwXrhMDToMdVCQcS7Z0vkswSyQ38k7PnpR0eqaYG9bcnQe7ZAUKvd
FsggNawRK3NZzYaAM8PsJi33y1Btu1QVrtXiA3+Nmjz2mZ1SQ+z8+vU1uIXeRoh9
9ggD9QRAvcwalIeYzbQtXArQ8t1uAzia+XJdfOLk1zKEopWailV6v3+l9v+env95
t83iAVx+zYL70Ig5zl7FBt+rxtDr2oeJIrCciCyXlDOmrnlwZ/aTKJ2vD3yPc5E1
AhVu/LaIbwa0EfGO7/w0mHgUpLjgfRnKT28XDRGRV2as/Io+0YTAnbOk0xapT51X
SZKbPSb98tcNwu1sRhrZHdRqmKce4m1yLQS0wNp/6oXAXMgP5vPpbu61vTpkYeVb
k3dwL/JCwRKC0qOZXWsgnZ5NUfI5wlVSXkugeQvUHsKAlAHZDJNscd6Js4qcZsCf
5fU25bocXlq80JIs+yBX5aspoSpdgXAM9bWOGNt+GJwsicwLQ20GdeQ/jvZqO2e5
qekdX9yeIECeQkr5JOJpucXvh92gbBc5/+UTzQb8chO908qbDTzHppFbwry6AAtU
UqBuAc7X64837yhEFvqIotzwzysqwTaCIe8gNICnuOsSIEJor8mEE9guj1UqhwsJ
3gA2S6e9yVtrtvW8QJhLzUJA/i31iQIzBBABCgAdFiEEV76QKkVc4xCGURexaDWV
MHDJkrAFAmTb7XAACgkQaDWVMHDJkrBtHQ//cX+BJyKYV93wgzCGz+qmyZ+27eAV
uXd1KR0VUXLjmfZLMRkYZ3WpdTLocq4U6ffxX1Iv0TNAAZmixD7hQ66GPVsTKZJc
SodeFRxHT5gOD5tgTvrem41zXmcOfUNjTaI48F7h8GLSp/RSp7lW1kxoc2EdpsmI
A//r2vaxjHFr6Fvv6Vnb5zBG1XUwgUwm17bnCh6KxoOmblmT/7I8ppiet6SXpdF3
1hAfN19TB65hntMA4XTVdr3MlOIWbcFVp3v7yvipVmvLK8sEREDAHzaIySzxAs6t
anV5gdx9ZtJ6inPiEhslFF2l8RlHrIUolx2kCPzlEDveFT0ekIEGnBckPQaaRmTl
eGXVSQNPIK4DOOT3VIaEh85sinN4rXPr7p161xX8TLMXSU9QAAdHtLOMCFybkW8/
BHmpx4h5Sj6Lbq+bAe9ZRbrK8gRidsu2gpOJDVeyYytAXQkxcgGoLMMSGf1Bppaf
UQfvKs+JSrn/mKlBS/B7jkDBc41NspTtJ9Gm5QKeASVKZQylHphNcOivx3h23YXe
OE1N/aBokxnt24VPk61GIrELQ8weDluEzjVPjkpZBRcCjb2PQhSSfGmKLKAhXi+4
MiupkPQEH+iDGLkJ0lI0Q28tix4Rb8XRhfn08Sx2sAutBy15HM0b3pQU7ww6D5Qo
vQ1MjDZqwrTn1ua0HElyYSBXZWlueSA8aXdlaW55QGdtYWlsLmNvbT6JAlEEEwEI
ADsWIQQc9woJCoKVIpLXeUZMo7q/eI1w2AUCZMsbnAIbAwULCQgHAgIiAgYVCgkI
CwIEFgIDAQIeBwIXgAAKCRBMo7q/eI1w2No1EAC7p0RD6J6tp8IOrb2opr8Ld17O
Q8NpA/U+MgAil4SLFByERN2ig9IVXBMOmR86KHB0hmKdJMrEhskq0xz9Vg18mwIi
ThTImqmXDQD3tzay9ay78vkcKLxes+XTjHbkJrnAfJyNp4fpgg62Od1440ag1tSo
LZu3FTXewpzyQeictltm3gC9pfH3Hd9ArUQ6vSZ3p2/c8kCGuoHbCl/p+bv/fvNg
Pe2XvmNjZmdeuJjNJkpakZwnfVQCTr9HTLkNn31fMScjoky4h0jZOYqLmDaBZoer
VLRT7kavgJRMm84/J9S7MY1NS63/0qzsU/RgcrpzqTX7ZIe1m4mNHNDU4Nve8T9p
e2J4fThZ73skKLIVqveTFcHm5nrlLNeyhLGvWev0hdbAnzufW5xdNemLFHVRvkGq
cE6QXujoYBPZ/0ky5fg9ZFWYJhX7/TtEvCZkuyB8jb9dfBPsXvCaRglrBHW6+wph
KjO4kUmsq6JpU/3YesrXlcZEQKNdtNCly2GMPw66M/iFvIcWBUmNNcb7LrPCWAb0
HIRrzaE2ijfKxlqoYa22xoFsUHTES0bgQdwMzMgje5hJhfpwp6E5MSpn4S0kTTrP
QqqlSYZY+oXw9HkUdpOhJOokVn631nNZFWVme6r7znORZXgSeuKWn2zFxrV5Mn9z
UrcuBFKB25LWeCaMCokCMwQQAQgAHRYhBPhoK+E0xnoSMyou0Hr6Yb6juE3/BQJk
zBWkAAoJEHr6Yb6juE3/6F4QAMjeVgeCB/uGnndgZEvw/RoOaQYsziHb/mwuNKvI
lRbc18uJMYsznXqjtts4PF9SoJs7gPRNDDt+7+gDCMsPMMxusK4Ze8VAKDmncwJV
bcCm3fjFR+Pn+sP4c4qxzEKBhZIOO2dGr1+MEYjVBKtokd3NMh0q2io5JgmJIBgj
wm5uBngD2mqJJ4gjcWU4jAO1tMLvYwKVpPMCdOQ1mGlbx34QcetEAw4VOau+gXgN
DFWXTlRTm1n2NrJNGaZZEnwdiPGPBNQzdacn/k20JQbRLtvvQCh8HuwBlsdQxW+8
ML+U6mFlodsbLLpV/6rFibxbZHBg4+K2D31adcFzy7+YIHnNGCS9VmRo1ILcbM4A
xvIoZwJPN150YEkfW6SVbOKRp2TcslBgV3K5QFDqjbI4DqIQ2oIoU0sI8Gh3TzMO
/4upIfRHBPQN6nQ9V2SI4Dt2rVe3hmnDZFYFJqoG4yb+Yt/6n3QIFQ9KRYf4DwiG
/Xg3dtssZkKb2WP01ZR6+QUfRdXnEdEi3i/36DITkORst5hXmiecI6kkroxhg+BU
5UpEfBwkHtO+YuOPUJN2tuhiVKy/9zoArdqoOjsKjJ9rNTIDa+HUA3PqeSiA8JZ0
5ENixyMTNIuBD9DSx6v9Bf7Za/fnj0IK0itbQwRVCA7aZsh2/h4yvDKurt+sSsim
MrtEiQIzBBABCgAdFiEEV76QKkVc4xCGURexaDWVMHDJkrAFAmTb7XYACgkQaDWV
MHDJkrBrdA//azSYyaT7z/er5m8gbB1odFKMXArdM1fqYSKK/ktdDoFZmaLcvD+E
b4pgVn57wXu0tOF4YI/W5H+m05csrpZMQwDVWHWyu/zuzCNer5jAKbO6GFOmxAig
zpBJs/cy4NXpRRL7LOVDpXjyKyK04bEVE0UCjE1QsaZ5oKseA7dlLfAD9FGm8qRC
IytVqppZYegkCNQHrF2DOVsg62AMZB+J6kYDoql5c+5hah3B+Q35AxV8aL8/Ldl7
IhEErmXWbaxDQ6xAuceuvdeJRx1Qcyk0XXnANbvwVbTvlkHvpY+u6qfcRC1eVDE6
DAXhKdpblt5hxdNe7E8RsRuRm/edd3sp5cW5V9+IlF7S58VnNIHUI9JlInThd3Zl
Pl2Yh6FgfL22gDuiizctCBQR5ilThVPJSPbQM+uZ7ZI+I3uuhMgp/KltPTaqKGN5
IshM8TXU4jXFhbUzzy3HUQ51KwAQv248/qSAPdtLjHFuuazRGAFC03iv2Gt8cJwE
YyUcp+eg1AxJ8qIQC6Di7NGrhG7mbjSi8IheJw5Ky7Mw9g4aOf+Tm/bA6CpoU0nx
0vFpRx8A184NqLwnsNH8k0R1Yrn9YvuYPNx0Ra/CVXzH2hCERBJ7Ygqe+xn3yl6Q
nkAg1NbpPgbTVEvWudr6h0ewUSpd7dTUowphWhN0xvWVeWmo2P8ZvMK5Ag0EZMsa
jQEQAOMujMPwsPGYCRWwmARJuhaYzaviOC/El39Grt/hlpvfBy1jJuj0rI7bjSxK
zS0ddv+CIaj1mZnqVCQ0hcDz9FFkmxlg9/VGel7f6VxlR7pZLSo2zzPIpazerQ9h
a5umOt2IyJvtBme/v9gSeeayqwfvcN/RW9Bf+x2QwE9juOeMpNuSVGbGns7jTfqS
/0hLKf6y17z5+T0mpLqH72sIeSnmx//vuypHi1ZSrYNrd9eIwbIh50ww0hMFMspl
bSNWSGJvttZcPdO8Jk3tbzroaEOVgjMxRORA14Vg67LsY5+a8BOLgSnK9Kxr7m+/
XNTuB9CkJpdJy33B2FjWGHqrRmRG7gYGKlfic5SggnxTEGGI8HtiDZ/V8gGXlgaW
qjuOqJ9iN5dxEGNj0dvzDR3sIgl5vS43bpB/NHhWFtZFKzaVMhBPF9jTE1rHpUC3
miTWMbsqr69QTfwzBPE9KG2lfaZqCsxuru/ciP0SAsu7qaB3FfzUhxfLmXOfk9nL
sLnE0KiWj8izvqzhhJB7bH0SyWxgCezW9++Fl0h0yWsOrvXhE6HzvQGeknaCsUl4
xmM0QbKXQ8GcgzeQWPQ6EX0eySeNMZXO19an2VPGZzr1m56UJY680mafaXDbbjAC
b02LixstFPrXJI3H55M+xj96MDHFhrEZTO6aCPeihMctjn27ABEBAAGJAjYEGAEI
ACAWIQQc9woJCoKVIpLXeUZMo7q/eI1w2AUCZMsajQIbDAAKCRBMo7q/eI1w2B92
D/9JNfBRHSJ1tae9X1QSSWJtldQxq4KwY9rt82gGpZhdODckHsIJHrdOXpaCp8dy
JnpJUl3J0QTdxaUFndoXsRoMiztGqqOHqM5WYS0lgth5HBz/mxc2lVmwjX7vi4p5
XrbzPIUr7I+BckFNqadLRD/r7lgJvHMF97gebTN4uO8fASTSfLR+JH9qcbxFe5zz
cdojcRc6q5vJAfDCaM8N1DAfKxqjJjYP2R93eluFHwrtLg4OM0EsojbCMnnQFDjG
HoD+AzFvYHzSCpVjoiCAlMMmskessy9QybYtqMz2QaIm92J0lXKdzGQ1n+iUzCc8
KEBimLbeUdADUrPr7itDQGCzYkr5Eqv6JcbAH84UZGkX6WO+ov71Um3gEwoDffnz
NdGch66Fwy0leAuG/L1SLzTih1acYFRh8D4FWlxJetS7VyLsrK9paLBGAh8bQKVZ
HrqzlqQVIyTxbDrAcHvGXGatOcMVqRiACMdeDinFM96XvjmgW9q3dnHVYeBQnW3h
LukThpjW26Uto2aQrUSVo0rOZOu5cDaJyREw4ZzooAh9JMM07kIDsOaBtzLqpjms
m/Bg7rKChCB/l/d2dxu8ovQujTDkvxtqNw0blEjrQ/RnQ8r/9FNLGZUoirZkH0/A
d0FSXWp5kiV0xqYMFhc9c10qKvCab+86ny/y7Dh6aECbA7g4BGTLGvgSCisGAQQB
l1UBBQEBB0BrrC+BbxBPN8u1X74dYwUXgdhx3GqWBVCVrT58UjJzIwMBCAeJAjYE
GAEIACAWIQQc9woJCoKVIpLXeUZMo7q/eI1w2AUCZMsa+AIbDAAKCRBMo7q/eI1w
2NZmEADCWspw8EEFsUI+GlF0+UlHt+ilW/zAXCtMQQBYYmGl/WF1LXGNGr+HCw9g
wk13LlAgLoroa+GE+sC8osxAX3/xAhlVBv07AQZnnGUDprmlLT2F99QsLa7zF6v+
S4vMJ2Vb2VhNpBZKc0aMRRR3zwonnERc2M/Tv/DH00ArIw/MxednC+moBvsvzG6k
w1Jp2CnDOQrjYxvzYO/KYAFTSKqD/HMpqB3ltKy+SpHEW8two0rQKVSGHhoeNj0F
alnaQ9w1rdBp9Y3v1odBAqO6XtYrRu+mha+z3QeBN1NNkZJPylhCjKzJ9ItWXlrW
wWuRCOlq+oL0BxDAXPS9d49a51K87azl8yTlwleY9DOPcWPSR+PKqHnZ4gpkrZeA
kbEjkJlWjrw7R40v7hDp4lhMX4fNKhstyV8Nb7PWufyv3CO23bfTMSf2+0p365xF
KO9wNVFkgyamEyEeG4vla/jkrfkHNZhgXA5YmBdtchmFYMZi/LLdYDgnk5tsE2mw
Lb8MjsY0tlhOrKhnOS6I62rsY9EHlNTB71aoaHLrfSUdoM0SrNMJrG/EJjY70u+M
cpMMiS+IEY3mz3Y80YZOjY5cKOamaTBElurgpdFVJ7wJNRcUhrdqbNkPf7aFP4kG
NJGz/Na3PW9kz8mhwShVGjkqoE/t5G0GEfl2fDyMnnmMvHJNwrgzBGTLGxIWCSsG
AQQB2kcPAQEHQB0fzj+D7zzZ0UTwIG4/Ka6OydlNJQ2GujeuX/QAy6+wiQKtBBgB
CAAgFiEEHPcKCQqClSKS13lGTKO6v3iNcNgFAmTLGxICGwIAgQkQTKO6v3iNcNh2
IAQZFgoAHRYhBKBf3G34bCaskRD5655u43tM3HUxBQJkyxsSAAoJEJ5u43tM3HUx
8N4A/RFpuK+fdsBjMIfxEBEGywMOXxRe+NIYOdg5T7aD9NMoAP9tAwThm+RN4Won
Gy5VDB43izzolUd1XxdypXMAbc99AxFID/9t37jH58Ys5KP4JeS0Bkb+Pp/y3/2I
Voej0hy/J00FjOOMNGXkgN7M0ZMIEoKvFDngTbza31JoTVyhU/YHHLRU8vAmgq3L
OMPuI9vzxJDp5iA9SrX4FXA2Qd2LFFDKxLTjqFKfzWsRLO4tkIhRP/cUDx7OnO7M
voSETFLq8+dDr0HcF7hWJPB7lqCsoeX5YJxg8fh+5UzUMc1Y/EYctD7zz9v8nbp6
yA3bqw55YoCH2hJ/rQX/46kB5c5wiAQb/Uw7XsbbMIjspYRIFNU0ucqh+mL2tmAT
4WZ0ngf0Umw2b3DqiZNGP9JOiyjELN10WyaYJSi9lIyTtYmmv8jH2ahUtCXumm2b
NzU3XOxUPZpBVTKIF32ZC6qwYi63/Rl2gl+GAiY7ovFrAxXk7xJoOD1fI28j6E7V
9SEv4EXA83T1t+24BoprxmgT1DRkLC3XGVxxrr25PdLCL/W+ugwvkYElNLtEg2eR
7p5y48gApZpnj7GieSNSAa6oDdao68ELazwqSEWmR2PHwrXbwcYfFPwYot7/+pA0
l4WjaGJdprZ20bEaR1R3b4tQpJZdT536i082ZHW+Mfz4pRkobznYxhCLZE1QbFhY
lWxOmL8mlQGQonAipRD8SOKmv2yBQzV2iYrDmvtP0l9DGs+Rmyx7mc77PmB3oc6X
Ky6307aK6iO0sg==
=Txlh
-----END PGP PUBLIC KEY BLOCK-----


----- End forwarded message -----
