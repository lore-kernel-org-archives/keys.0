Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E88B15ECD4
	for <keys@linux.kernel.org>; Tue, 25 Jun 2024 16:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719333855; cv=none; b=Cwt8/dxnxnt2sesWDO6Z8rPtYgK9vQM0HDT3FP1eIiIJvRLLsACl4K+QeFjgbk8bsAlk78nagsFig7Q6+XWtMv+/jJPI9ydITYZ5hlklrRDR8VPDf7pY6i/mgHsXgZjcitmOJeQpwCIrQWSr9Om+XUFTn7IkRtvA4AbiLTL/OsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719333855; c=relaxed/simple;
	bh=1FaAm6wHRvkUO0jVgXyY1Jaga4Xi0Lt8mMS2stRwwC8=;
	h=Date:From:To:CC:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To:References; b=e7uT0PLRP6dxrzqxHOxRVLp0nrv8WL9psjPslG8sVElK8bJ3q11/PDxThCxL3XWmlhzu89Qaky+qfuBITTDaWVOLpY74wF6vwi0KaGEooa0bTznHxttzupLeh+PHh/OozJg8dHlkcU8ns2vEc5dH/SnwLLB7plqbe/a4cLx+2Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=OUYSDS8J; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="OUYSDS8J"
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20240625164402euoutp028ce3d880552676b9309dac57dc6840b7~cTQUowIZv0207702077euoutp022
	for <keys@linux.kernel.org>; Tue, 25 Jun 2024 16:44:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20240625164402euoutp028ce3d880552676b9309dac57dc6840b7~cTQUowIZv0207702077euoutp022
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1719333842;
	bh=oaMRASKy6ugRdOE/5rm7/qFo3NNaYgRvrr7oj4EBdaA=;
	h=Date:From:To:CC:Subject:In-Reply-To:References:From;
	b=OUYSDS8JQjk6C2V4+vYlDEmSUxGG1rf44wl//LUA/qijYYQvSA1+pN4RsD+RM4Txk
	 RmLb3bndnjVJJJRZmkQjHJoUsiiBxF+riejsUJ5YZTAFkOVR+dqp9vG93M14LI2M+G
	 3XqiIXcjyAsBpmeN/Gu66D2qGdOST087a2OZcWtI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTP id
	20240625164402eucas1p2de08b30be7b63cb2e11ee24bbe86d1aa~cTQUjcDYj1949519495eucas1p2y;
	Tue, 25 Jun 2024 16:44:02 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
	eusmges2new.samsung.com (EUCPMTA) with SMTP id 86.60.09875.2D3FA766; Tue, 25
	Jun 2024 17:44:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20240625164401eucas1p1b8c72057fd6cf63deff4f79a26d49f1d~cTQUQ3Q8V2802328023eucas1p1F;
	Tue, 25 Jun 2024 16:44:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
	eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20240625164401eusmtrp270a8bf45fc8090d6e20aafc24ca674c2~cTQUQUPha1423514235eusmtrp2P;
	Tue, 25 Jun 2024 16:44:01 +0000 (GMT)
X-AuditID: cbfec7f4-131ff70000002693-2a-667af3d2835d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms2.samsung.com (EUCPMTA) with SMTP id 10.CA.09010.1D3FA766; Tue, 25
	Jun 2024 17:44:01 +0100 (BST)
Received: from CAMSVWEXC01.scsc.local (unknown [106.1.227.71]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20240625164401eusmtip27be39665f5b6e965952530b6a10a1460~cTQUEOhcr0991109911eusmtip2n;
	Tue, 25 Jun 2024 16:44:01 +0000 (GMT)
Received: from localhost (106.210.248.245) by CAMSVWEXC01.scsc.local
	(2002:6a01:e347::6a01:e347) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
	Tue, 25 Jun 2024 17:44:01 +0100
Date: Tue, 25 Jun 2024 18:43:56 +0200
From: Joel Granados <j.granados@samsung.com>
To: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
CC: Linux Kernel Keys <keys@linux.kernel.org>
Subject: Re: Revoking a subkey
Message-ID: <20240625164356.h656ilkhvc3w3d6e@joelS2.panther.com>
Precedence: bulk
X-Mailing-List: keys@linux.kernel.org
List-Id: <keys.linux.kernel.org>
List-Subscribe: <mailto:keys+subscribe@linux.kernel.org>
List-Unsubscribe: <mailto:keys+unsubscribe@linux.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240625-brawny-resolute-partridge-ad5976@lemur>
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
	CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrJIsWRmVeSWpSXmKPExsWy7djP87qXPlelGbw9w2nxdFcLu8XOz18Y
	HZg8jl3pYPPYP3cNewBTFJdNSmpOZllqkb5dAlfG+97FjAVbuSraVms1MDZxdDFyckgImEjs
	aupn7mLk4hASWMEocW/nJhYI5wujxM2XsxlBqoQEPjNKdG3kgumY+mQ5I0TRckaJbxseIBR9
	nxcIkdjKKPG0ZRcTSIJFQFXi4d+1zCA2m4COxPk3d8BsEQFLiX27PoDZzAK6EvNurAYbJCwg
	J9F46B6YzSvgIHH09hcWCFtQ4uTMJywQ9ToSC3Z/Yuti5ACypSWW/+MAMTkF7CTWLCmGuFNZ
	Yvr3n0wQdq3E2mNn2EFOkxBYyiHx9OgPqISLxLIth1ghbGGJV8e3sEPYMhL/d85ngmiYzCix
	/98HqO7VjBLLGr9CdVtLtFx5AtXhKNG28Co7yBUSAnwSN94KQtzJJzFp23RmiDCvREebEES1
	msTqe29YJjAqz0Ly2Swkn81C+GwBI/MqRvHU0uLc9NRio7zUcr3ixNzi0rx0veT83E2MwNRw
	+t/xLzsYl7/6qHeIkYmD8RCjBAezkghvaElVmhBvSmJlVWpRfnxRaU5q8SFGaQ4WJXFe1RT5
	VCGB9MSS1OzU1ILUIpgsEwenVANT1ZfN151NRHvqy3sOsK+8u8W5fKl+r2dwz6yC3/80Z5Vu
	2xqyLazEkfntQs8b7Pv4/+x9Jta2evGRlKC2ypPXGQx3Xtfxrjrnmd953vvQ8kUP+VgWmWV/
	WO8ufHiJuOuKjV+6LjT57r98fN//69zVBaJfFl+9rhDnu/9Xeu+8OZ1pkh/7S/5sYlN9MdPk
	89HpIQd3yinvjuM5NPfX5n9dHO9CI1YaFbJ+ZTZ6JJ3EbXPjwnqR1ntzudPTpkYzpTmcr2F6
	mOIsKW96OftX84zMjREeh1bNDtPiY430jf2ac8Jx5+QpP7Xdd5ywKrhrrND4+TLznqUC9Xk3
	K0KO7px/52Kv07uur0HPrRnkvCbmKrEUZyQaajEXFScCAIRk/R18AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42I5/e/4Pd2Ln6vSDB7uMbZ4uquF3WLn5y+M
	Dkwex650sHnsn7uGPYApSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ384m
	JTUnsyy1SN8uQS/jfe9ixoKtXBVtq7UaGJs4uhg5OSQETCSmPlnOCGILCSxllLgyhQsiLiOx
	8ctVVghbWOLPtS62LkYuoJqPjBLPP01khXC2MkqsaHnPBlLFIqAq8fDvWmYQm01AR+L8mztg
	toiApcS+XR/AbGYBXYl5N1aDbRMWkJNoPHQPzOYVcJA4evsLC8TQE4wSJy49YodICEqcnPmE
	BaJZR2LB7k9AyziAbGmJ5f84QExOATuJNUuKIQ5Vlpj+/ScThF0r8er+bsYJjMKzkAyahWTQ
	LIRBCxiZVzGKpJYW56bnFhvpFSfmFpfmpesl5+duYgRGyLZjP7fsYFz56qPeIUYmDsZDjBIc
	zEoivKElVWlCvCmJlVWpRfnxRaU5qcWHGE2BITGRWUo0OR8Yo3kl8YZmBqaGJmaWBqaWZsZK
	4ryeBR2JQgLpiSWp2ampBalFMH1MHJxSDUybAy8qvq1llJ/7K0Q6vrz7wOdfLyd0l6fL1S28
	xnJ7qRz3ouu3zn+0/HCgoP2MpXDYnmuf712v+TDpp+KhLQ39sb7NlRxGEqGX9LbohcxbV7op
	xujalLfNytnz/P7ae0s//RFdmFpQL9U3p2X6/e9f4wL8Pk58lj31kVqv7s61Nt1Cve0rY0UY
	8q91zqgV/rYwx6+ybZ+9qkQV05rKKxkPn6u7TRcSufmQ42dHdsWirfIVNX+WLGPvWNRcvr5z
	ade2vrL3DFMufIlrWtEWeriVJbfiUNrzeGdfz38/vz1qa3Dt0M7straVmSG7UvS66tHO3OCD
	QnJut0/MPH1wybn0ZndfmceT/nAcfd+9IFWJpTgj0VCLuag4EQCBcKXXGQMAAA==
X-CMS-MailID: 20240625164401eucas1p1b8c72057fd6cf63deff4f79a26d49f1d
X-Msg-Generator: CA
X-RootMTR: 20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c
References: <CGME20240624195935eucas1p2e50f4be03654cb8051b2dec45ce7a52c@eucas1p2.samsung.com>
	<20240624195918.dhbonudmhnayiggu@joelS2.panther.com>
	<20240625-brawny-resolute-partridge-ad5976@lemur>

On Tue, Jun 25, 2024 at 10:18:08AM -0400, Konstantin Ryabitsev wrote:
> On Mon, Jun 24, 2024 at 09:59:18PM GMT, Joel Granados wrote:
> > Hello
> > 
> > I'm looking to replace one of my subkeys with a new one. I have one that
> > is E and another that is A. My third one is SEA and I want to just
> > have it as a signature key to avoid the annoying situation where there
> > is no consistency in the use of my encryption keys. Unfortunately I have
> > not found documentation or precedent on how to do this for the kernel
> > 
> > Does anyone see an issue with me just:
> > 1. Revoking my SEA subkey
> > 2. Creating a new S subkey
> 
> You can also just use gnupg's "change-usage" to drop E and A capabilities on
> that subkey. This would be slightly better because this won't require everyone
> relying on your signatures to update their keyring. See the manpage for gpg.
> 
This is way better than the revocation. I'll give this a try.

> > 3. Updating my key through this list
> 
> There are no technical reasons why this wouldn't work, but there will still be
> a long tail end of people using your SEA key for encryption because their
> keyring just never gets updated.
Indeed. Its good that I don't receive much of those :)

Thx for the help!
Very much appreciated.

Best

-- 

Joel Granados
