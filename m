Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AC8199
	for <keys@linux.kernel.org>; Fri,  1 Sep 2023 00:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1693528547; x=1725064547;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=z83asgsSwy0nHW9KKk5pxwHh7pxW29pmqrHH72fVwdg=;
  b=TRWUm61o5jGX+fcT6Yrr2SvSKyqruR1TrmM11GdI8GhnR/yQPHNOR2wR
   bHeCZaI/rnNKgaiHP6EflP8CQD4AuTegtcefwUQWe2IHf0Uvf3xisDE35
   dkH6A+nsYbZRKfV5IXc65F1DZ72mQfsW0KIiq2XwqRJc5BbNPPV7Zfn6r
   bGIiKhHQ5ySydYeUaEdSa8VKm456184J02bK3Z/VR4UZ+n5OFEdyws/go
   c88/fZ02pRRCtuxRm/Fm45dhora4TaggSxJGueILyEtF5Ea9Wy1HHBIGs
   eQHymNemiaMZgv8n/o6O7hE3e77ZL/rsttTqdAZjkiPg2RgGaD/YjHWsw
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="379888342"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; 
   d="scan'208";a="379888342"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2023 17:35:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10819"; a="733351822"
X-IronPort-AV: E=Sophos;i="6.02,218,1688454000"; 
   d="scan'208";a="733351822"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384; 31 Aug 2023 17:35:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 17:35:43 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 31 Aug 2023 17:35:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 31 Aug 2023 17:35:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 31 Aug 2023 17:35:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mmEOgb76lkv0ZSdQPi83whrJ4hcE4Hh6gmC7viP7vyidbF0QnIPGgqEivqSMWwh2KPfodtClOlEdc9AxqP7EjTNX7BVd7H2sHwJrw980MmbrB+7nixxfDWE30eeTPxHwauCkElPPuTsb9o1ZATv3lS45PgyOFX3ays0y0G3XPUVfR7kN+24PZcbPAMum03dFnSqIPQ23tiF3kLTBhROt867ZAwmbAohDqbW8T68jmJuXjHD2nzxeK8+VLWkuWsL8wR4ugZ5ZvD6pqr+4VvFS9L7e7+VWnaZgCXJlDVG5McVXCEj+Z4Iu2g5tfGtLy4Fbnj5x5sDeTnza8BSnuJ7xGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Ove3BxOFxnS7gm7R+4Gb3ZdKhCwaswkYSbIwEHCigw=;
 b=l70ZObnkQ/KH1HPQgtCeRniZyoTm6NEUd2I2x7X97zbOO20disebWuyepLyOWJubock0wtyfdeYsSjD+/2BtlTu6oTPkZVNqXezYYTTvf+YZwiITfiIVFovYH/dRQ20/H883Gy2GhHDt55J/1QYRsP399+0wJJgxtFrgBg/POUjDTPSOXzzCPZKJ+UecXo4C+0feEXwERmN3OUBJmlW5TpYFx5suI+t0bAouC1UImjOErTOcJYOWLheNm0xX+fBbsJJXsJbZpeY6HeJ/juyZpHiuU1PdAg7gpy8kvBk+ngCymX43jutKEFnNFEQ2tIRwTB3zghMKZYx/KKyWz6KVdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by PH8PR11MB7000.namprd11.prod.outlook.com (2603:10b6:510:220::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.20; Fri, 1 Sep
 2023 00:35:40 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::6da5:f747:ba54:6938]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::6da5:f747:ba54:6938%6]) with mapi id 15.20.6745.020; Fri, 1 Sep 2023
 00:35:40 +0000
Date: Thu, 31 Aug 2023 17:35:37 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>, Ira Weiny
	<ira.weiny@intel.com>
CC: <keys@linux.kernel.org>
Subject: Re: [ira.weiny@intel.com: Ira Weiny key for kernel.org keyring]
Message-ID: <64f131d919432_1e4870294c6@iweiny-mobl.notmuch>
References: <ZPCyBX6IOOspaolN@iweiny-mobl>
 <20230831-frogs-guppy-artisan-ee7c20@meerkat>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230831-frogs-guppy-artisan-ee7c20@meerkat>
X-ClientProxiedBy: SJ0PR05CA0100.namprd05.prod.outlook.com
 (2603:10b6:a03:334::15) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|PH8PR11MB7000:EE_
X-MS-Office365-Filtering-Correlation-Id: 672c9a7a-3738-4303-2027-08dbaa835e24
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I5xnGFyJWtRGFFn4tR+r9STB2aZqRBpEFfTzGiIHzXeCWjelCE9ypU7kMGLTFihSIq2f/qGowjRGy2c6R46YG8I6heDoDtbyFCpBXKjpb/1CVaZaJ+gQPajXheoDmMXVTrlpvE+QqPnA2umqLHFpSrNNy7gRKQFz7+gu3vzC05U0AKukxGUCpb2ig9DCLfMPCAcMBQ4p8ZWmz812OiVR4knOHrxSW0lemChMcQX3VEMQLNqV1aQs4jZkZ6FawBQKg4tIVqNVoqQYcvT/J8wie7lcTUCs74cATWPdnkrwnd0gzsfWDx5LQeCd2LPabgtXfVI3n9DbXACYm+5hty/coWotMswR8wRTQVbQDIYrLCSaFjQwsk/KFv6Ra2kZMKdxU735sjCTxn4c+Atd4FsaQD+RlNMBJKMBw+sUobgmyEEoFQbF7MYIPV9dQKy8cj7OHWX1pNVnVUfgbOkzgzGXe0m3YHdeT2vcG0PYiHREePV2+g+xZbu2SsnDuLuOu5BVALnc97W4VUU4eC5XUAyVSVcHQXWwlCmlEczGKJ3UJXwitCl6NN1lP4m6p4Yoyvj1U6w3rtxGlUlwxU1IjPrABMuC8mDZyorIIm1YLRawphM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(39860400002)(136003)(396003)(366004)(451199024)(1800799009)(186009)(9686003)(8936002)(6512007)(86362001)(478600001)(110136005)(6506007)(66476007)(6486002)(316002)(41300700001)(66946007)(66556008)(5660300002)(6666004)(4326008)(8676002)(26005)(44832011)(558084003)(2906002)(82960400001)(38100700002)(220923002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cVyRgjYvuYyMK/+uJeCIbJXe7cJuGt9yHRT12fShUAeUQEMh+8yw41kL/7ln?=
 =?us-ascii?Q?CHCdIyY3FabMx3ur26S+YuCL1ejWl4Y6aLmGLaGpNAzSCMDjArhfdrLV0zD3?=
 =?us-ascii?Q?mxuqRP6k3iN6DHc7Cfy2zeLbzI6vnPrVtDV3uEHVHD7RauxBhL42hsukDguW?=
 =?us-ascii?Q?wmnyiJfeCBRDIZFw+rUvUqSvKXocwiQMjTo19SUfMjWARc7qIzi7B6qyTP/o?=
 =?us-ascii?Q?5+8HWeHH3vrz47Dc7T46Wpk/jLD0wYlDKj22e+bqJX1X7/qeVMqVI3aF3Xu/?=
 =?us-ascii?Q?XaOFXJ0d/fnj5Di5yfyjlTdXrw4C1uyQrEJiPaaRd1UmuCUVb377cyllUrcd?=
 =?us-ascii?Q?lDVclx+VUHF6kLweHzoUr2r7Vnyv42d2Cq43Dh+ppMdabWWfNzVAS4WbmSHG?=
 =?us-ascii?Q?MNZOe6eXcTL6f7p4OjIFDP8rKLbXkxRECZebkciYW6RoxGU6kQICZR3MUerp?=
 =?us-ascii?Q?U3w9VILz6TwPejSdJFUCzxm7xuKzrXoDlRkaBzn5sU9lVhxjhKd7c1jp93rU?=
 =?us-ascii?Q?0oD+GdED0hLzGoE+JMYzhB11WtcCfx0PnnC4GcdjvU+/yc1lAjlGkv0lOJ4/?=
 =?us-ascii?Q?RN8OOPf90eHXDb4vDNJ+TU+U8UB3RFzrkzboyyykTPbeIQkUFy0BbFg07EFz?=
 =?us-ascii?Q?J8YIEL6O2dTVrjy+fSdACdwfwvPnhau7nwaJ+YG7GV16dT86ohoAthzuTt4b?=
 =?us-ascii?Q?4rCeENVYkUXy2wpSvKNETRjhJmvIuIpHibgHftQX6/kfsQT/lfHoLd9psUAy?=
 =?us-ascii?Q?ZroI2YK7KLNtpHKGQvbOsgsz9CNCdVsVfcpjjqU73/OIcOQ8sOT7DttkB1sU?=
 =?us-ascii?Q?UEOhORJpAssSMXYidR00Gkg8vYJA82vxedMAY0qBEivF4qn4qozlUVluEY4m?=
 =?us-ascii?Q?biF1a06J8zeQYQj2TY27pDAQAPacqnl9J94euBmRkS44Cd2yq7vQlF78L0Gp?=
 =?us-ascii?Q?azB1F1ZhA0Xm9dYgBKo5zxoa5cqhisWLKpquSqCSIbhcOKECvBwzadeghjft?=
 =?us-ascii?Q?ibYrm2FmcIln43p4pD5WiXJ2LQlpnGK3uWvQt2hfJbrluE4jOsLko65Wz09+?=
 =?us-ascii?Q?PyknWpCLPozs01jnV1oPuN13NrT+7g+FN/k7uqTr6ggCwNMzzawqOrG5v4Km?=
 =?us-ascii?Q?wHnmulRk/aZ6mAU1Kw9Z0n84Lugmq3hEJFSx0q+gZk1y0uIcZ+WxD73rGcX5?=
 =?us-ascii?Q?kn2LUcKVv3Hv4CYWPL7SYF1BETiNna7laMvaWxvVNuZEb+V/qiQ7orCnNVbe?=
 =?us-ascii?Q?wZ+/khH5hPTaWjZo1xasDqTuHNnwnAdWEJbTnTNLlLLNP0EDoL15L3VSYgx9?=
 =?us-ascii?Q?vpDDYppByXUsUQSqAeOmC8k7t6uojC5Ls3TNk1pkm++M++wZeVxKBIzyX8zo?=
 =?us-ascii?Q?EV82rKq3u32YJQipQ0BIRgZAKSnQ5yiKd4VJ6smNapfvu4JBKo6iiwzc+bys?=
 =?us-ascii?Q?uiynMDsjbVUCXFONfM8T0F7xWl9YdhHAc/uS3yxjmwOsBWEkNFp5q74/csPl?=
 =?us-ascii?Q?SWD4+gmjdV/m119Pk/AfujJNOy5+R+P3dvkXui7HNDP1HCEcMbh2vTd16QUh?=
 =?us-ascii?Q?QzbrrCRYcUbyD22SRgjCy2zcYo63zB13v71tsqoU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 672c9a7a-3738-4303-2027-08dbaa835e24
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2023 00:35:40.1155
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qnAPXhEc3jZEnfUPh+L814JZY9wpzHjrYLWmhf6J8l6Db1ExgDTDyMhxvkpHFGZsgF7SzzEzXOMo+Z+mrZQeVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7000
X-OriginatorOrg: intel.com

Konstantin Ryabitsev wrote:
> On Thu, Aug 31, 2023 at 08:30:13AM -0700, Ira Weiny wrote:
> > Please add my key to the kernel.org keyring.
> 
> Added, thanks.
> 
> -K

Thank you!
Ira
