Received: from AM0PR02CU008.outbound.protection.outlook.com (mail-westeuropeazon11023093.outbound.protection.outlook.com [52.101.72.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A22792222DD
	for <keys@linux.kernel.org>; Mon, 11 Aug 2025 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.72.93
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754918308; cv=fail; b=Ux8bHYCDaIY+rEoRzEMz8QUOIG3lrzQGT2QbfDApQbRDk81hegxqvVDew9IYMpqELLRCksWZkxlO5dJ8WsPHV7pTXUwc0aXAPeocWCwL1qDMImbQe6GoaLCnglyS0WXbAOBdgN42DWFZauIHILMv9lwL3AUY+ndN82qNK1QPjzE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754918308; c=relaxed/simple;
	bh=WJHTx/l1ChRkHMxAJzawWK11hJNl3n3KXKTyzSQn4mY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=bryC/6fzbbeftJqtcATgC4jzKD2ofFHGD7PG7nQKS0eV+vEXOa1x7iIKvu1A4vKIHfuAQhs19NtmGCFo1vgP/gW2Hr6f74qzSrIF4wI8fB2ls/YrfJnXbG9gT7PsJ5UIRaHGXoNy1erFwLgy3A7FDp5FciYm0nLsbLcCSr8XJcs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dune.hu; spf=pass smtp.mailfrom=dune.hu; dkim=pass (1024-bit key) header.d=tocotech.onmicrosoft.com header.i=@tocotech.onmicrosoft.com header.b=cGkLruj0; arc=fail smtp.client-ip=52.101.72.93
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dune.hu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dune.hu
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=tocotech.onmicrosoft.com header.i=@tocotech.onmicrosoft.com header.b="cGkLruj0"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XctHs2udYYNQZ1i9tPHrsBlReRViKM5LHmEDDxanqXg9VtPOHSKRq3X6hnQEi9F2i1D+wh/7L5ixiqVXUjl05JzUw85wRaKHv9JZ5g55wkrvFY/691zbfGM70KAiIgwgxHt3YKyaX/2ktfSL8SV8CnhmzLDKIiJEHBFUekIYb9mLT+uF1ldYQsceJRRpW3rb+VeWaVcDSCGFQvjl5OhLuiDHKfPGbEJkPhnByqtFZkZH3Ye/Trw16vVAzXihtvVGV7RuP9Hag1uwbhQi/9w0G7vDDOEPJucI+WfDL5+qzFatI6feYqhd0l+XrdMKxcYsrGjScYzDGREeyEFa17EVcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WJHTx/l1ChRkHMxAJzawWK11hJNl3n3KXKTyzSQn4mY=;
 b=itHqXaWr1bohE7eTtlQhbUVM3/lF8WmG9SnKxZsRZ07633zejtoSK/r2+/cqyc8mcaH+9jZ5ExeqgeNfSgI7XMj4HPPEo03IxL+GM9KA4hOlsA68lQHIcSzivG6i41/lGtFC2q79BOyJWNi3tBYrGyf2nKj9LnUESeX/aF29ubahqmHGnKb1mlYTg5Pu67fUgBdhg+8i6EZ72ks6o8H5+L9FnJCBqHqQXuJRkzzpatBWyYXR1S0iZF1RWVb3owQcC8rZ80OPDkK3W6PRvXCC0P+hhjrCcTFALTBkjPkGykzfEPCtyhJjABnEh3PZshCvuR++QhiSKCEtAbqLW0n1/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dune.hu; dmarc=pass action=none header.from=dune.hu; dkim=pass
 header.d=dune.hu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tocotech.onmicrosoft.com; s=selector2-tocotech-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WJHTx/l1ChRkHMxAJzawWK11hJNl3n3KXKTyzSQn4mY=;
 b=cGkLruj0lvtYljvahJpZfAsHt352F+iDctVhCBu5AutShZLEiLs7herC3HslUnm8XENHMDYY0fI1iWugEYTZcU7F9mZRHWpRAzy30cGyxky6lzIdhk/SqpM2RZPMwJ2E8jtkxhvFGAkm4dHD6rHQexD0NBS2kYZ0rsp753HjbF8=
Received: from VI1PR02MB6254.eurprd02.prod.outlook.com (2603:10a6:800:199::18)
 by AS8PR02MB6904.eurprd02.prod.outlook.com (2603:10a6:20b:2b7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Mon, 11 Aug
 2025 13:18:20 +0000
Received: from VI1PR02MB6254.eurprd02.prod.outlook.com
 ([fe80::50d6:5744:45aa:a28d]) by VI1PR02MB6254.eurprd02.prod.outlook.com
 ([fe80::50d6:5744:45aa:a28d%7]) with mapi id 15.20.9009.017; Mon, 11 Aug 2025
 13:18:19 +0000
From: Imre Kaloz <kaloz@dune.hu>
To: =?iso-8859-1?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@baylibre.com>, Joel
 Granados <joel.granados@kernel.org>
CC: Joel Granados <j.granados@samsung.com>, "keys@linux.kernel.org"
	<keys@linux.kernel.org>, Kieran Bingham <kieranbingham@gmail.com>, Kieran
 Bingham <kieran@bingham.xyz>, Imre Kaloz <kaloz@openwrt.org>, Eric Dumazet
	<edumazet@google.com>, Eric Dumazet <eric.dumazet@gmail.com>, Eric Dumazet
	<edumazet@kernel.org>, Pravin B Shelar <pshelar@nicira.com>, Allison
 Henderson <allison.henderson@oracle.com>, Joel Granados
	<joel.granados@joelgranados.com>, Harald Hoyer <harald@hoyer.xyz>, Harald
 Hoyer <harald@harald-hoyer.de>, Harald Hoyer <harald@redhat.com>, Bothersome
 Borer <bothersome-borer@kernel.org>, Confounding Cockroach
	<confounding-cockroach@kernel.org>, Frank Rowand <key_111017@frowand.com>,
	Frank Rowand <frowand@gmail.com>, Frank Rowand <frank.rowand@sonymobile.com>,
	Frank Rowand <frowand.list@gmail.com>, Frank Rowand <frank@frowand.com>,
	Jacek Anaszewski <jacek.anaszewski@gmail.com>, Aggravating Aphid
	<aggravating-aphid@kernel.org>
Subject: Re: [PATCH 0/7] Remove expired keys, 2024 edition
Thread-Topic: [PATCH 0/7] Remove expired keys, 2024 edition
Thread-Index: AQHcBd7g+PabeunfT0+cBORUNizmsrRURBqAgABHY4CAAM9+AIAAD4IAgAgKZwU=
Date: Mon, 11 Aug 2025 13:18:19 +0000
Message-ID:
 <VI1PR02MB6254D36C09E16074E34AD484A028A@VI1PR02MB6254.eurprd02.prod.outlook.com>
References:
 <CGME20250805075932eucas1p17f15688e91b34f617fef8c2316d92a80@eucas1p1.samsung.com>
 <cover.1754379198.git.u.kleine-koenig@baylibre.com>
 <mx4t2fyuijj2einu4eibez4tjnrxpdo7ofutb7hh7ddmi7636i@gowa3on2bvgd>
 <hd2ahm4vhilzz3yuus63v3cbpf7zgxrl6uwtarjyjt72yxogt6@h6ytbjcygbev>
 <t4dynynvvtujdi2jz7jo4cyo4z6z5cxqh5swsdn7lmsa3fyq7n@czej5r32ngrl>
 <inbgo6pg27fn5r26664ygcs23m5ok34f7aso7gghsgqm7mx327@dmttrpuq2rnn>
In-Reply-To: <inbgo6pg27fn5r26664ygcs23m5ok34f7aso7gghsgqm7mx327@dmttrpuq2rnn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
msip_labels:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=dune.hu;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: VI1PR02MB6254:EE_|AS8PR02MB6904:EE_
x-ms-office365-filtering-correlation-id: bcaeab15-4159-4980-e070-08ddd8d98a4a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|366016|1800799024|376014|7416014|7055299006|38070700018;
x-microsoft-antispam-message-info:
 =?iso-8859-1?Q?/GBsrUj0lmYUUkcWLmBvEuUvCpDsRthqTpsDE4YmfkUtRZssKkttszFGaf?=
 =?iso-8859-1?Q?tSWABNRAYfsi348FJGatP9rlbh4Naui/Khup/tOuZcvyDrIgZBivp9wh3o?=
 =?iso-8859-1?Q?aYqMcLMNqtctY9blXC+3hrVtNk1BU+4uhzcwflGauKsqHmUAlb30N78LAE?=
 =?iso-8859-1?Q?ekJVaa1o9gSHV4XpEX9eVt6MrPrq4y04V7CqbIMm5TxupDtx7+XO7aiZyX?=
 =?iso-8859-1?Q?zWKE8LY4RZjU5nJh8Kfzxu9HvdokT3hkqlpwgQVY1w76+rfPOGcVxP15r0?=
 =?iso-8859-1?Q?C8n5k0Yna9ee7HgceeNh35gQPYCYe2+2nir1oGB3UpQUXVl3ZffdmjJOqp?=
 =?iso-8859-1?Q?hVQr59u4KTlja9I7yPSP689fBYKfsXTobhFNIBn+aNN/1W/NcrWmUJzf/f?=
 =?iso-8859-1?Q?7a6jS4JI9lxTDE48lmgdZMAT60S1RkxQ/z7iO9heWLa9byvUJK/MXdZwCo?=
 =?iso-8859-1?Q?9Ok1T0qp5uXgDtDnM9zjHL0xgCYNkxfn99jGasX0MsdaEyPVxfeRTZtst2?=
 =?iso-8859-1?Q?X6jeM5ZANleykaBIva0zZb6mBcNgfKI4WvR5EMFsldQ4cit/qic1x+vTJh?=
 =?iso-8859-1?Q?13MkCrbNVUJx8UmWG5V07nED0MjAVKIiHu6XZUFA6gIoKm6K0Ps8e2Igmf?=
 =?iso-8859-1?Q?wMCf8JmUu3/WR2khOp4ESc210NK0+zro/3jGhsKnDOj9DRyFyH7gKr0/YH?=
 =?iso-8859-1?Q?d1WmJ7XGRTFTuHrOwKSWCky8X9JOsEHZ82cYOTJs4jgV7GgBxOjcDUWy1X?=
 =?iso-8859-1?Q?LqhftEboCOx5lXjOOoJCfgAYBq2AYB3PVeDyahDeZvYFp1sQdl9DNyfmEW?=
 =?iso-8859-1?Q?BJzj+rs3pera0ULW9ojcTWH0UE+qZNjUuInTgTiLHId5r9FqkAcI+sw6Q8?=
 =?iso-8859-1?Q?bkqOh1s+/a44VWyGQbdEJmaCk1ldEMyXbnqLOVvKhHWnj9e6DYw79h7FWU?=
 =?iso-8859-1?Q?8CzPF4Q5rb99QrHk1ldk8ro4ZDMkJlcjwh8tFbVfV0Rolbl4jS0F+NA+Jv?=
 =?iso-8859-1?Q?aI9gojwhVt4JEJb7hTMouWl07lQGMMgXBpFmRYXaSolVBNdgDLScRxxm4R?=
 =?iso-8859-1?Q?9GDidIHq/6EdE0yHUwbwfJv6JnpJN8lC/V2wWjSaZCGE3quOz6qiRCAbqY?=
 =?iso-8859-1?Q?yoJJPGtgCanF+QckTlsxBfbQGoJO4wbgTb4nBtpT+G2U3mg0U5RL4+ISnp?=
 =?iso-8859-1?Q?T8fbyPNsdFOnQpsNcswFsLUGqfFp9WSklW+/Vrcrf9qG+lRBYIMQapGSBs?=
 =?iso-8859-1?Q?Rt1ZexVwDmbP2CEBmzBwe/+WU55Ef46WRu9wxheappouRPv/TdACVOTQyR?=
 =?iso-8859-1?Q?d576m6Fyn/3m/ByRuxNFIcbitJgo5WWuLvy9+ePWnFTTw2h7hFcZ4EsgGB?=
 =?iso-8859-1?Q?R8TdpNW3YhWyUpCqnKQm6XznjDkK3mWXpR1a5OMgiTDFQegA+OX+nzLS3Y?=
 =?iso-8859-1?Q?aKOaMfZVY8xCwWYz+U+TA3u/mSuRAmVLopGW0eP8qnVvh/yoHesf8loUMf?=
 =?iso-8859-1?Q?hT8BzIOxOk8mpDTJbj/8hK8IF/h1WDaDkIYW68syjzkeqHFKKe4W7siVVK?=
 =?iso-8859-1?Q?bWBjuxjiddeYAhriZKD6jmTOAJVa?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR02MB6254.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7055299006)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?iso-8859-1?Q?mVOvM2fC8FpqKQZPYl4WiM6SK1+WeaaNlkqBFyBs+7YW8KegZXLWyeGpkN?=
 =?iso-8859-1?Q?V79D3DjWLABCCihyIK+cQObgg0PO9AkM03BdTjQC2YXdjumIWUnkKDDxXH?=
 =?iso-8859-1?Q?Poamgcgc6cWPETOKzZDENKjLQUjjRwW8K1R8eu5135Tit89xSuFnHCdJGR?=
 =?iso-8859-1?Q?fPhMtBMj/Yhl+yxO6LAUfKYHEtpPfXdbOTXDBuVXcTelk/AnvwdFBJulUM?=
 =?iso-8859-1?Q?Bt1iPSktlH7WWBaupp+/CMVf3gFFmrrdvl3usWUm7Twk0TjMrsKEMWsmmp?=
 =?iso-8859-1?Q?kJM1dGZqWYy6zA9rXyqZ57lVip2C4D61B618V7C7ty/cRRj7DE5/FCSQeb?=
 =?iso-8859-1?Q?U17mFh6rDqRRDBnE0Fb+o/uHzMBS9IMLpgw14jSgoPCb7WUc95znKDVV/8?=
 =?iso-8859-1?Q?I4QjAsjcbbooDErefzjhkY5fV4d6ihV/jz+egRpXrTWBAm2r9NbD0Z4wYw?=
 =?iso-8859-1?Q?tUx/mEleBG/XOT5eDr19rlpCJBmgIdnagvzIACDgbBtkbpYpQJ3yxDp+eK?=
 =?iso-8859-1?Q?fIfX3qbCICvq3NiNve2MojHna/fxdcXeEDx0mEdaaHJnGq0ehXFE06+lf5?=
 =?iso-8859-1?Q?HaO81WhpbE+g7Hk1w43bSM9ENyb+YKnHsNto9ohaQUlr3ZiX8FLFa4L1oN?=
 =?iso-8859-1?Q?PNbgIBPjqFkczzdGHgMFQCm1MnvIoGJxEtcOPjJC2stG+Gxk3A1rK3r6hN?=
 =?iso-8859-1?Q?FT879gE+K2mEOZBULnSQL5QmXlvlnGvTofP2AxzQCq46qOlX5/P7ghMEuD?=
 =?iso-8859-1?Q?Ba4/cKyZ9uK0v+l18lFWuvXsLBlBzUhjF2DpaIm2An9SwfnJ8qpxlAeQhG?=
 =?iso-8859-1?Q?whBoB9J3EYYWIU6hZDRBA5ZYP1vJrO3SMD7uFNAFx7i/At62mNjyef38Xz?=
 =?iso-8859-1?Q?V6t5gqXdI4JlqsFbvuPOh5H054oSbNzgQ+NEinV+YVYy4PBWL0xoUAmdvE?=
 =?iso-8859-1?Q?5g+GYKvVx96+2wgS4iyecyqCKs6n33oTiA37Ww0DTFCpZ3IiRQSisEvb7F?=
 =?iso-8859-1?Q?6NlWsofs1pBQTyD0Vxu9+22nDsE/OYDmAfnBaqubJF+0i83lzI0bNwPTVf?=
 =?iso-8859-1?Q?icpIroCErRrjwHyVI1hGTK1AleYyzXHyqBNXW/wNEyuBVgahQYb1bBpqy+?=
 =?iso-8859-1?Q?83uSpWh2pbTz1iQlflJJziPTkM1VpUGG+b/itNvvtaBbD0x+7YO+0f+ZMF?=
 =?iso-8859-1?Q?z5dQ+4CKtBJ+I2WPPdaa981EZyUAy5iGb52I7zfVzlP5d2I58vFGf25udn?=
 =?iso-8859-1?Q?Cn8x13zEOgFljdmK6QPvUvUBdNNNLBachjxbEDmrvOSSThGIvu/qAHIkB6?=
 =?iso-8859-1?Q?phuWva2eoH3UQoCPvbkLB4T84LfRV/miKAqz6+Lf7OpAxYBP9/65ibksP0?=
 =?iso-8859-1?Q?cSrhtACPYMtL0X60SOgz9L8Zy0oaqhLxaYtL9RM17vRMuKqpXH5I02Pslm?=
 =?iso-8859-1?Q?xoiEhEUl87fAI2FAWx5a1vh/SKNweSp6lzwOm/+UqZV8DpEEsTbapkYH8y?=
 =?iso-8859-1?Q?UjSOAnHAD9F7KWn5Od/KuVdTFx14TSOU/DbyffwPJs0SsqkZ22pXkHavNr?=
 =?iso-8859-1?Q?eCGN2OkjjSPSeL0FrqFLXLypu2/Ak2YodiRYcVtxXrI5k6DzcRs/NFeuIt?=
 =?iso-8859-1?Q?cevrslmC5yYTY=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: dune.hu
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR02MB6254.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcaeab15-4159-4980-e070-08ddd8d98a4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2025 13:18:19.5934
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: df4f60ee-c008-4d33-8332-ae697a4d3c3f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8UGs884SUtuvtV+QP2sNqgaTb/QxoxohBbLcsWxXRVFCSTMwhk/v3G4/0i9ptx0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR02MB6904

Hello Uwe et al,=0A=
=0A=
On Tue, Aug 06, 2025 at 12:16, Uwe Kleine-K=F6nig wrote:=0A=
=0A=
> I'm using these two (keys.openpgp.org via hkps, but that doesn't matter=
=0A=
> much). the openpgp keyserver has the disadvantage (advantage? feature?)=
=0A=
> to not distribute 3rd party signatures unless you do=0A=
> https://datatracker.ietf.org/doc/draft-dkg-openpgp-1pa3pc/.=0A=
=0A=
Thank you for reminding me to dig out my private key from the old box.=0A=
=0A=
I've pushed out the updated my keys :)=0A=
=0A=
=0A=
Best,=0A=
Imre=
