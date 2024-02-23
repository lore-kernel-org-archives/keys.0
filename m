Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FA712D758
	for <keys@linux.kernel.org>; Fri, 23 Feb 2024 17:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708709523; cv=fail; b=XFnUGNRjGKXCKrJ6HF3mnsIy1yCPUVyqqyoHJQj04L/l+zMx6SMn3h7fNimZ0YdS7WOEE2F3swPG/v8jNYzgJHA8H1jij/qMMsUqrUT9vQ2evtzFTu9q6zEtnA1lFqAPXerq13f8VieO9MgwVKO582mwD65vOcua8qrYY7adSko=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708709523; c=relaxed/simple;
	bh=aIanMXQ3EAVKVziiWkOtGmnU9BSY+JSeuvSdRAkoF+0=;
	h=From:To:Subject:Date:Message-ID:Content-Type:MIME-Version; b=gx8y3ISA3uzDvPu7l9mNx6Lx5avvGmzCQVEIcJU0KOcvst4oMD5RLA8PYbI//LynvTW0vbX9D6swaTPZGBdWhZf03WKXNPYV5lvXq+RH+BfHctHmpDExIIDzPGCptaoFq2ftssEIJVIu0aX0hA2ZQ8CVXW8HyWyIKxNq4D0l/VU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=qti.qualcomm.com; spf=pass smtp.mailfrom=qti.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CB7Ei+w7; arc=fail smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=qti.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=qti.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CB7Ei+w7"
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41NDdMe6015019
	for <keys@linux.kernel.org>; Fri, 23 Feb 2024 17:32:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	from:to:subject:date:message-id:content-type:mime-version; s=
	qcppdkim1; bh=fDPjvj0zR3x+Oi9JvXqBB4IkqTbWfODgCgaJi83NKWs=; b=CB
	7Ei+w7JJCT0WkDtAGlWE2dpGPg9dA3IXSp8Mk3avDTtXHntrsoZkKQInSmfDWfpr
	3uIiXJqYHpvsp10mf0oSaVFAE+PXZAWXrtuMs0N67s1pmS7AJKtib1LNLmYy7KnC
	jmFE/TC+ln8Xu4e2f0BlGZh1wXzLiEqV2JPYnkXpFWftKLURNAwQevnB0dGzE07e
	s1rbheguj26s4+aP8Da12XQkTAyLnYgJwC560XKfmp4NP35aXEyCkPN9xmkXfPEF
	LUXtwEHYXyRUEmncawactyHFPdrO+SRrAkF4nOhz6WM0be4yTWW15GPqXbl5lfxV
	vwb+8qRHVarGUFUU0pcA==
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2040.outbound.protection.outlook.com [104.47.74.40])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3we3233u6j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <keys@linux.kernel.org>; Fri, 23 Feb 2024 17:31:59 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hD89NWRhYnpFwYvy0iF9yN7brfriBcM66EUcp6KFbHyXMn0yTZe5UvbixGdaZq0kr3dPSAn9IFXp+OghoiZQ7nFpjkQpXYVrsEUy4566WgYoyNRpYLTZml8UJZWl8tQFipYFww2o3BFQdfbzwbjBO/mRHiwpPZWxHEBLdcHcMP+n94vhpwwAiZD16e88CKmOvrc/h2m8ZYl9mwT69LVxXhWaSIVE7Gshr3k5DgBZUNo7eqRc13OQQFHCZJ0nOApL277gk56qvX+GDMG6f4bOUytTgG285PSApwO/F2CiaVLHJcxPaVpGyFIkJoSPjrRlImWI8qPQkUpKkiKOeHaJ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fDPjvj0zR3x+Oi9JvXqBB4IkqTbWfODgCgaJi83NKWs=;
 b=KNRDdlNl5fZfdxvHRA6rzgBVJIJx/IqFmV0UaGzt9Ln3mBYIZMQJQsWT5RmWVby2XoxylG+Fah099HjYQmJlo+04HUQrGN37Xhd3tT62ZpKoVp8YGHbx40BcY49clwLRKgDxqsl3O06EvFP8USH39FqRL4Eldbp0WmU/jUYXb9xv85PC2bGmE7XiqiqXl92wvTEvwsdyKPepjoCYcrRL96AUG/5RqNt+VVSWPtQ4rrRH9jsT89dxnuJNQFze+VwqGL+FYjHpaWyHwtpnP5XvOh2ok1nATQT5egmw6zBN+DtmeTbpIpRMW6teYkQ+WlcFPzF7Ntpktl9c7fEJU4DMKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=qti.qualcomm.com; dmarc=pass action=none
 header.from=qti.qualcomm.com; dkim=pass header.d=qti.qualcomm.com; arc=none
Received: from BY5PR02MB6994.namprd02.prod.outlook.com (2603:10b6:a03:236::16)
 by SJ0PR02MB7599.namprd02.prod.outlook.com (2603:10b6:a03:32e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.22; Fri, 23 Feb
 2024 17:31:56 +0000
Received: from BY5PR02MB6994.namprd02.prod.outlook.com
 ([fe80::436d:5795:b356:a2a3]) by BY5PR02MB6994.namprd02.prod.outlook.com
 ([fe80::436d:5795:b356:a2a3%5]) with mapi id 15.20.7292.036; Fri, 23 Feb 2024
 17:31:56 +0000
From: Jeff Johnson <jjohnson@qti.qualcomm.com>
To: "keys@linux.kernel.org" <keys@linux.kernel.org>
Subject: Updated key for jjohnson@kernel.org
Thread-Topic: Updated key for jjohnson@kernel.org
Thread-Index: AdpmfegFthOY5A7iQuyYs7XtEuYniQ==
Date: Fri, 23 Feb 2024 17:31:56 +0000
Message-ID: 
 <BY5PR02MB6994E096EEC3E43B4BE903DDE9552@BY5PR02MB6994.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BY5PR02MB6994:EE_|SJ0PR02MB7599:EE_
x-ms-office365-filtering-correlation-id: d333dce9-acf8-4b5f-6c17-08dc3495551d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 hmAgk+lXltPzKl2PzWK3ZhrVz81K6IMf7rvzmOHlAxRxLXv1qqmv3oKgnwPZbYuYEa/Cs8BoRNW3ecEqLEKaORvntvRqxoBOZHra2tPxUM4FoLxMwgVz3L9nPPFCTa/C8FmGgsZAq/RBsySXZKDz8mU/MKiG/QEX8HQ+osLLEID8dsEaTaYxP8Ns5ByvorO/7goG139MevMD36doJKnAcFOxxSBm/HyNg8s8KAV/x10xymRDXg9TpawzVgDaDBXBv++JmnlY48qZ0VQ5QCJ5wC8a4y1QfxXU8x2ko7y5a2i0hGtJ1PKZpQq0DpFuAEf4NFzaNd24h0Yrcgw+2B0VRHamnniCfoIVQtg3x6vZvP+RbTJaarhmNo9iQo2WBr9vXeTSgygo1hnEukWUYZqBS4Q/yDGWwF0SScKDIjm/VnSFUHWE7Po3joLGD+II92z5CR7JZUljKDMno+K27ySuc1jMb2oDzRswGoWBmddnIrOkseMVGIYt886zGHRUZuZIGoP0Yp5zu7yzmyNbG1JlqfmqgKcVMNjpEY0dqizuZwoO363a7gUCjoaHEFDLDgBUxYjCeKRpU8wFhDKPC0Ri+nshYqo51s49l/+ufKuhctebfNitmHNZnEyEdct7Zinz
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR02MB6994.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?ZINJeQusueFEcFjoHZ1muU6RaAjN3j164oNmIq+nsbDj5G2pZf8XDqCfDq1v?=
 =?us-ascii?Q?ymE4h56p9wGvNKHgBfG5mXbZdawGsHjwUwPxvtSIpPejQufjQn+3IwBNJNVF?=
 =?us-ascii?Q?2AZcm3SQEmdU+ugsajUWzssMDrELNnpwiZYQCfSw0Sem43dDKo87S1NkWk83?=
 =?us-ascii?Q?ZN16X58QAe89dst1CFK2E6tqVhQKvzfevaeEWc+bFIBoe0kWblzxnEjIvwtl?=
 =?us-ascii?Q?zS8GDRGWJimgrkv5g70kOKM2GtDrNB3LS4G89qs9UvWiryvFBe5Kl3S7/FDb?=
 =?us-ascii?Q?V5TAk+cljkL27/mjmAnOph5Q5M+9HmfnBa/jeMIpCKUnRfGvcTqOdtk7xoAZ?=
 =?us-ascii?Q?UJnd0E1mkAZQ/e1HStwn0CwbQcsjyIPd30knVfDHavsPflsze9zbb6d9BaQU?=
 =?us-ascii?Q?sqB1Iaz9Sl+51ZA4PDrzz9clDnxBMxd89xGJFwVtVx3rJrkm0Rknn6RwLqD9?=
 =?us-ascii?Q?QmV7BiWmo/20tSBR7FQUgbFuobrE/u5JOQCY7K5b5L7qwD/OvfawW6iVnWYk?=
 =?us-ascii?Q?KFFltMa1wM7n1Zsf4a4VUq5g/e0mY1cFibVutlD71iehOshKb1TULbecwjE9?=
 =?us-ascii?Q?C5a30qGGPPWAN2l04k7DAilIDVe9W2avYbUesg2qwZReyL+rIyBsNfJiWj8d?=
 =?us-ascii?Q?CQyH4I4br12kvMaSm0bQP4dA2u2h/SgQVUPHsiSM0viNf3a8Kwqp9WfLP5SO?=
 =?us-ascii?Q?yvUE6zxPfJutxy5ZoBlZa14+2eEO7wmk4Hky3v5D2YCJ2S7x4VwGGiPiATc8?=
 =?us-ascii?Q?6KAnQ65gY2jfNZppYqEQ6M9Wxs99HF+HEvc68xnyjIG8Q3qbFrfJXnelq1WH?=
 =?us-ascii?Q?nyFbUkqTIZYfoeymhu2dMXGsq3u/xycEC/Eg/jA8YNaF/gX/WrfGJR7FrO7J?=
 =?us-ascii?Q?y6DQ0s4wD6q9AvEjkkDUIFSgDG51qonyKcugawmjSrHnHWt0FXnbrAIK9qDv?=
 =?us-ascii?Q?BJRb5t/49J6G6vEKYE6GPQt+0t8a0i76ydc50nDcj8kj3gTPPl2NrAAkDyy4?=
 =?us-ascii?Q?2Q/nTPYAHrQzDgOpRA9qcHuJ8ldTB+f8GZ2HsTh5iaHjJBH2K0yXo9vRF9+m?=
 =?us-ascii?Q?LZbl/O7HwY6ZobB9WVFYyJI/JO+1pmtjpwBZB4BwkC2uWuP7O1Yg8w+TzA43?=
 =?us-ascii?Q?TJFxb5haLdVfwB//YpC4l2BFuckdjq4fFSlX3w1UVkSm9Fh/N6R4HbeVovkk?=
 =?us-ascii?Q?bpib5YGr9vek3ckn17I1wh6IFqG0dpGGXWKWrWGc+ZMnY9C+yyNYEc2mjPXU?=
 =?us-ascii?Q?yCOaf3EWnhNwMA5yUliVtQdvWaehcvhh4SWpxMcVqCd2T2Jr49xHs8q+Dt80?=
 =?us-ascii?Q?ZmJDlYgEyu96/AkATStWDA3drlFGXn4crYA6MYfA0H5vDUA9OH36ypi8pNzr?=
 =?us-ascii?Q?FO7jx7X+OqeQgSiv5otlxnWqfLEZPU0Ff+K/EEMXTZ0YC5yDDkRpBZFJYN+N?=
 =?us-ascii?Q?s0JtOnX21uqaQb+vl+CuUFvN+lFak0iUGR9uk5ktXEsTFGAoJjvW0UpYTftS?=
 =?us-ascii?Q?l24zE9bLouAwCtkLnjx1XZQnY1V4pP0hvQk5SZ+ay61Zs1/NR1gvXxH7IiqU?=
 =?us-ascii?Q?2fKuWlVlDLgqmEsnJFj2b3kF/233nlW74Av/ld0E?=
Content-Type: multipart/mixed;
	boundary="_004_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_"
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	jt/OePOcfiC29z6GkL/3BNc6EWlwvbaq1DOtjsq0I3G0hLWVtM/YbPD2uCA04SERCHx+6XbRFCv6AHUQTFBeXCKqjJ0GZQ/wjbApuYhCVXUKb9ongHEzP8uxwPBAtrucflslsNMt/YzUFhjEDQzSq7ZltYUPFthBMs86El8L+Bcp/LZEpolWutHDCacm8P1gn/mrYfJjeX+OHQPcoKlaZDBZjoxS2wHPSfUSJdLUF/hot9mZMAPVJXRai3AoPpE0Y8tU9wT0zR++kKOESrGNalZDZe6yhwB5qbqZorbAYP6hxX3HKKhjg4gj0Shi7FW51jfUmceV9RpypLxOl0Lepo7ZCnJbIOPTKapFn4/DrQxUreMZRLWipc0UpX0CXeneFdLvjN6a/uyPF8kuoCC/FwLoeXbzNCe/X45rAL6VCosJ6gM5ambKMLT3S9Oj+Uk/D4PuR8loeahI149A6keXdL06SPkA4Mq7j2Ve9Zn8kP4JbF6Qxi4FK6J4d4uYSBUN8V6xINWqG+rXplYok66cpHYOmqYimd7MPiFc8pFlekyyixyavYb2bPzfnwvckUt+0iZEt5e9XsRcXQ34ojruR/BtXX5om2h7L3yTScnOcQ9Az/8qZrRaebT+9doa0bmq
X-OriginatorOrg: qti.qualcomm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR02MB6994.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d333dce9-acf8-4b5f-6c17-08dc3495551d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Feb 2024 17:31:56.1966
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 98e9ba89-e1a1-4e38-9007-8bdabc25de1d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ipHjzMYAsrfy+x4mC1i1YepU+QqQeUzmQq1CJdmR6gRIGoMSim2GXyPYG/uEHImevmgt+9Uax9EMCVY5UW/OI2Zl39iYsHDOgXFrObrU/F8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR02MB7599
X-Proofpoint-ORIG-GUID: bJTAJU-Jieez5r71wb4WEOSXtiC0nYUA
X-Proofpoint-GUID: bJTAJU-Jieez5r71wb4WEOSXtiC0nYUA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-23_03,2024-02-23_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 impostorscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 clxscore=1011 suspectscore=0 malwarescore=0 mlxlogscore=542 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402230128

--_004_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_
Content-Type: multipart/alternative;
	boundary="_000_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_"

--_000_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Added jjohnson@kernel.org<mailto:jjohnson@kernel.org> UID

--_000_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"ProgId" content=3D"Word.Document">
<meta name=3D"Generator" content=3D"Microsoft Word 15">
<meta name=3D"Originator" content=3D"Microsoft Word 15">
<link rel=3D"File-List" href=3D"cid:filelist.xml@01DA663B.2396F410"><!--[if=
 gte mso 9]><xml>
<o:OfficeDocumentSettings>
<o:AllowPNG/>
<o:DoNotRelyOnCSS/>
</o:OfficeDocumentSettings>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:WordDocument>
<w:SpellingState>Clean</w:SpellingState>
<w:TrackMoves/>
<w:TrackFormatting/>
<w:EnvelopeVis/>
<w:PunctuationKerning/>
<w:ValidateAgainstSchemas/>
<w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>
<w:IgnoreMixedContent>false</w:IgnoreMixedContent>
<w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>
<w:DoNotPromoteQF/>
<w:LidThemeOther>EN-US</w:LidThemeOther>
<w:LidThemeAsian>X-NONE</w:LidThemeAsian>
<w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>
<w:Compatibility>
<w:BreakWrappedTables/>
<w:SnapToGridInCell/>
<w:WrapTextWithPunct/>
<w:UseAsianBreakRules/>
<w:DontGrowAutofit/>
<w:SplitPgBreakAndParaMark/>
<w:EnableOpenTypeKerning/>
<w:DontFlipMirrorIndents/>
<w:OverrideTableStyleHps/>
</w:Compatibility>
<m:mathPr>
<m:mathFont m:val=3D"Cambria Math"/>
<m:brkBin m:val=3D"before"/>
<m:brkBinSub m:val=3D"&#45;-"/>
<m:smallFrac m:val=3D"off"/>
<m:dispDef/>
<m:lMargin m:val=3D"0"/>
<m:rMargin m:val=3D"0"/>
<m:defJc m:val=3D"centerGroup"/>
<m:wrapIndent m:val=3D"1440"/>
<m:intLim m:val=3D"subSup"/>
<m:naryLim m:val=3D"undOvr"/>
</m:mathPr></w:WordDocument>
</xml><![endif]--><!--[if gte mso 9]><xml>
<w:LatentStyles DefLockedState=3D"false" DefUnhideWhenUsed=3D"false" DefSem=
iHidden=3D"false" DefQFormat=3D"false" DefPriority=3D"99" LatentStyleCount=
=3D"376">
<w:LsdException Locked=3D"false" Priority=3D"0" QFormat=3D"true" Name=3D"No=
rmal"/>
<w:LsdException Locked=3D"false" Priority=3D"9" QFormat=3D"true" Name=3D"he=
ading 1"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 2"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 3"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 4"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 5"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 6"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 7"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 8"/>
<w:LsdException Locked=3D"false" Priority=3D"9" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" QFormat=3D"true" Name=3D"heading 9"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index 9"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 1"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 2"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 3"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 4"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 5"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 6"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 7"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 8"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"toc 9"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Normal Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"footnote text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"annotation text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"header"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"footer"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"index heading"/>
<w:LsdException Locked=3D"false" Priority=3D"35" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" QFormat=3D"true" Name=3D"caption"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"table of figures"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"envelope address"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"envelope return"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"footnote reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"annotation reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"line number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"page number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"endnote reference"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"endnote text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"table of authorities"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"macro"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"toa heading"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Bullet 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Number 5"/>
<w:LsdException Locked=3D"false" Priority=3D"10" QFormat=3D"true" Name=3D"T=
itle"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Closing"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Signature"/>
<w:LsdException Locked=3D"false" Priority=3D"1" SemiHidden=3D"true" UnhideW=
henUsed=3D"true" Name=3D"Default Paragraph Font"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"List Continue 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Message Header"/>
<w:LsdException Locked=3D"false" Priority=3D"11" QFormat=3D"true" Name=3D"S=
ubtitle"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Salutation"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Date"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text First Indent"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text First Indent 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Note Heading"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text Indent 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Body Text Indent 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Block Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Hyperlink"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"FollowedHyperlink"/>
<w:LsdException Locked=3D"false" Priority=3D"22" QFormat=3D"true" Name=3D"S=
trong"/>
<w:LsdException Locked=3D"false" Priority=3D"20" QFormat=3D"true" Name=3D"E=
mphasis"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Document Map"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Plain Text"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"E-mail Signature"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Top of Form"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Bottom of Form"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Normal (Web)"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Acronym"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Address"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Cite"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Code"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Definition"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Keyboard"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Preformatted"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Sample"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Typewriter"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"HTML Variable"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Normal Table"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"annotation subject"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"No List"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Outline List 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Outline List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Outline List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Simple 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Simple 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Simple 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Classic 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Colorful 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Colorful 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Colorful 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Columns 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Grid 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 4"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 5"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 7"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table List 8"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table 3D effects 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table 3D effects 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table 3D effects 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Contemporary"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Elegant"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Professional"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Subtle 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Subtle 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Web 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Web 2"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Web 3"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Balloon Text"/>
<w:LsdException Locked=3D"false" Priority=3D"39" Name=3D"Table Grid"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Table Theme"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Placeholder Te=
xt"/>
<w:LsdException Locked=3D"false" Priority=3D"1" QFormat=3D"true" Name=3D"No=
 Spacing"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1"/=
>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2"/=
>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading"/=
>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
1"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" Name=3D"Revision"/>
<w:LsdException Locked=3D"false" Priority=3D"34" QFormat=3D"true" Name=3D"L=
ist Paragraph"/>
<w:LsdException Locked=3D"false" Priority=3D"29" QFormat=3D"true" Name=3D"Q=
uote"/>
<w:LsdException Locked=3D"false" Priority=3D"30" QFormat=3D"true" Name=3D"I=
ntense Quote"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 1=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 1"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
2"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 2=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 2"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
3"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
3"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 3=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 3"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
4"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
4"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 4=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 4"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
5"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
5"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 5=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 5"/>
<w:LsdException Locked=3D"false" Priority=3D"60" Name=3D"Light Shading Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"61" Name=3D"Light List Accent =
6"/>
<w:LsdException Locked=3D"false" Priority=3D"62" Name=3D"Light Grid Accent =
6"/>
<w:LsdException Locked=3D"false" Priority=3D"63" Name=3D"Medium Shading 1 A=
ccent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"64" Name=3D"Medium Shading 2 A=
ccent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"65" Name=3D"Medium List 1 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"66" Name=3D"Medium List 2 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"67" Name=3D"Medium Grid 1 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"68" Name=3D"Medium Grid 2 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"69" Name=3D"Medium Grid 3 Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"70" Name=3D"Dark List Accent 6=
"/>
<w:LsdException Locked=3D"false" Priority=3D"71" Name=3D"Colorful Shading A=
ccent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"72" Name=3D"Colorful List Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"73" Name=3D"Colorful Grid Acce=
nt 6"/>
<w:LsdException Locked=3D"false" Priority=3D"19" QFormat=3D"true" Name=3D"S=
ubtle Emphasis"/>
<w:LsdException Locked=3D"false" Priority=3D"21" QFormat=3D"true" Name=3D"I=
ntense Emphasis"/>
<w:LsdException Locked=3D"false" Priority=3D"31" QFormat=3D"true" Name=3D"S=
ubtle Reference"/>
<w:LsdException Locked=3D"false" Priority=3D"32" QFormat=3D"true" Name=3D"I=
ntense Reference"/>
<w:LsdException Locked=3D"false" Priority=3D"33" QFormat=3D"true" Name=3D"B=
ook Title"/>
<w:LsdException Locked=3D"false" Priority=3D"37" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" Name=3D"Bibliography"/>
<w:LsdException Locked=3D"false" Priority=3D"39" SemiHidden=3D"true" Unhide=
WhenUsed=3D"true" QFormat=3D"true" Name=3D"TOC Heading"/>
<w:LsdException Locked=3D"false" Priority=3D"41" Name=3D"Plain Table 1"/>
<w:LsdException Locked=3D"false" Priority=3D"42" Name=3D"Plain Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"43" Name=3D"Plain Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"44" Name=3D"Plain Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"45" Name=3D"Plain Table 5"/>
<w:LsdException Locked=3D"false" Priority=3D"40" Name=3D"Grid Table Light"/=
>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark"=
/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"Grid Table 1 Light=
 Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"Grid Table 2 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"Grid Table 3 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"Grid Table 4 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"Grid Table 5 Dark =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"Grid Table 6 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"Grid Table 7 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark"=
/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 1"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 1"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 2"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 2"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 3"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 3"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 4"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 4"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 5"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 5"/>
<w:LsdException Locked=3D"false" Priority=3D"46" Name=3D"List Table 1 Light=
 Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"47" Name=3D"List Table 2 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"48" Name=3D"List Table 3 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"49" Name=3D"List Table 4 Accen=
t 6"/>
<w:LsdException Locked=3D"false" Priority=3D"50" Name=3D"List Table 5 Dark =
Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"51" Name=3D"List Table 6 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" Priority=3D"52" Name=3D"List Table 7 Color=
ful Accent 6"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Mention"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Smart Hyperlink"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Hashtag"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Unresolved Mention"/>
<w:LsdException Locked=3D"false" SemiHidden=3D"true" UnhideWhenUsed=3D"true=
" Name=3D"Smart Link"/>
</w:LatentStyles>
</xml><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:roman;
	mso-font-pitch:variable;
	mso-font-signature:-536869121 1107305727 33554432 0 415 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;
	mso-font-charset:0;
	mso-generic-font-family:swiss;
	mso-font-pitch:variable;
	mso-font-signature:-469750017 -1040178053 9 0 511 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{mso-style-unhide:no;
	mso-style-qformat:yes;
	mso-style-parent:"";
	margin:0in;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-fareast-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-ligatures:standardcontextual;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;
	text-underline:single;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-noshow:yes;
	mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;
	text-underline:single;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	mso-style-noshow:yes;
	mso-style-unhide:no;
	mso-ansi-font-size:11.0pt;
	mso-bidi-font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-fareast-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-default-props:yes;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-fareast-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;
	mso-header-margin:.5in;
	mso-footer-margin:.5in;
	mso-paper-source:0;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 10]><style>/* Style Definitions */
table.MsoNormalTable
	{mso-style-name:"Table Normal";
	mso-tstyle-rowband-size:0;
	mso-tstyle-colband-size:0;
	mso-style-noshow:yes;
	mso-style-priority:99;
	mso-style-parent:"";
	mso-padding-alt:0in 5.4pt 0in 5.4pt;
	mso-para-margin:0in;
	mso-pagination:widow-orphan;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ascii-font-family:Calibri;
	mso-hansi-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";
	mso-font-kerning:1.0pt;
	mso-ligatures:standardcontextual;}
</style><![endif]--><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"tab-interv=
al:.5in;word-wrap:break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><font size=3D"2" face=3D"Calibri"><span style=3D"fon=
t-size:11.0pt">Added
<a href=3D"mailto:jjohnson@kernel.org">jjohnson@kernel.org</a> UID<o:p></o:=
p></span></font></p>
</div>
</body>
</html>

--_000_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_--

--_004_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_
Content-Type: application/octet-stream; name="jjohnson.asc"
Content-Description: jjohnson.asc
Content-Disposition: attachment; filename="jjohnson.asc"; size=6860;
	creation-date="Fri, 23 Feb 2024 17:09:43 GMT";
	modification-date="Fri, 23 Feb 2024 17:31:55 GMT"
Content-Transfer-Encoding: base64

LS0tLS1CRUdJTiBQR1AgUFVCTElDIEtFWSBCTE9DSy0tLS0tCgptUUlOQkdXekREOEJFQUMvY3F0
OGtvT2NjT3dnS1AzVkVPOUVXSEd4VUF2KzNlZ2xwcWZYeDZvTW8rMHRXNDlDClZpSWovbkxRc25W
KzBUTk52SjV2dUF0UWovcUoyVHRLM0M4amdraHdaUExqaG9GVzAwTHRRaDhKcXkvdW5zcmoKTVNN
UEpJWmRSWWI3RFBhSWxnS2toV2dKRUxIRWFEWFBlLytQZzhNTGIwWGo4cUJHbjVUbjVxcVBpWTFS
T0RUZQoyWUhlYVdmU2x1Ykx0OXNKWG10cHkyRkFGNTFkWjFsMFFlK09FV3F6cGtJeGlIWitaLzFv
UW1FWGF1azVFMTEzCk1ZWGZYdzVoaE1wMWNSL0VUSmYvbXlJY0REcXNvdGMwWGs2TjFJOVFDRm5M
REwrYmkwcCtEaGloUmwvUG5UVVYKR0kzT0x3YXh2VmNQY215TWtlc2NteHp1NUt1N01SSno2dkFD
cEZwN1c5eVdxUm1kSWNGbFpkc1ZhTEh5bzN4bQpoZ0w4dHp4eFplMGlyTFpuZm5qZm5lbEd4RTdp
SHFBTnNCM01zbHlnZU5hbjNzL1pPWDFlZitTekpQd0hrZGQyCmtkUnFOR0RseCthd29tVG44c1ox
b21KRkh3M2I4eHJNRlZjQ3cxWmo1dHp4U21hdDVhc2U5cHl4b2tNQktBS00KdnY3YURhU1h2dmRt
cFVvckZhRUZHTThlNlhWM3pkVGxLWEJNdGVaMWNVWlhFQ1VibkU3NUtkSEQ4TXhwdzQxVgowR2I0
NzhGV3Fuc0FSaDVHaGdQdU5RajdqZGliT2oyaHlRZzFabVA0OG5FVmdsaW95VlhWMFkvUE5HNUtx
K01CCjBnYkl5WEYwbkdITHB1amRodHVtaFlGYnVZUWxENks5YzFtelBOTlBXY29rbTIyTmEyMGhp
U2VTc1FBUkFRQUIKdENoS1pXWm1JRXB2YUc1emIyNGdQSEYxYVdOZmFtcHZhRzV6YjI1QWNYVnBZ
Mmx1WXk1amIyMCtpUUpRQkJNQgpDQUE2QWhzQkJRc0pDQWNDQWlJQ0JoVUtDUWdMQWdNV0FnRUNI
Z2NDRjRBV0lRU1QvYyt6ZWJoVnBMRkpuelpsCld3SEthL0dLYXdVQ1piY2IrQUFLQ1JCbFd3SEth
L0dLYTBDM0VBQ3N1ZGZQWUxPZ1YxTnRQdlZLVG5mVWxvbm0KYWpGQUZjV0VGd1ZzNVRKSmlnNS9s
V1NERFg3VlhhY0YwU0N1TXczYlVKZmd2b2hvaW9mT1VXMXA1ZGttbWJaNgpCRjNtdUgzVmIvU1hM
NUxPLzRSYlR2bmE2WitaaVNlQkdnM1ZhUkxMZDR3NVY0S2xOV3RFN2V0VnBmaG42ZXp1CmxRSmli
T2kyQitpUnBkY3ludmEyQXVkclBmL0hXSHByK1NRNzBqVUpOK0M1cFRLM2dDallST3Z6Qml1anFY
NzIKbWRRdzEzOXg3cWZ0aUFWaDJkYlR0WFI1dmJhNE9lSjFCVCtzcFYxOS90ZlQvcTRWSk5wUWt6
dXdBSTJPTERkMgpiZkNWZHFTeVFiQ3FkeTRLUWpuN3BkQ0d3cloxN0VPeTlDdkhLQzlaaFRsZCtM
MElpbExjc2NjRFVkcWxZQUViCmFJdzQzQ016SWtRMlhWeWJhMTYwdDhKSjBLSElLNzk0S2FCc25G
MHR5K2l0Y0dvLzk1bG1UbUY0TUhPdlNDUHAKVE5YSnlxN0tvYm5nMTFjWEtCVzc2YTY3QWxYVXVk
ejl2TlFGWENGMzZ1TEw0a1o3M2xWR09TY0pybGM5VGFVUApaVDJqcThhRVcxc3Fqc3hkLzBHVkNN
Yk04R2dPbHRjL0RLRHc0L2JKM29BQ2swb0hSMkMzc1NNTkdTeDI1c0toCnZQUlRoWUpPSTBDMmRL
eTVsM3QwUS9RR3ZvWlhRb1ZrdzI1Vm1BUDVEL2kwNmtUSzlSVUE0RldmQ20xdHFacDMKeWRodE1i
d01oUWo2c1hsR1hxblczRUlEbzdGbERYWXQzSWtkTFdoNVZpak85Vy9xZUNTUlFPYXd3WWNUTjFo
OQp3V2dVWW1HOUNmQ0NoNVJoUklrQ1ZnUVRBUWdBUUJZaEJKUDl6N041dUZXa3NVbWZObVZiQWNw
cjhZcHJCUUpsCnN3dy9BaHNCQlFrRm81cUFCUXNKQ0FjQ0FpSUNCaFVLQ1FnTEFnTVdBZ0VDSGdj
Q0Y0QUFDZ2tRWlZzQnltdngKaW11aVlCQUFrWE9adWRRSzJIcjJSVjFrbVdjVE0wS3pIMi9MU0Vv
eUNsR2V4dnVhM2tGK0xYV0hTeCtkWmE0MgpCVmNxdUllYXZPakY2WHlrWEVQcnlLZWM0aFR6UmdP
dnJjL3hIbFZONFdsYS83LzN2Z1FWTXNrWHliZmF0Z0NpCkl3TmpJMDFseVJYTmcvTGNHWDRKNjdz
L0pjV0xIUlo2MmlvN2VSckdSclo0T1ZtUDNQSW84c0kyVzdRQWtJYVcKb2xEMGE1cU51aVgwdWNZ
WEhLaXRPc3ptVGw4MlpvSDM0VnJIZHpwQ1FtWko4c25HTXJpNk1mdHdFeExJeU9CLwpmTlNxZkF3
alU2NDlVZ3ZrMENSaEJXamZFNHlocXZyN1RwTHBrV0FvY3dNRllCSzVoWENTQVlubEJQS2FYYzJN
CmJ5WVFtUDNieWlKdUxIeEIvNVJLSThlV3RGeEdaQnQ2RHJ6UVRTK3NGclc4RGhEMisxYVdSSWlV
Mm5LQ2wzbG4KNnVYU2dIMGVJek4rMGp1dEJpYk1YeEEzUUdpb0JCMUtnZ3dhbW53Q2tkTWJaUy9E
ZDErblVvcmZlREN4a1NsUQpMOGI4WXViaVFEYjUrbm5WdUYzekdxSmo3UVBwRU9aUnQrNDRIM3lx
ZFBmQUlJSHc4dXVMRk1HeUdSdFRsbjNZCncxM1JPV2prNlJneWJkaDFYVW1TaDVEWk9aOFEwNjZU
RnBXUC9lOVhjZEZpb0pFY29oVGo2QWg4dG9Mc3hFcUoKUWQwelNlRDVxNXRmN2Q4L1VlSVVsc0ln
cnNxZXpibWlvcnU2SDZUOGhJeXd0OC9vbGQwSkUrU1U3NzZFSVRNOQpDaGFOS0ZxOE5HMnN3L1VQ
REdZUHNFL1c2eXpzb1VrZUJDMjVRK1lFTlJreEIxWVpLck9KQVRNRUVBRUtBQjBXCklRU0lHTnFj
WThWUFBnOUY4dWh1RnlSVkp1dHRtd1VDWmJqN1BRQUtDUkJ1RnlSVkp1dHRtMDJGQi85dVBhakMK
anErd2ZCQlptT2RKejVNSWVrT0xNTFozVStZYVBua0NBL21yT3NiRTlDMnZOK0tyN002WUxRSVRy
MzlsbUhONQplUHlGWE4zRW5HczZPYXBtTFcxUU1tcEs3OCtTVnh1MGpIYmViR0pHeW9zVERuNTZ4
VTJ5bHhDTWZobzJyVkV1CjRnUWpsakFzcmZ4VHVYZEZtK09sckRoUFZSWU1aMC9oWnloSmEvVlE2
elJwN3dTd3lUU1kzK21jZFVCUm5wUDEKWlNMdVFXckNrV3dndlJ6ek54ZlRQSzlRKzVyeHBZR0d3
WXBZbWNUamRLT1JlZ2d3NmZHOVplY1FwNXROSXdaUwpra1VwVEVxYlVqZFBQbmdRcHJ2K3piamJG
UXVFa1RDeFFiMkNTdk02UmRLUUYydExtWnlkVVlOYlJJR2ZKSVhLCjE3ellqTHZxQUxNeXJNTVFp
UUV6QkJBQkNnQWRGaUVFWTFBZytXZW5jV1I1NzBuZ0YxeEdUbFFiYlVjRkFtVzYKYi9BQUNna1FG
MXhHVGxRYmJVY25NZ2Y4Q1ltNVd2ajdITUdoT3IwcHRrNGdYUTI5SlFHVHZvQmxNRlBhUjRqTwpP
M3NHeS9JU3NUNEd2bGV3STVYeVdOUzZuL25yUm11VDlKS3FTM2xnblFtUG51MWVab0ZPODkyckVn
UStzSm5RClgvSmMxVXk1UzVralhUYmFYUDJBN2lkbU54Z2l3SDN4V2tKNUw0WUYya0ljRjNGK3pN
UUFhUFV4VERsdlRteTEKRVRpTHJIUWs5ckdKUUN0aThtc1JaalU1MFVnOTlYUDFJUXA4WGJSRy9U
R1ZUWDZuV0k4T1B0c3ZObHlRMlJoNwpXaXJoQkp0MENHOFFLZXhMWFlVcit5VlBSZGhMUjlpbTJF
b3hsY0gwME16S0NGaTJMQ1ZqcStuZmZMNXdmVTltClMxVWVsVUlVL3A2MGxmZEw5amV5Rml4dzQ0
Z0ZtZ0tEQk9GSTU2bmN4cUNlWGJRaVNtVm1aaUJLYjJodWMyOXUKSUR4cWFtOW9ibk52YmtCclpY
SnVaV3d1YjNKblBva0NVQVFUQVFnQU9oWWhCSlA5ejdONXVGV2tzVW1mTm1WYgpBY3ByOFlwckJR
SmwyTTlPQWhzQkJRc0pDQWNDQWlJQ0JoVUtDUWdMQWdNV0FnRUNIZ2NDRjRBQUNna1FaVnNCCnlt
dnhpbXZLWXhBQXJGZWhGRFJXT2F2VDJtb3Njdm9CRy90b0JUK2ZqVExIbWNUa2h6Ukc4NjZ6aENn
TkhTZVQKam8zSWloNlp4Z1Q0Mk00VDRNNTg1ZXlSM0grY2ZBZk9ZR0xvTDh1YzVqdkhRWUVWVWY4
QTJDRk45N0hMQ0NENgo0T3ZFUXd1ekFXak1aN2RLTUJ2U21seEtxaWwyOWlqT1R3Wk5OTHNiOEhS
Y2szUDJtaHd2dE1BdlpHdDJKUWozClBnVndLZDkxZjU2SHdGVjgxZVhqdVo3ZkNBallIKy9xZ3BZ
V2d4TTVoWitFZEVGSlZ2Q2VsdktKamlSckx2RXgKVVc2cmpjZ2dpY0loTnRKeWxFaFNvMmg2UDdU
V0ZCWFZER1k0Vmtmd0ZRazdxbWtETTN6N1RuOWlseTJnbFhvRwpGdDNsVFI1NWJneTN4Qi9hY0hV
S3VqbVJHbzlISUFhUGl3eXJyZjJXMi9ibXBpUzhiMXlFL2VrbCtya1ZFYVp3CnFCOFY4VzRmcUFQ
aHlnQUVTbWY1U2JGYUxqTmFKSWNWNGFVZGx4Q0psVFNvMFk3QnhKdDFoRE1XbEQyY0dvbE0KejIv
bkhRNjcxeXh3dVBnVHkyL29hYzRlVk5YUzR0Y2RoMDBkc2FNaG83UzNhZW1VMytXMFRsVWpWdERP
ODRaQgozTWJRemNCUHNpcEJOWXQ0ZlYxQWZkSFJXYUwvc0xTeXZGb3lRdE5rcXFzT1BwdHVoTUdG
cFVDZFNkRXhBMEN1CjlPR0V6d2lJcGpxUnQ2Q1N3ZU1ja3VEU3VibmdLSStkcnFOZ1Y1QUh0M05U
V3BsVkhGMmczaVdDaXM3WWFLMWcKOU9uRWJiNUcyUitrNkxNbHZFN1BZYkVlMWVzRTNYa0pOUFg5
SiszVnBGekVUUlRISzZUM0tVKzRPQVJsc3c2TApFZ29yQmdFRUFaZFZBUVVCQVFkQWVBdmEzanB0
WEZyOG1DSG0rcktndkUzZkJ1V1kydnN5aUpqTWgyYURHVE1ECkFRZ0hpUUkyQkJnQkNBQWdGaUVF
ay8zUHMzbTRWYVN4U1o4MlpWc0J5bXZ4aW1zRkFtV3pEb3NDR3d3QUNna1EKWlZzQnltdnhpbXRl
cXcvL2RRTDVUV2t6WXdIeUw3dSt0Z3llbjdjUmpKOXd2ckUrR25jUWpRL2hienF6K0VXSQpXWGVw
MGVjRWZQOGhLY29JaG1OejBTTXpPUEVMejNyUy9BSThGOTIybStXcHRyQ0pzYU1PSGhwYnRHUzE3
WXg3Cm1LNmR4ZlpYYnhaZXBvNVRsd05udUFHV2hEU0FQUXdSUXd6RzdwcDVaOXZ2UGNzWTd0bW41
QS83NmJKUmQ2TnIKbm1udXFxR2x6ZXJ4TXZUaWp1dzZTcWFVMGIyWUFtQjlGY0o1OGNPSE5rT0xT
Q0o1aVV1N1FsQjA1ZFJXUEFEWgp4SkNOM1lHS0l5cFIwdVk1U1crVUoyc1NidW5QNlF6NWZZVlJE
VGZiOEd4cGlXV25rQlhBVGdkd3JLQjJmWTN6CkozblNQWU94dmhESGN2SVc1VjFzbmlJbEp5SUh1
U3Q0SmJaQ21lNWZTU1E1OEZnSkk4RDROMFFMb05hYkJWM0kKcWVjOWcyc0tDMDBOZ0VwYldTSGh2
QVBhejlxNUhZcDYwQWdyN08rZ0FSYTc5am8zSE5BblVVTktoRituTW41bwpBdExnVnlUME5HaStV
OTJXcWZxbG9LdFFlMjRiQlVNRS95Z1RMSk9WU0RDS3V6all0UG0xSVlWUVVaZGZqeWRKClFEZXc0
RGhPamJrV294ZEZDMWJQN0dRYm1sYUZkemdIcnZuSEoydXNqM0JzY0JzNDBRWVp0RHhnMVRGSk1u
WmoKWVdaNW0yb1JWK3AvTlR4Nm5mWWNKMEpNVzBLYjcxTUl0a2VoNE0vN1daYzVzNWJTK3lBTjZW
MHpBak9LZkc1aQo2Y0JTb3dmWTEreVJ0d0pldkQwcHJyNFpueHFlemhDNWo0bUhaUjdXSFQxNGgv
WXlyWnFNN2ZoWGlpKzRNd1JsCnN3NmlGZ2tyQmdFRUFkcEhEd0VCQjBCa0E2YzBKVDcxbkRlOW1y
d2V1TEdmcENYRUFlaXRHZDYrODJhVjdsVHgKNVlrQ3JRUVlBUWdBSUJZaEJKUDl6N041dUZXa3NV
bWZObVZiQWNwcjhZcHJCUUpsc3c2aUFoc0NBSUVKRUdWYgpBY3ByOFlwcmRpQUVHUllLQUIwV0lR
US9tdFNIelBVaTE2SWZERWtzRmJ1Z2lZekxld1VDWmJNT29nQUtDUkFzCkZidWdpWXpMZXhneEFQ
MFlmQ0ZWZFIxb09GckZGTFc3U1NBenlaa1BmTGoyZktKNExEd2xDdWRINmdEL2V3MW4KaEYrUkgy
LzVTV1Z1M1VTVkt4V3pqN3QxeURxZkZLdzk1QmxWQXc1dTlBLytQTWJVSEVNMlMrUFloM0hBREx6
dAoxd2pwaG1VVDl0L1J3SXpWWEQvb2RONlNwSS9GSW12L2MwZUxsSy83R2Z3R1hFUllJQXI4amhS
SjZtanU0TCtYCm5pdmw0V2M5Zk5sVGVSeDZFVGlrY3Y1Q2x6ajVCRHZMY2c2S09zWWt6MXBldGtr
ZG9KVkZGTDZtSTYrZ1JZb1YKandESnIwYTJhRDR5OFlsYWRwall1d0JvUitTVmhiL05zQ0JjZjNQ
R2hsbTk3MG0zWktjVVNxamtObU4wVHhHZgp4dXBqY3JPMkxlT2MrM0VmRlJjc1Y3czNDMndjZlN1
ZDFHYm8zZmF4ZEF6WHozbkxFcm9jOFJ6NklOWFFoVnZlCjV3Vjd5Ymlia1c4Vzl6TzZnVEJmNDYy
aHVyc25SNFljRC9nZ3RUZldTSkphUjRmL0g4cGdDNjB3SkV3WGV3akcKeFpWSFFSRG50dHdTMXVw
M1Q3cFRLajl4T2FoaVpPU1pPTlR4TnlaRUhQS2txOUtlK2syUzVkQmVMZlZZR2Eydwp0YlpjZ0Mz
VmMxZG5FZXNPT1Y5ZXlOUEdOMGZFZ1RDS3ZnK3NnK3NaRTlHTnVoZzBPcHNHK3RtZHN5ZHA0NzBG
Cllmd0FCTzdTZWVJWGlKSUl2OXFyeWkzbDRqZ1JJOENCVWFkME1SYXNJNVd6SjBjK1I3TFMzNngv
Z05ML3J3d1gKSzVkalNvM3VENWQ3SDJXRWJLdXhaL0FKUHErK3U3VHc3Q0ljLzlsTmN4YVQ0YlN0
YUc4MXl2czR6UzZaUjFrSQowMm9jR0NMN0piT1UyTkZCSSs2WFZsZ2VIbEdTSVl4Z0o4SUlOalU0
WW95WHZtZXQvNjFVTlhSN055N3U5eWh1CmRwUXZRM1lBcmV2ZVBLRUE0ckJ2bGhtNE13UmxzdzY3
RmdrckJnRUVBZHBIRHdFQkIwQkc3R1JNY2g1MjZOOS8KTnltaUw4VHhOYS8wNlQ0K2pTeVNrZlBM
TytiR1VJa0NOZ1FZQVFnQUlCWWhCSlA5ejdONXVGV2tzVW1mTm1WYgpBY3ByOFlwckJRSmxzdzY3
QWhzZ0FBb0pFR1ZiQWNwcjhZcHJuVzBRQUpRZkdLTUtZTjZlZHVHOERMMkNiOUoxClVKNFhBczJV
eHVmVkJwM3hYWkxlNEVpU3RaK0RBZ241MGRSSnppUC9kTGJIWUFIMWQ5Y2xoQWdlc3Q3NWhOR2oK
OWZ1Mm1jS0E0SDNwZ3BZdWswdUd2ZVdJSkNZRTQ3R0FSQUtENjd5bzR6T0NNTFlEYVMwbUFNS1lJ
QjB6OFF0TAptbk53Q0pITXpLY0xRTHR2OGtZRy85WVZnVXBvaXRKTWE3MFBNWjA3bk9Gc1JxRWEy
WmVvYmFyRURPS3BkcThECmZkdktDRGxSZ2VtNjlDZUpueU9ndVdTanFLN3dMVGF5cC81ekhMZjZ2
bEZNT3hUTmpLZWptVmlLMDJXTFVNZmMKaUVvWkJVeVAwNTRNaVAyeFU1cWFTams2aVBYRG5vdVNo
SUFVSG5kQzMxVG5zeDRQdERTMWd5SGZhNDVCRWE5QgpDa1ZJVkkvMDNNUlFpbDVTdm5vSUVDUmVR
SnhGZzZYQ3FBR3pTL3RrL3YyVWtCbU5WSkhiY1dUeWZJUjZ3VHpICmd1VjhmTWFiOWF3d2RqS1ZI
MlJDLzl6aG8wOUM4ckhEamNZakpKeENBSWtTNnZOcTBqckpvOWVpNlpESEUzaS8KZkhCdm8yVlpX
REJrYjlkaWl0RVZpa2xqTjlGayt6aEhwYkhaUVA2T2ZTeFAvYnlVOWQ1dWppeW1MM1BCLzRMSgpt
bnN0VVhmWVpEbFhkeXlKNlExR09MKzVnRnRoSG1aM1RjQytXZ0J0TnZKQXlPQnlMcG9MZkhnd1M2
ZjNwVnh5CnpDY212cjZvZDdvSlRXRVdPK0RLREV5WFVjWEJTNTUzTzg5OFZzY0J5UlB5ZHdDWm56
QUNrVXhFRFFScDNKdGcKUXZDVWFOMVgxaTZLWERDUlpnOXMKPW5ZdmoKLS0tLS1FTkQgUEdQIFBV
QkxJQyBLRVkgQkxPQ0stLS0tLQo=

--_004_BY5PR02MB6994E096EEC3E43B4BE903DDE9552BY5PR02MB6994namp_--
